#include <stdio.h>
#include "dpcAPI.h"

char DPCInit(unsigned long BaseAddress)
{
    IOWRDPCCONTROL(BaseAddress, 0x00);
    if (IORDDPCCONTROL(BaseAddress) != 0x00) {
        printf("Error Function DPCInit Cannot initialize DPC control register.\n");
        return (char)-1;
    }
    return (char)0;
}

unsigned char DPCStatus(unsigned long BaseAddress)
{
    return IORDDPCSTATUS(BaseAddress);
}

char DPCIsDone(unsigned long BaseAddress)
{
    return (char)((IORDDPCSTATUS(BaseAddress) & DPCSTATUSDONEMSK) ? 1 : 0);
}

char DPCIsCorr(unsigned long BaseAddress)
{
    return (char)((IORDDPCSTATUS(BaseAddress) & DPCSTATUSCORRMSK) ? 1 : 0);
}

char DPCIsError(unsigned long BaseAddress)
{
    return (char)((IORDDPCSTATUS(BaseAddress) & DPCSTATUSERRORMSK) ? 1 : 0);
}

char DPCStart(unsigned long BaseAddress)
{
    unsigned char ControlValue;

    ControlValue = IORDDPCCONTROL(BaseAddress);
    ControlValue |= DPCCONTROLDECODMSK;
    IOWRDPCCONTROL(BaseAddress, ControlValue);

    if ((IORDDPCCONTROL(BaseAddress) & DPCCONTROLDECODMSK) != DPCCONTROLDECODMSK) {
        printf("Error Function DPCStart Cannot start decoding.\n");
        return (char)-1;
    }

    return (char)0;
}

void DPCIrqEnable(unsigned long BaseAddress)
{
    IOWRDPCCONTROL(BaseAddress, IORDDPCCONTROL(BaseAddress) | DPCCONTROLIRQENMSK);
}

void DPCIrqDisable(unsigned long BaseAddress)
{
    IOWRDPCCONTROL(BaseAddress, IORDDPCCONTROL(BaseAddress) & ~DPCCONTROLIRQENMSK);
}

void DPCWriteData(unsigned long BaseAddress, unsigned char Data)
{
    IOWRDPCDATA(BaseAddress, Data);
}

unsigned char DPCReadData(unsigned long BaseAddress)
{
    return IORDDPCDATA(BaseAddress);
}

char DPCWriteMatrix(unsigned long BaseAddress, const unsigned char *DataIn)
{
    int i;

    for (i = 0; i < 8; i++) {
        DPCWriteData(BaseAddress, DataIn[i]);
    }

    return (char)0;
}

char DPCReadOutput(unsigned long BaseAddress, unsigned char *DataOut)
{
    int i;

    if (DPCIsError(BaseAddress)) {
        printf("Error Function DPCReadOutput Output data invalid.\n");
        return (char)-1;
    }

    for (i = 0; i < 7; i++) {
        DataOut[i] = DPCReadData(BaseAddress);
    }

    return (char)0;
}

char DPCWaitDone(unsigned long BaseAddress, unsigned long Timeout)
{
    volatile unsigned long Count = 0;

    while ((DPCIsDone(BaseAddress) == 0) && (Count < Timeout)) {
        Count++;
    }

    if (Count >= Timeout) {
        printf("Error Function DPCWaitDone Timeout waiting for Done flag.\n");
        return (char)-1;
    }

    return (char)0;
}