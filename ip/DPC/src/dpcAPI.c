#include "dpcAPI.h"
#include "dpc_regs.h"

uint8_t dpcReadStatusRaw(uint32_t base)
{
    return IORD_DPC_STATUS(base);
}

uint8_t dpcReadControl(uint32_t base)
{
    return IORD_DPC_CONTROL(base);
}

void dpcWriteControl(uint32_t base, uint8_t value)
{
    IOWR_DPC_CONTROL(base, value);
}

uint8_t dpcReadData(uint32_t base)
{
    return IORD_DPC_DATA(base);
}

void dpcWriteData(uint32_t base, uint8_t value)
{
    IOWR_DPC_DATA(base, value);
}

dpc_status_t dpcReadStatus(uint32_t base)
{
    dpc_status_t st;

    st.raw   = dpcReadStatusRaw(base);
    st.done  = (st.raw & DPC_STATUS_DONE_MSK)  ? 1u : 0u;
    st.corr  = (st.raw & DPC_STATUS_CORR_MSK)  ? 1u : 0u;
    st.error = (st.raw & DPC_STATUS_ERROR_MSK) ? 1u : 0u;

    return st;
}

void dpcClearControl(uint32_t base)
{
    dpcWriteControl(base, 0x00u);
}

void dpcEnableIrq(uint32_t base)
{
    uint8_t ctrl = dpcReadControl(base);
    ctrl |= DPC_CONTROL_IRQEN_MSK;
    dpcWriteControl(base, ctrl);
}

void dpcDisableIrq(uint32_t base)
{
    uint8_t ctrl = dpcReadControl(base);
    ctrl &= (uint8_t)(~DPC_CONTROL_IRQEN_MSK);
    dpcWriteControl(base, ctrl);
}

void dpcStartDecode(uint32_t base)
{
    uint8_t ctrl = dpcReadControl(base);
    ctrl |= DPC_CONTROL_DECOD_MSK;
    dpcWriteControl(base, ctrl);
}

void dpcWriteBlock(uint32_t base, const uint8_t *data, size_t len)
{
    size_t i;

    if ((data == 0) || (len == 0u)) {
        return;
    }

    for (i = 0; i < len; ++i) {
        dpcWriteData(base, data[i]);
    }
}

void dpcReadBlock(uint32_t base, uint8_t *data, size_t len)
{
    size_t i;

    if ((data == 0) || (len == 0u)) {
        return;
    }

    for (i = 0; i < len; ++i) {
        data[i] = dpcReadData(base);
    }
}

int dpcWaitDone(uint32_t base, uint32_t timeout_loops, dpc_status_t *final_status)
{
    uint32_t i;
    dpc_status_t st;

    for (i = 0; i < timeout_loops; ++i) {
        st = dpcReadStatus(base);

        if (st.done) {
            if (final_status != 0) {
                *final_status = st;
            }
            return 0;
        }
    }

    if (final_status != 0) {
        final_status->raw = 0u;
        final_status->done = 0u;
        final_status->corr = 0u;
        final_status->error = 0u;
    }

    return -1;
}

int dpcDecodeBlock(uint32_t base,
                   const uint8_t in[DPC_INPUT_BYTES],
                   uint8_t out[DPC_OUTPUT_BYTES],
                   dpc_status_t *final_status,
                   uint32_t timeout_loops)
{
    dpc_status_t st;

    if ((in == 0) || (out == 0)) {
        return -1;
    }

    dpcClearControl(base);
    dpcWriteBlock(base, in, DPC_INPUT_BYTES);
    dpcStartDecode(base);

    if (dpcWaitDone(base, timeout_loops, &st) != 0) {
        if (final_status != 0) {
            *final_status = st;
        }
        return -2;
    }

    if (final_status != 0) {
        *final_status = st;
    }

    if (st.error) {
        return -3;
    }

    dpcReadBlock(base, out, DPC_OUTPUT_BYTES);
    return 0;
}