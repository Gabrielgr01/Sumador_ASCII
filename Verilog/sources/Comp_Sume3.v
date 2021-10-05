`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 11:41:23
// Design Name: 
// Module Name: Comp_Sume3
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


module Comp_Sume3(
    input inA,
    input inB,
    input inC,
    input inD,
    output [3:0] out
    );

    assign out[3] = inA | (inB & inD) | (inB & inC);
    assign out[2] = (inB & ~inC & ~inD) | (inA & inD);
    assign out[1] = (inA & ~inD) | (inC & inD) | (~inB & inC);
    assign out[0] = (inA & ~inD) | (~inA & ~inB & inD) | (inB & inC & ~inD); 

endmodule
