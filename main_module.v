`timescale 1ns / 1ps
module main_module(input CLK, input [2:0] SWITCH, output [2:0] MOTOR);
   
    reg [2:0] control =3'b000;
    // control[0] - IN3
    // control[1] - IN4
    // control[2] - speed : speed LOW - 0 and speed HIGH - 1  
   
    // period of the PWM signal expressed in clock cycles
    // multiply this value by the clock period to get
    // the value in nanoseconds
    integer periodLength=1000000;
   
    // pulse width of the PWM signal expressed in clock cycles
    // multiply this value by the clock period to get
    // the value in nanoseconds
    integer pulseLength1=200000;
    integer pulseLength2=900000;
    integer pulseLength=0;
   
    // this counter is used to create the PWM signal
    integer counter=0;
   
    // this is used to reset the counter
    always @(posedge CLK)
    begin
        if (counter<periodLength) counter<=counter+1;
        else counter<=0;
    end
   
    always @(SWITCH)
    begin
    casez(SWITCH)
    // no control
    3'b??0: begin
                control=3'b000;
            end
    // control, clockwise, low speed
    3'b001: control=3'b001;
                   
     // control, clockwise, high speed
    3'b101: control=3'b101;
                 
    // control, counterclockwise, low speed
    3'b011: control=3'b010;
   
    // control, counterclockwise, high speed
    3'b111: control=3'b110;
                 
    default: control=3'b000;
   
    endcase
    //adjust the speed
    if (control[2]==1'b0)
        pulseLength=pulseLength1;
    else
        pulseLength=pulseLength2;
    end
   
   
assign MOTOR[0] = control[0];
assign MOTOR[1] = control[1];  
assign MOTOR[2] =(pulseLength>counter) ? 1'b1:1'b0;

endmodule