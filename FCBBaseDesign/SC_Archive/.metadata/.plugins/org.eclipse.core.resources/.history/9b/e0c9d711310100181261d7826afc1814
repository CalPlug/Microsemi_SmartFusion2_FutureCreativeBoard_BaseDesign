#ifndef SRC_MCP3903_H_
#define SRC_MCP3903_H_

#include "drivers/CoreSPI/core_spi.h"

/*
 Extended from the Arduino Library for MCP3903 A/D Converter
 * MCP3903 Library
 * Kerry D. Wong
 * http://www.kerrywong.com, http://www.kerrywong.com/2014/05/10/mcp3903-library/, https://github.com/kerrydwong/MCP3903) * 5/2014

Modified for use for the Microsemi Future Creative Board by Yutian Ren and Michael Klopfer, Ph.D.
University of California, Irvine
2018
*/

//Define "byte"
typedef unsigned char byte; //define "byte" using char - char is defined as 1 byte
typedef __uint32_t uint32_t ; //Define uint32_t

// Function Routines
	void MCP3903Reset24();
	void MCP3903ResetOSR(byte osr);
	unsigned long MCP3903ReadRegister(byte reg);
	void MCP3903WriteRegister(byte reg, unsigned long data);
	unsigned long readControlRegister();
	unsigned long readStatusCommRegister();
	double MCP3903ReadADC(byte channel);
	void MCP3903SetGain(byte channel, byte gain);
	void MCP3903SetGainCB(byte channel, byte gain, byte boost);

#endif /*SRC_MCP3903_H_*/
