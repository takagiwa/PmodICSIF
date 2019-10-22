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

#include "xgpio.h"
#include "icsuart0b.h"

XGpio Gpio;

u32 encposword(int id, int pos)
{
	u32 ret = 0;
	ret |= 0x80; /* command */
	ret |= id & 0x1F; /* id */
	ret |= (pos & (0x7F << 7)) << (8-7); /* POS_H */
	ret |= (pos & (0x7F << 0)) << 16; /* POS_L */
	return ret;
}

int decposword(u32 readword, int *id)
{
	int ret = 0;
	if (readword & 0xE0) {
		*id = -1;
		return -1;
	}
	*id = readword & 0x1F;
	ret |= (readword & (0x7F << 16)) >> 16; /* POS_L */
	ret |= (readword & (0x7F <<  8)) >> (8-7); /* POS_H */
	return ret;
}

int main()
{
	int status;
	u32 swread;
	u32 uartread;
	u32 wdata;
	int rdata;
	int id;

    init_platform();

    print("Hello World\n\r");

    status = XGpio_Initialize(&Gpio, XPAR_GPIO_0_DEVICE_ID);
    if (status != XST_SUCCESS) {
    	return XST_FAILURE;
    }
    XGpio_SetDataDirection(&Gpio, 1, 1); /* in */
    XGpio_SetDataDirection(&Gpio, 2, 0); /* out */

    printf("XGpio.BaseAddress: 0x%08x\n", Gpio.BaseAddress);
    printf("XGpio.IsReady: %ld\n", Gpio.IsReady);
    printf("XGpio.InterruptPresent: %d\n", Gpio.InterruptPresent);
    printf("XGpio.IsDual: %d\n", Gpio.IsDual);

    int pos = 7500;
    /*
    ICSUART0B_mWriteReg(XPAR_ICSUART0B_0_S00_AXI_BASEADDR, 8, (0x81 << 0) |  (((pos & (0x1F << 5)) >> 5) << 8) |  (((pos & (0x1F << 0)) >> 0) << 16) );
    while(1)
    {
    	uartread = ICSUART0B_mReadReg(XPAR_ICSUART0B_0_S00_AXI_BASEADDR, 4);
    	if (uartread & 0x20) {
        	uartread = ICSUART0B_mReadReg(XPAR_ICSUART0B_0_S00_AXI_BASEADDR, 16);
    	}
    }
    */

    int switch_count = 0;
    while(1)
    {
    	swread = XGpio_DiscreteRead(&Gpio, 1);
    	if (0) printf("  switch: 0x%08lx\n", swread);
    	XGpio_DiscreteWrite(&Gpio, 2, swread);

    	uartread = ICSUART0B_mReadReg(XPAR_ICSUART0B_0_S00_AXI_BASEADDR, 1 << 2);
    	if (0) printf("  Status: 0x%08lx\n", uartread);
    	while ((uartread & 0x10) == 0) {
    		/* not empty */
        	uartread = ICSUART0B_mReadReg(XPAR_ICSUART0B_0_S00_AXI_BASEADDR, 3 << 2);
        	/* printf("  Read: 0x%08lx\n", uartread); */
        	rdata = decposword(uartread, &id);
        	printf("  read: pos = %5d, data = 0x%08lx\n", rdata, uartread);
        	uartread = ICSUART0B_mReadReg(XPAR_ICSUART0B_0_S00_AXI_BASEADDR, 1 << 2);
    	}

    	if ((swread & 0xF) == 0) {
    		switch_count = 0;
    	} else if (switch_count < 16) {
    		switch_count++;
    	}

    	if (switch_count == 14) {
    		if (swread & 0x1) {
    			pos += 32;
    			if (pos >= 11500) pos = 11500;
    			/*
    			if (0) printf("  pos: 0x%08x & 0x%08x\n", ((pos & (0x7F << 0)) >> 0), ((pos & (0x7F << 5)) >> 5));
    			wdata = (0x80 << 0) |  (((pos & (0x7F << 7)) >> 7) << 8) |  (((pos & (0x7F << 0)) >> 0) << 16);
    			printf(" write: 0x%08lx\n", wdata);
    			*/
    			wdata = encposword(0, pos);
    			printf(" write: pos = %5d, data = 0x%08lx\n", pos, wdata);
    			ICSUART0B_mWriteReg(XPAR_ICSUART0B_0_S00_AXI_BASEADDR, 8, wdata);
    		}

    		if (swread & 0x2) {
    			/* 5500 */
    			pos = 7500; /* 5500; */
    			/*
    			if (0) printf("  pos: 0x%08x & 0x%08x\n", ((pos & (0x7F << 0)) >> 0), ((pos & (0x7F << 5)) >> 5));
    			if (0) ICSUART0B_mWriteReg(XPAR_ICSUART0B_0_S00_AXI_BASEADDR, 8, (0x80 << 0) |  (0x2A << 8) |  (0x7C << 16) );
    			wdata = (0x80 << 0) |  (((pos & (0x7F << 7)) >> 7) << 8) |  (((pos & (0x7F << 0)) >> 0) << 16);
    			printf(" write: 0x%08lx\n", wdata);
    			*/
    			wdata = encposword(0, pos);
    			printf(" write: pos = %5d, data = 0x%08lx\n", pos, wdata);
    			ICSUART0B_mWriteReg(XPAR_ICSUART0B_0_S00_AXI_BASEADDR, 8, wdata);
    		}

    		if (swread & 0x4) {
    			/* 9500 */
    			pos = 0; /* 9500; */
    			/*
    			if (0) printf("  pos: 0x%08x & 0x%08x\n", ((pos & (0x7F << 0)) >> 0), ((pos & (0x7F << 5)) >> 5));
    			if (0) ICSUART0B_mWriteReg(XPAR_ICSUART0B_0_S00_AXI_BASEADDR, 8, (0x80 << 0) |  (0x4A << 8) |  (0x1C << 16) );
    			wdata = (0x80 << 0) |  (((pos & (0x7F << 7)) >> 7) << 8) |  (((pos & (0x7F << 0)) >> 0) << 16);
    			printf(" write: 0x%08lx\n", wdata);
    			*/
    			wdata = encposword(0, pos);
    			printf(" write: pos = %5d, data = 0x%08lx\n", pos, wdata);
    			ICSUART0B_mWriteReg(XPAR_ICSUART0B_0_S00_AXI_BASEADDR, 8, wdata);
    		}

    		if (swread & 0x8) {
    			pos -= 32;
    			if (pos <= 3500) pos = 3500;
    			/*
    			if (0) printf("  pos: 0x%08x & 0x%08x\n", ((pos & (0x7F << 0)) >> 0), ((pos & (0x7F << 5)) >> 5));
    			if (0) ICSUART0B_mWriteReg(XPAR_ICSUART0B_0_S00_AXI_BASEADDR, 8, (0x80 << 0) |  (((pos & (0x7F << 7)) >> 7) << 8) |  (((pos & (0x7F << 0)) >> 0) << 16) );
    			wdata = (0x80 << 0) |  (((pos & (0x7F << 7)) >> 7) << 8) |  (((pos & (0x7F << 0)) >> 0) << 16);
    			printf(" write: 0x%08lx\n", wdata);
    			*/
    			wdata = encposword(0, pos);
    			printf(" write: pos = %5d, data = 0x%08lx\n", pos, wdata);
    			ICSUART0B_mWriteReg(XPAR_ICSUART0B_0_S00_AXI_BASEADDR, 8, wdata);
    		}
    	}






    	for (int i = 0; i < 100000; i++) {

    	}
    }







    cleanup_platform();
    return 0;
}
