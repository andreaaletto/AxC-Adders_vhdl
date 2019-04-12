/*
 * pea12_driver.c
 *
 *  Created on: 02 apr 2019
 *      Author: andrea
 */

#include "pea12_driver.h"

void setComponent(int i, int j, int16_t val){
	PEA12_AXI_mWriteReg(XPAR_PEA12_AXI_0_S00_AXI_BASEADDR, 4*(8*i+j), (u32)val);
}

int16_t getComponent(int i, int j){
	return (int16_t)(PEA12_AXI_mReadReg(XPAR_PEA12_AXI_0_S00_AXI_BASEADDR, 64*4 + 4*(8*i+j)));
}

