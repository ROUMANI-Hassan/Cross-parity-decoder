#include <stdio.h>
#include <stdint.h>
#include "system.h"
#include "dpcAPI.h"

#ifndef USERDPC_BASE
#error "USERDPC_BASE is not defined in system.h. Check the generated BSP macro name for UserDPC."
#endif

#define DPC_TIMEOUT 10000u

static void print_status(const char *label, dpc_status_t st)
{
    printf("%s 0x%02X\n", label, st.raw);
    printf("  Done flag : %u\n", st.done);
    printf("  Corr flag : %u\n", st.corr);
    printf("  Error flag: %u\n", st.error);
}

int main(void)
{
    uint32_t base = USERDPC_BASE;

    uint8_t matrix_no_error[DPC_INPUT_BYTES] =
    {
        0x55, 0xAA, 0x55, 0xAA, 0x55, 0xAA, 0x55, 0xAA
    };

    uint8_t data_out[DPC_OUTPUT_BYTES];
    dpc_status_t initial_status;
    dpc_status_t done_status;
    dpc_status_t status_after_reread;
    uint32_t i;
    int rc;

    printf("=== DPC Decoder Test ===\n");
    printf("Base address: 0x%08X\n\n", (unsigned int)base);

    /* 1. Read initial status */
    initial_status = dpcReadStatus(base);
    print_status("Initial Status:", initial_status);

    /* 2. Write known 8-byte matrix */
    printf("\nWriting 8 bytes of matrix data (no error case)...\n");
    for (i = 0; i < DPC_INPUT_BYTES; ++i) {
        dpcWriteData(base, matrix_no_error[i]);
        printf("  Wrote 0x%02X\n", matrix_no_error[i]);
    }

    /* 3. Start decode */
    printf("\nStarting decoding (set Decod bit)...\n");
    dpcStartDecode(base);

    /* 4. Wait for Done */
    printf("Waiting for Done flag...\n");
    rc = dpcWaitDone(base, DPC_TIMEOUT, &done_status);

    if (rc != 0) {
        printf("Timeout! Done not set.\n");
        printf("\n=== Test completed ===\n");
        return 0;
    }

    printf("Done detected.\n");

    /* 5. Show final status captured when Done was seen */
    print_status("Final Status:", done_status);

    /* 6. Read output bytes if no uncorrectable error */
    if (done_status.error == 1u) {
        printf("Uncorrectable error detected. No data will be read.\n");
    } else {
        printf("Reading output data (7 bytes):\n");
        for (i = 0; i < DPC_OUTPUT_BYTES; ++i) {
            data_out[i] = dpcReadData(base);
            printf("  Byte %u: 0x%02X\n", (unsigned int)i, data_out[i]);
        }
    }

    /* 7. Optional check: Done should be cleared by a new status read */
    printf("\nReading status again after completion...\n");
    status_after_reread = dpcReadStatus(base);
    print_status("Status after reread:", status_after_reread);

    printf("\n=== Test completed ===\n");

    while (1) {
    }

    return 0;
}