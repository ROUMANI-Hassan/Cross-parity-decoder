#ifndef DPCAPI_H
#define DPCAPI_H

#include "dpc_regs.h"
#include "system.h"

/* DPC instance initialization macro */
#define DPCINSTANCEINIT(name) DPCInit(name##_BASE)

/* DPC initialization */
char DPCInit(unsigned long BaseAddress);

/* Status access */
unsigned char DPCStatus(unsigned long BaseAddress);
char DPCIsDone(unsigned long BaseAddress);
char DPCIsCorr(unsigned long BaseAddress);
char DPCIsError(unsigned long BaseAddress);

/* Control access */
char DPCStart(unsigned long BaseAddress);
void DPCIrqEnable(unsigned long BaseAddress);
void DPCIrqDisable(unsigned long BaseAddress);

/* Data access */
void DPCWriteData(unsigned long BaseAddress, unsigned char Data);
unsigned char DPCReadData(unsigned long BaseAddress);

/* Block transfers */
char DPCWriteMatrix(unsigned long BaseAddress, const unsigned char *DataIn);
char DPCReadOutput(unsigned long BaseAddress, unsigned char *DataOut);

/* Polling */
char DPCWaitDone(unsigned long BaseAddress, unsigned long Timeout);

#endif