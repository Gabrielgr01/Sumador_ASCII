`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 17:59:23
// Design Name: 
// Module Name: main_TB
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


module main_tb (
    );
    
    // inputs
    reg [6:0] AU, AD, BU, BD;
    
    // outputs
    wire [6:0] YU, YD, YC;
    
    // instantiate
    main main (
        .AU(AU),
        .AD(AD),
        .BU(BU),
        .BD(BD),
        .YU(YU),
        .YD(YD),
        .YC(YC)
    );
    
    // stimulus
    initial begin
        AU = 0110000;
        AD = 0110000;
        BU = 0110000;
        BD = 0110000;
    end
    
    always #1 AU[0] = ~AU[0];
    always #2 AU[1] = ~AU[1];
    always #4 AU[2] = ~AU[2];
    always #8 AU[3] = ~AU[3];
    
    always #16 BU[0] = ~BU[0];
    always #32 BU[1] = ~BU[1];
    always #64 BU[2] = ~BU[2];
    always #128 BU[3] = ~BU[3];
 
    always #256 AD[0] = ~AD[0];
    always #512 AD[1] = ~AD[1];
    always #1024 AD[2] = ~AD[2];
    always #2048 AD[3] = ~AD[3];
    
    always #4096 BD[0] = ~BD[0];
    always #8192 BD[1] = ~BD[1];
    always #16384 BD[2] = ~BD[2];
    always #32768 BD[3] = ~BD[3];
    
endmodule
