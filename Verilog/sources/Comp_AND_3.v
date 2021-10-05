`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 00:28:01
// Design Name: 
// Module Name: Comp_AND_3
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

module Comp_AND_3 (
    input A, 
    input B, 
    input C,
    output Y
    );

    assign Y = A & B & C;

endmodule
