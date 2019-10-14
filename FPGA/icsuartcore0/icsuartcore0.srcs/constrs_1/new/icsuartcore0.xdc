#
# JE
#

set_property PACKAGE_PIN J15 [get_ports {RxD_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {RxD_0}]

set_property PACKAGE_PIN W16 [get_ports {TxD_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {TxD_0}]

set_property PACKAGE_PIN H15 [get_ports {OE_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {OE_0}]

#LEDs
set_property PACKAGE_PIN M14 [get_ports {leds_4bits_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_4bits_tri_o[0]}]

set_property PACKAGE_PIN M15 [get_ports {leds_4bits_tri_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_4bits_tri_o[1]}]

set_property PACKAGE_PIN G14 [get_ports {leds_4bits_tri_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_4bits_tri_o[2]}]

set_property PACKAGE_PIN D18 [get_ports {leds_4bits_tri_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_4bits_tri_o[3]}]

##Buttons
set_property PACKAGE_PIN R18 [get_ports {btns_4bits_tri_i[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btns_4bits_tri_i[0]}]

set_property PACKAGE_PIN P16 [get_ports {btns_4bits_tri_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btns_4bits_tri_i[1]}]

set_property PACKAGE_PIN V16 [get_ports {btns_4bits_tri_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btns_4bits_tri_i[2]}]

set_property PACKAGE_PIN Y16 [get_ports {btns_4bits_tri_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btns_4bits_tri_i[3]}]
