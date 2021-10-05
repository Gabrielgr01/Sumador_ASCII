`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 00:30:00
// Design Name: 
// Module Name: Comp_OR_3
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

module Comp_OR_3 (
    input A, 
    input B, 
    input C,
    output Y
    );

    assign Y = A | B | C;

endmodule
