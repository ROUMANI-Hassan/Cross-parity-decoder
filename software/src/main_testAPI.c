#include <stdio.h>
#include <stdint.h>
#include "system.h"
#include "dpcAPI.h"

static void print_bytes(const char *label, const uint8_t *buf, int n)
{
    int i;
    printf("%s", label);
    for (i = 0; i < n; i++) {
        printf(" %02X", buf[i]);
    }
    printf("\n");
}

static void run_case(const char *name, const uint8_t in[8], const uint8_t expected[7], int expect_corr, int expect_error)
{
    dpc_status_t st;
    uint8_t out[7];
    int i;

    printf("\n=============================\n");
    printf("%s\n", name);
    printf("=============================\n");

    print_bytes("Input  :", in, 8);

    for (i = 0; i < 8; i++) {
        dpcWriteData(USERDPC_BASE, in[i]);
    }

    dpcStartDecode(USERDPC_BASE);
    dpcWaitDone(USERDPC_BASE, 100000, &st);

    printf("Status : raw=0x%02X  Done=%u  Corr=%u  Error=%u\n",
           st.raw, st.done, st.corr, st.error);

    if (st.error) {
        printf("Output : INVALID (uncorrectable error)\n");
        return;
    }

    for (i = 0; i < 7; i++) {
        out[i] = dpcReadData(USERDPC_BASE);
    }

    print_bytes("Output :", out, 7);
    print_bytes("Expect :", expected, 7);

    for (i = 0; i < 7; i++) {
        if (out[i] != expected[i]) {
            printf("Mismatch at byte %d: got %02X expected %02X\n", i, out[i], expected[i]);
        }
    }
}

int main(void)
{
    const uint8_t exp[7] = {0x55, 0x33, 0x71, 0x8E, 0xCC, 0xAA, 0x17};

    const uint8_t case1[8] = {0x55, 0x33, 0x71, 0x8E, 0xCC, 0xAA, 0x17, 0x68};
    const uint8_t case2[8] = {0x55, 0x33, 0x79, 0x8E, 0xCC, 0xAA, 0x17, 0x68};
    const uint8_t case3[8] = {0x55, 0x31, 0x71, 0x0E, 0xCC, 0xAA, 0x17, 0x68};

    run_case("Case 1", case1, exp, 0, 0);
    run_case("Case 2", case2, exp, 1, 0);
    run_case("Case 3", case3, exp, 0, 1);

    while (1) { }
    return 0;
}