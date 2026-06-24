#include <stdio.h>
#include "DE0CV_includes.h"
#include "dpcAPI.h"

static void print_bytes(const char *label, const unsigned char *data, int n)
{
    int i;
    printf("%s", label);
    for (i = 0; i < n; i++) {
        printf(" %02X", data[i]);
    }
    printf("\n");
}

static void run_case(const char *name, const unsigned char in[8], const unsigned char expected[7])
{
    unsigned char out[7];
    unsigned char status;
    int i;

    printf("\n=============================\n");
    printf("%s\n", name);
    printf("=============================\n");

    DPCWriteMatrix(USERDPC_BASE, in);
    DPCStart(USERDPC_BASE);
    DPCWaitDone(USERDPC_BASE, 100000);

    status = DPCStatus(USERDPC_BASE);

    print_bytes("Input  :", in, 8);
    printf("Status : raw=0x%02X  Done=%d  Corr=%d  Error=%d\n",
           status,
           DPCIsDone(USERDPC_BASE),
           DPCIsCorr(USERDPC_BASE),
           DPCIsError(USERDPC_BASE));

    if (DPCIsError(USERDPC_BASE)) {
        printf("Output : INVALID (uncorrectable error)\n");
        return;
    }

    DPCReadOutput(USERDPC_BASE, out);
    print_bytes("Output :", out, 7);
    print_bytes("Expect :", expected, 7);

    for (i = 0; i < 7; i++) {
        if (out[i] != expected[i]) {
            printf("Mismatch at byte %d\n", i);
        }
    }
}

int main(void)
{
    unsigned char expected[7] = {0x55, 0x33, 0x71, 0x8E, 0xCC, 0xAA, 0x17};

    unsigned char case1[8] = {0x55, 0x33, 0x71, 0x8E, 0xCC, 0xAA, 0x17, 0x68};
    unsigned char case2[8] = {0x55, 0x33, 0x79, 0x8E, 0xCC, 0xAA, 0x17, 0x68};
    unsigned char case3[8] = {0x55, 0x31, 0x71, 0x0E, 0xCC, 0xAA, 0x17, 0x68};

    printf("the program starts\n");

    if (DPCINSTANCEINIT(USERDPC) != 0) {
        printf("DPC initialization failed\n");
        return -1;
    }

    printf("DPC initialized\n");

    run_case("Case 1", case1, expected);
    run_case("Case 2", case2, expected);
    run_case("Case 3", case3, expected);

    printf("\nprogram ends\n");
    return 0;
}