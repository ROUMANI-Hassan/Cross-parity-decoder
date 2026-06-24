#ifndef DPC_API_H
#define DPC_API_H

#include <stdint.h>
#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

#define DPC_INPUT_BYTES   8u
#define DPC_OUTPUT_BYTES  7u

typedef struct
{
    uint8_t raw;
    uint8_t done;
    uint8_t corr;
    uint8_t error;
} dpc_status_t;

/* Basic register-level API */
uint8_t dpcReadStatusRaw(uint32_t base);
uint8_t dpcReadControl(uint32_t base);
void    dpcWriteControl(uint32_t base, uint8_t value);

uint8_t dpcReadData(uint32_t base);
void    dpcWriteData(uint32_t base, uint8_t value);

/* Decoded status helper */
dpc_status_t dpcReadStatus(uint32_t base);

/* Control helpers */
void dpcClearControl(uint32_t base);
void dpcEnableIrq(uint32_t base);
void dpcDisableIrq(uint32_t base);
void dpcStartDecode(uint32_t base);

/* FIFO helpers */
void dpcWriteBlock(uint32_t base, const uint8_t *data, size_t len);
void dpcReadBlock(uint32_t base, uint8_t *data, size_t len);

/* Polling helper */
int dpcWaitDone(uint32_t base, uint32_t timeout_loops, dpc_status_t *final_status);

/* Full decode helper */
int dpcDecodeBlock(uint32_t base,
                   const uint8_t in[DPC_INPUT_BYTES],
                   uint8_t out[DPC_OUTPUT_BYTES],
                   dpc_status_t *final_status,
                   uint32_t timeout_loops);

#ifdef __cplusplus
}
#endif

#endif