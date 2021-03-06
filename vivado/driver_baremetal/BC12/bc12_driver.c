/*
 * bc12_driver.c
 *
 *  Created on: 02 apr 2019
 *      Author: andrea
 */

#include "bc12_driver.h"

void setComponent(int i, int j, int16_t val){
	BC12_AXI_mWriteReg(XPAR_BC12_AXI_0_S00_AXI_BASEADDR, 4*(8*i+j), (u32)val);
}

int16_t getComponent(int i, int j){
	return (int16_t)(BC12_AXI_mReadReg(XPAR_BC12_AXI_0_S00_AXI_BASEADDR, 64*4 + 4*(8*i+j)));
}

