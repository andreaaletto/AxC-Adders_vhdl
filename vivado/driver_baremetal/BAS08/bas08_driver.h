/*
 * bc12_driver.h
 *
 *  Created on: 02 apr 2019
 *      Author: andrea
 */

#ifndef SRC_BAS08_DRIVER_H_
#define SRC_BAS08_DRIVER_H_

#include "xparameters.h"
#include "BAS08_axi.h"
#include "stdint.h"
#include "xil_io.h"

void setComponent(int i, int j, int16_t val);
int16_t getComponent(int i, int j);

#endif /* SRC_BAS08_DRIVER_H_ */
