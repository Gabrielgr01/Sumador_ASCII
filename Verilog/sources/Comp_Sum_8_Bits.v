`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2021 22:41:58
// Design Name: 
// Module Name: Sum_8_Bits
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


module Comp_Sum_8_Bits(
    input Cin,
    input [6:0] num_A,
    input [6:0] num_B,
    output [7:0] num_sum,
    output Cout
);
 
   reg [8:0] tot;
   
   always @*
    tot <= num_A + num_B + Cin;
   
   assign num_sum = tot[7:0];
   assign Cout = tot[8];
   
endmodule
