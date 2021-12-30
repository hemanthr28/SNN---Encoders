`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2021 10:39:41 AM
// Design Name: 
// Module Name: Randnum_generator
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


module Randnum_generator(input clk, input rst, input load, input[15:0] S, output[15:0] rand_num    
    );
wire[15:0] state_out;
wire[15:0] shiftreg_out;
wire temp1, temp2, feedback;

Dff D[15:0] (.clk(clk), .rst(rst), .D(shiftreg_out), .Q(state_out));
Mux M[15:0] (load, S, {state_out[14], state_out[13], state_out[12], state_out[11], 
                                  state_out[10], state_out[9], state_out[8], state_out[7],  
                                  state_out[6], state_out[5], state_out[4], state_out[3],
                                  state_out[2], state_out[1], state_out[0], feedback}, shiftreg_out);
                                  
xor_gate G1 (.in0(shiftreg_out[15]), .in1(shiftreg_out[4]), .xor_out(temp1));
xor_gate G2 (.in0(temp1), .in1(shiftreg_out[2]), .xor_out(temp2));
xor_gate G3 (.in0(temp2), .in1(shiftreg_out[1]), .xor_out(feedback));

assign rand_num = shiftreg_out%255;
endmodule