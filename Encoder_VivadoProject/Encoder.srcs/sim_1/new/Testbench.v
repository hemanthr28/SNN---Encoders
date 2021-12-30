`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2021 11:48:52 AM
// Design Name: 
// Module Name: Testbench
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
module Testbench;
integer i;
reg clk, rst, load;
reg[15:0] S;
reg[6271:0] mem;
reg[7:0] memory[783:0];
wire [783:0] spikes;
wire[15:0] rand_num;
initial begin
$readmemh("pixel.txt",memory);

for(i=0;i<784;i=i+1)begin
mem[((i*8)+7)-:8] = memory[i];  
end
rst = 1'b0;
clk = 1'b0;
S = 16'h0010;
load = 1'b0;
#100
load = 1'b1;
end

Rate_Coding RC (.clk(clk), .rst(rst), .load(load), .S(S), .memory(mem), .spikes(spikes), .rand_num(rand_num));
always #50 clk = ~clk;

/*   
Dff D0(.clk(clk), .rst(rst), .D(D), .Q(Q));
Mux M0(.select(select), .in_bit0(in_bit0), .in_bit1(in_bit1), .mux_out(mux_out));
xor_gate xor1(.in0(in0), .in1(in1), .xor_out(xor_out));

initial begin
rst = 1'b0;
clk = 1'b0;
D = 1'b0;
in_bit0 = 1'b0;
in_bit1 = 1'b1;
select = 1'b0;
in0 = 1'b0;
in1 = 1'b0;
end 

always #50 clk = ~clk;

always
begin
rst = 1'b0;
#100 
D <= ~D;
select <= ~select;
in0 = 1;
in1 = 0;
#50
in0 = 0;
in1 = 0;
end
*/
endmodule
