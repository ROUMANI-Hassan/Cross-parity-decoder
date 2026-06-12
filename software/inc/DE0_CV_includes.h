/*  Default header file for DE0_CV based project
    10-05-2017
*/

#ifndef DE0_CV_INCLUDES_H_
#define DE0_CV_INCLUDES_H_

// C std lib
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stddef.h>
#include <unistd.h>
// HAL
#include "io.h"
#include "alt_types.h"
#include "sys/alt_irq.h"
#include "sys/alt_alarm.h"
#include "system.h"
// PIO peripherals
#include "altera_avalon_pio_regs.h" 

// Boolean type
typedef int bool;
#define TRUE    1
#define FALSE   0

#endif /*DE0_CV_INCLUDES_H_*/