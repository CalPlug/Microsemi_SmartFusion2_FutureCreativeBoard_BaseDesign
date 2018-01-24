/*
 * demo.c
 *
 *  Created on: Jan 23, 2018
 *      Author: REN
 */
#include "demo.h"

uint8_t getByte( spi_instance_t * this_spi, uint8_t out)
{
	uint32_t buffer;
	SPI_set_slave_select( this_spi, SPI_SLAVE_0) ;
	buffer=SPI_transfer_frame(this_spi,out);
	SPI_clear_slave_select( this_spi, SPI_SLAVE_0 );
	uint8_t byte=0;
	//byte &=buffer>>24;
	byte = (uint8_t)buffer;
	return byte;
}
