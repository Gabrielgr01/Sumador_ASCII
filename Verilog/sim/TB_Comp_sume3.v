`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 00:36:50
// Design Name: 
// Module Name: TB_Comp_sume3
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

module TB_Comp_sume3 (

    );

    // Inputs
    reg inA, inB, inC, inD;

    // Outputs
    wire [3:0] out;

    // Instantiate    
    Comp_sume3 UUT(
        .S(out),
        .inA(inA),
        .inB(inB),
        .inC(inC),
        .inD(inD)
    );

    // stimulus
    initial begin
        inA = 0;
        inB = 0;
        inC = 0;
        inD = 0;
    end

    always #20 inA = ~inA;
    always #40 inB = ~inB;
    always #60 inC = ~inC;
    always #80 inD = ~inD;
    
endmodule
