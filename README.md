# Control-Motors-Using-FPGA-Verilog-and-Vivado
READ THE LICENSE! 

In this GitHub repository, we post the Verilog and Python files that are used to control DC motors by using FPGA, Verilog, and Vivado.  

The webpage tutorial explaining the experimental setup for controlling DC motors using FPGAs, Verilog, and Vivado is given here:  

https://aleksandarhaber.com/control-dc-motors-using-fpga-vivado-and-verilog/

The YouTube tutorial is given here:

https://www.youtube.com/watch?v=Krp4uEbOFq4  

Explanation of the posted files:

- main_module.v - Verilog file that implements the control algorithm.
- constraint.xdc - constraint file defining the connections between Verilog module ports and physical pins.
- PWMcalculation.py - Python file that calculates the desired PWM period and PWM pulse width

![Wiring Diagram](https://github.com/AleksandarHaber/Control-Motors-Using-FPGA-Verilog-and-Vivado/blob/main/reduced_size.jpg)

![Motor driver](https://github.com/AleksandarHaber/Control-Motors-Using-FPGA-Verilog-and-Vivado/blob/main/motor_driver.png)


