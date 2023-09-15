## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Switches
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports A]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports B]
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports CI]

##LEDS
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports SUM]
set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports CO]

## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## SPI configuration mode options for QSPI boot, can be used for all designs
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]