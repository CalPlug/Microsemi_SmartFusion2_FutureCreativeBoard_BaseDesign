/*
 * MCP3903.h
 *
 *  Created on: Jan 24, 2018
 *      Author: REN
 */

#ifndef SRC_MCP3903_H_
#define SRC_MCP3903_H_

/*
 Extended from the Arduino Library for MCP3903 A/D Converter
 * MCP3903 Library
 * Kerry D. Wong
 * http://www.kerrywong.com, http://www.kerrywong.com/2014/05/10/mcp3903-library/, https://github.com/kerrydwong/MCP3903) * 5/2014

Modified for use for the Microsemi Future Creative Board by Yutian Ren and Michael Klopfer, Ph.D.
University of California, Irvine
2018
*/

#include "..\drivers\CoreSPI\core_spi.h"

//Define "byte"
typedef unsigned char byte; //define "byte" using char - char is defined as 1 byte
//typedef __uint32_t uint32_t ; //Define uint32_t

// Function Routines
	void MCP3903Reset24(spi_instance_t * this_spi);
	void MCP3903ResetOSR(byte osr, spi_instance_t * this_spi);
	unsigned long MCP3903ReadRegister(byte reg, spi_instance_t * this_spi);
	void MCP3903WriteRegister(byte reg, unsigned long data, spi_instance_t * this_spi);
	unsigned long readControlRegister(spi_instance_t * this_spi);
	unsigned long readStatusCommRegister(spi_instance_t * this_spi);
	double MCP3903ReadADC(byte channel, spi_instance_t * this_spi);
	void MCP3903SetGain(byte channel, byte gain, spi_instance_t * this_spi);
	void MCP3903SetGainCB(byte channel, byte gain, byte boost, spi_instance_t * this_spi);

#endif /* SRC_MCP3903_H_ */