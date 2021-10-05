`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 11:50:35
// Design Name: 
// Module Name: TB_Comp_Sume3
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


module TB_Comp_Sume3(

    );
    
    // inputs
    reg inA, inB, inC, inD;
    
    // outputs
    wire [3:0] out;
    
    // instantiate
    Comp_Sume3 UUT (
        .inA(inA),
        .inB(inB),
        .inC(inC),
        .inD(inD),
        .out(out)
    );
    
    // stimulus
    initial begin
        inA = 0;
        inB = 0;
        inC = 0;
        inD = 0;
    end
    
    always #20 inD = ~inD;
    always #40 inC = ~inC;
    always #80 inB = ~inB;
    always #160 inA = ~inA;
    
endmodule
