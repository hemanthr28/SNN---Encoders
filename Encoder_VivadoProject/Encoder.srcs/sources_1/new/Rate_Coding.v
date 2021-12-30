`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2021 11:07:40 AM
// Design Name: 
// Module Name: Rate_Coding
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

module Rate_Coding(input clk, input rst, input load, input[15:0] S, 
    input[6271:0] memory, output[783:0] spikes, output rand_num
    );
wire[15:0] rand_num;
genvar i; 

generate
for(i=0;i<784;i=i+1)begin
Randnum_generator RG (.clk(clk), .rst(rst), .load(load), .S(S), .rand_num(rand_num));
comparator Cmp(.In_pixel({8'b0, memory[((i*8)+7)-:8]}), .In_rand(rand_num), .spike_out(spikes[i]));
end
endgenerate
/*
Randnum_generator R1 (.clk(clk), .rst(rst), .load(load), .S(S), .rand_num(rand_num));
comparator C1(.In_pixel({8'b0, memory[7:0]}), .In_rand(rand_num), .spike_out(spikes[0]));

Randnum_generator R2 (.clk(clk), .rst(rst), .load(load), .S(S), .rand_num(rand_num));
comparator C2(.In_pixel({8'b0, memory[15:8]}), .In_rand(rand_num), .spike_out(spikes[1]));

Randnum_generator R3 (.clk(clk), .rst(rst), .load(load), .S(S), .rand_num(rand_num));
comparator C3(.In_pixel({8'b0, memory[23:16]}), .In_rand(rand_num), .spike_out(spikes[2]));

Randnum_generator R4 (.clk(clk), .rst(rst), .load(load), .S(S), .rand_num(rand_num));
comparator C4(.In_pixel({8'b0, memory[31:24]}), .In_rand(rand_num), .spike_out(spikes[3]));
*/
endmodule
