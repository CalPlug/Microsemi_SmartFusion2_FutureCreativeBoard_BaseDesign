///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of California, Irvine
//
// File: NOTExample.v
// File history:
//
// Description: Example Inverting Gate, this is example verilog code imported into the project
//
//
// Targeted device: <Family::SmartFusion2> <Die::M2S025> <Package::256 VF>
// Author: Michael J. Klopfer
//
// Released into the public domain
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module NOTExample(devinput, devoutput);
input devinput;
output devoutput;

assign devoutput = !devinput;

endmodule
