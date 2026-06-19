#ifndef DPC_REGS_H
#define DPC_REGS_H

#include <io.h>
#include <stdint.h>

/* DPC register offsets */
#define DPC_STATUS_OFFSET    0u
#define DPC_CONTROL_OFFSET   1u
#define DPC_DATA_OFFSET      2u

/* DPC control bits */
#define DPC_CONTROL_DECOD_MSK   (1u << 0)
#define DPC_CONTROL_IRQEN_MSK   (1u << 1)

/* DPC status bits */
#define DPC_STATUS_DONE_MSK     (1u << 5)
#define DPC_STATUS_CORR_MSK     (1u << 6)
#define DPC_STATUS_ERROR_MSK    (1u << 7)

/* Register access macros */
#define IORD_DPC_STATUS(base) \
    IORD_8DIRECT((base), DPC_STATUS_OFFSET)

#define IORD_DPC_CONTROL(base) \
    IORD_8DIRECT((base), DPC_CONTROL_OFFSET)

#define IOWR_DPC_CONTROL(base, data) \
    IOWR_8DIRECT((base), DPC_CONTROL_OFFSET, (data))

#define IORD_DPC_DATA(base) \
    IORD_8DIRECT((base), DPC_DATA_OFFSET)

#define IOWR_DPC_DATA(base, data) \
    IOWR_8DIRECT((base), DPC_DATA_OFFSET, (data))

#endif