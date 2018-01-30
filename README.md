# Microsemi_SmartFusion2_FutureCreativeBoard_BaseDesign

Demonstration application for the Future Electronics SF2 Creative board.

Project developed by Yutian Ren (UC Irvine / Calit2, Microsemi Innovation Laboratory)

Project Advisors: Dr. Michael Klopfer and Prof. G.P. Li

January 25, 2018 v. 1.0

The following design was constructed using Libero SoC 11.8 SP2 and SoftConsole 5.1.  It is implemented for a SmartFusion 2 FPGA.


Project copyright of the Regents of the University of California and released into the public domain.  Project elements copyright of denoted authors and used fairly per licensing requirements.


This project is an example template design project (base project) for the Future Creative Board with the Microsemi SmartFusion 2 FPGA.  This project includes the use of CoreGPIO, CorePWM, CoreSPI, CoreUARTapb, and CoreI2C to provide basic connectivity for a variety of applications.  This design enables the use of the Microchip MCP3903 Sigma-delta ADC that is on this board.  The design also breaks out SPI and I2C consistant with conventional Arduino headers on the board.  


Note: In the current design, the I2C, SPI are broken out to the Mikrobus header.  These pin locations can (and should for most applications) be moved as needed by modifying the constraints file to provide desired pin location assignments.  


The FE Creative board features and onboard sigma-delta ADC for analog measurement.  The function of this  ADC IC is implemented in this project.  This differential ADC allows -0.5 to +0.5V measurement but is tollerant to an input of +5V.  Communication is provided with a 32 bit frame.  The MISO line of the SPI bus for the ADC is OR'ed as an input and the other side of this is broken out to a header.  This allows shared use of the SPI line.  This line should be pulled low with a pull-down resistor in operation, or by using a jumper to ground if unused.  Note: if this line is allowed to arbritrarially drift high in tri-state condition, the SPI bus will not work properly.  A broken out pin on the Mikrobus INT pin is a presentation of the input MISO line presented to the SF2.  If the settings for a new SPI device vary substantially (clock phase, idle state, SS polarity, etc), a new instance of CoreSPI may be desired rather than reconfiguring and reinitializing the single instance with substantially varying settings for each device prior to communication.


