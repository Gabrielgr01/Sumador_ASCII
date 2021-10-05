`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 01:21:07
// Design Name: 
// Module Name: TB_Comp_AND_3
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

module TB_Comp_AND_3 (

    );

    // Inputs
    reg inA, inB, inC;

    // Outputs
    wire out;

    // Instantiate
    Comp_AND_3 UUT(
        .Y(out),
        .A(inA),
        .B(inB),
        .C(inC)
    );

    // stimulus
    initial begin
        inA = 0;
        inB = 0;
        inC = 0;
    end

    always #20 inA = ~inA;
    always #40 inB = ~inB;
    always #60 inC = ~inC;

endmodule
