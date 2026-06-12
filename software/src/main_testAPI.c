#include <stdio.h>
#include "system.h"
#include "alt_types.h"
#include "dpc_regs.h"
#include "dpcAPI.h"

#ifndef DPC_0_BASE
#warning "Replace DPC_0_BASE with the actual base macro from system.h"
#define DPC_0_BASE 0
#endif

#define DPC_BASE DPC_0_BASE
#define DPC_BLOCK_SIZE 8

static void print_block(const char *name, const alt_u8 *data, alt_u32 len)
{
    alt_u32 i;
    printf("%s\n", name);
    for (i = 0; i < len; i++) {
        printf("  [%lu] = 0x%02X (%3u)\n", (unsigned long)i, data[i], data[i]);
    }
}

static void print_status_bits(alt_u8 status)
{
    printf("Status = 0x%02X | DONE=%u CORR=%u ERROR=%u\n",
           status,
           (status & DPC_STATUS_DONE_MSK) ? 1 : 0,
           (status & DPC_STATUS_CORR_MSK) ? 1 : 0,
           (status & DPC_STATUS_ERROR_MSK) ? 1 : 0);
}

static alt_u8 wait_done_and_get_status(alt_u32 base)
{
    alt_u8 status;
    do {
        status = dpc_read_status(base);
    } while ((status & DPC_STATUS_DONE_MSK) == 0);
    return status;
}

int main(void)
{
    alt_u8 tx_block[DPC_BLOCK_SIZE] = {
        0x55, 0x33, 0x0F, 0xA5,
        0x5A, 0xC3, 0x7E, 0x81
    };

    alt_u8 rx_block[DPC_BLOCK_SIZE];
    alt_u8 status;
    alt_u32 i;

    printf("\n===== TEST API DPC =====\n");

    printf("\n[1] Test lecture registre control/status\n");
    status = dpc_read_status(DPC_BASE);
    print_status_bits(status);

    printf("\n[2] Test configuration interruption\n");
    dpc_set_irq_enable(DPC_BASE, 0);
    printf("IRQ disabled\n");
    dpc_set_irq_enable(DPC_BASE, 1);
    printf("IRQ enabled\n");
    dpc_set_irq_enable(DPC_BASE, 0);
    printf("IRQ disabled again\n");

    printf("\n[3] Ecriture d'un bloc vers DPCDataIn\n");
    print_block("Bloc emis :", tx_block, DPC_BLOCK_SIZE);
    dpc_write_block(DPC_BASE, tx_block, DPC_BLOCK_SIZE);
    printf("Write block done\n");

    printf("\n[4] Lancement du decodage\n");
    dpc_start_decode(DPC_BASE);
    printf("Decode started\n");

    printf("\n[5] Attente fin de traitement\n");
    status = wait_done_and_get_status(DPC_BASE);
    print_status_bits(status);

    if (status & DPC_STATUS_ERROR_MSK) {
        printf("Le decodeur signale une erreur non corrigeable.\n");
    } else if (status & DPC_STATUS_CORR_MSK) {
        printf("Le decodeur signale une correction effectuee.\n");
    } else {
        printf("Le decodeur signale aucune erreur connue.\n");
    }

    printf("\n[6] Lecture du bloc decode via DPCDataOut\n");
    dpc_read_block(DPC_BASE, rx_block, DPC_BLOCK_SIZE);
    print_block("Bloc recu :", rx_block, DPC_BLOCK_SIZE);

    printf("\n[7] Comparaison emission / reception\n");
    for (i = 0; i < DPC_BLOCK_SIZE; i++) {
        if (tx_block[i] == rx_block[i]) {
            printf("  [%lu] OK  0x%02X\n", (unsigned long)i, rx_block[i]);
        } else {
            printf("  [%lu] DIFF TX=0x%02X RX=0x%02X\n",
                   (unsigned long)i, tx_block[i], rx_block[i]);
        }
    }

    printf("\n===== FIN TEST API DPC =====\n");
    while (1) {
    }

    return 0;
}