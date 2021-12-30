`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2021 11:15:25 AM
// Design Name: 
// Module Name: Dff
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


module Dff(
    input clk,
    input rst,
    input D,
    output reg Q
    );
    always@ (posedge clk)
    begin
        if(rst)
            Q = 1'b0;
        else
            Q = D;
    end 
endmodule
