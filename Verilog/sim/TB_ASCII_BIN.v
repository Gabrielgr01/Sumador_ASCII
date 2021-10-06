`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 19:30:59
// Design Name: 
// Module Name: TB_ASCII_BIN
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


module TB_ASCII_BIN(
    );
    
    // inputs
    reg [6:0] AU, AD;
    
    // outputs
    wire [6:0] A_bin;
    
    // instantiate
    Comp_ASCII_BIN ascii_bin (
        .AU(AU),
        .AD(AD),
        .binarioSinAcarreo(A_bin)
    );
    
    // stimulus
    initial begin
        AU = 0110000;
        AD = 0110000;
    end
    
    always #1 AU[0] = ~AU[0];
    always #2 AU[1] = ~AU[1];
    always #4 AU[2] = ~AU[2];
    always #8 AU[3] = ~AU[3];
    
    always #16 AD[0] = ~AD[0];
    always #32 AD[1] = ~AD[1];
    always #64 AD[2] = ~AD[2];
    always #128 AD[3] = ~AD[3];
    
endmodule
