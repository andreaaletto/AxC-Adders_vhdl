/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "bas08_driver.h"

int16_t input[8][8] = { {127, 123, 125, 120, 126, 123, 127, 128},
						{128, 126, 128, 122, 125, 125, 122, 129},
						{128, 124, 128, 126, 127, 120, 128, 129},
						{124, 127, 128, 129, 121, 128, 129, 128},
						{126, 125, 128, 126, 126, 125, 127, 128},
						{125, 127, 126, 126, 128, 128, 128, 126},
						{127, 127, 126, 124, 120, 127, 128, 126},
						{123, 135, 120, 128, 121, 123, 126, 126} };

int main()
{
    init_platform();

    print("Hello World\n\r");

    int i, j;

    printf("Writing input...\n");
    for(i=0; i<8; i++){
    	for(j=0; j<8; j++){
    		setComponent(i,j,input[i][j]);
    	}
    }
    printf("Input written successfully\n");

    printf("Written input tile:\n\n\n");
        for(i=0; i<8; i++){
        		for(j=0; j<8; j++){
        			int16_t val = (int16_t)BAS08_AXI_mReadReg(XPAR_BAS08_AXI_0_S00_AXI_BASEADDR, 4*(8*i+j));
        			printf("%d, ", val);
        		}
        		printf("\n");
            }

    for(i=0; i<60; i++); //attesa attiva

    printf("Output tile:\n\n\n");
    for(i=0; i<8; i++){
    		for(j=0; j<8; j++){
    			int16_t val = getComponent(i,j);
    			printf("%d, ", val);
    		}
    		printf("\n");
        }



    cleanup_platform();
    return 0;
}
