`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 15:17:39
// Design Name: 
// Module Name: TB_Bin_Ascii
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


module TB_BIN_ASCII (
    );
    
    //inputs
    reg [7:0] entrada;
    
    //outputs
    wire [3:0] uni, dec, cen;
    
    //instantiate
    Comp_BIN_ASCII UUT(
        .in(entrada),
        .unidades(uni),
        .decenas(dec),
        .centenas(cen)
    );
    
    //stimulus
    initial begin
        entrada = 00000000;
    end
    
    always #2 entrada[0] = ~entrada[0];
    always #4 entrada[1] = ~entrada[1];
    always #8 entrada[2] = ~entrada[2];
    always #16 entrada[3] = ~entrada[3];
    always #32 entrada[4] = ~entrada[4];
    always #64 entrada[5] = ~entrada[5];
    always #128 entrada[6] = ~entrada[6];
    always #256 entrada[7] = ~entrada[7];
    
endmodule
