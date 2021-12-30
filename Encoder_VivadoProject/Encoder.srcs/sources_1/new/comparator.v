`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2021 10:36:09 AM
// Design Name: 
// Module Name: comparator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comparator(
    input[15:0] In_pixel,
    input[15:0] In_rand,
    output reg spike_out
    );
    always@(In_pixel or In_rand)
    begin
        if(In_pixel > In_rand)
            spike_out = 1'b1;
        else 
            spike_out = 1'b0;
    end
endmodule
