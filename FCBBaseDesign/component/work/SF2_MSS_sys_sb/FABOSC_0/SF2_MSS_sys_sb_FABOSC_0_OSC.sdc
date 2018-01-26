set_component SF2_MSS_sys_sb_FABOSC_0_OSC
# Microsemi Corp.
# Date: 2018-Jan-26 12:46:52
#

create_clock -ignore_errors -period 20 [ get_pins { I_RCOSC_25_50MHZ/CLKOUT } ]
