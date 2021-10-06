`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2021 18:37:28
// Design Name: 
// Module Name: Sum_7_Bits
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


module Comp_Sum_7_Bits (
    //input Cin,
    input [6:0] num_A,
    input [6:0] num_B,
    output [6:0] num_sum
    //output Cout
);
 
   reg [7:0] tot;
   
   always @*
    tot <= num_A + num_B; //+ Cin;
   
   assign num_sum = tot[6:0];
   //assign Cout = tot[7];
   
endmodule
