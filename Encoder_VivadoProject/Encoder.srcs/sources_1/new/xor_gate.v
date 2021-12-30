`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2021 11:53:10 AM
// Design Name: 
// Module Name: xor_gate
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


module xor_gate(
    input in0,
    input in1,
    output reg xor_out
    );
     
    always@(in0 or in1)
    begin
        if (in0 == in1)
            xor_out = 1'b0;
        else
            xor_out = 1'b1;
    end
endmodule
