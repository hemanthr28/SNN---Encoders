`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2021 11:21:43 AM
// Design Name: 
// Module Name: Mux
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


module Mux(
    input select,
    input in_bit0,
    input in_bit1,
    output reg mux_out
    );
     
    always@(*)
    begin
        if (!select)
            mux_out = in_bit0;
        else 
            mux_out = in_bit1;      
    end
endmodule
