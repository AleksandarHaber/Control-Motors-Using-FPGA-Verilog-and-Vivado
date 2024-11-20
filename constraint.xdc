## clock
set_property PACKAGE_PIN E3 [get_ports {CLK}];
create_clock -name sysclk -period 10 -waveform {0 5} [get_ports {CLK}];
set_property IOSTANDARD LVCMOS33 [get_ports {CLK}];

## motor pins - Pmod
## IN3
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports {MOTOR[0]}];
## IN4
set_property -dict {PACKAGE_PIN H1 IOSTANDARD LVCMOS33} [get_ports {MOTOR[1]}];
## ENB
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports {MOTOR[2]}];

## switches for controlling the motor
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {SWITCH[0]}];
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports {SWITCH[1]}];
set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS33} [get_ports {SWITCH[2]}];
