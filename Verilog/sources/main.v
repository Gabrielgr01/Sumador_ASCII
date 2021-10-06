`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 16:05:13
// Design Name: 
// Module Name: main
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


module main(
    // Entradas y salidas est�n codificadas en ASCII de 7 bits
    input [6:0] AU, // Entrada A: D�gito con las unidades
    input [6:0] AD, // Entrada A: D�gito con las decenas
    input [6:0] BU, // Entrada B: D�gito con las unidades
    input [6:0] BD, // Entrada B: D�gito con las decenas
    output [6:0] YU, // Salida Y: D�gito con las unidades
    output [6:0] YD, // Salida Y: D�gito con las decenas
    output [6:0] YC // Salida Y: D�gito con las centenas
    );
    
    // Primer conversor ASCII - BINARIO
    wire [6:0] A_bin;
    
    Comp_ASCII_BIN ascii_bin_1 (
        .AU(AU),
        .AD(AD),
        .binarioSinAcarreo(A_bin)
    );
    
    // Segundo conversor ASCII - BINARIO
    wire [6:0] B_bin;
        
    Comp_ASCII_BIN ascii_bin_2 (
        .AU(BU),
        .AD(BD),
        .binarioSinAcarreo(B_bin)
    );
    
    // Sumador
    wire [7:0] suma_bin;
    wire cero = 0;
    
    Comp_Sum_8_Bits sumador (
        .Cin(cero),
        .num_A(A_bin),
        .num_B(B_bin),
        .num_sum(suma_bin)
    );
    
    // Conversor BINARIO - ASCII
    Comp_BIN_ASCII bin_ascii (
        .in(suma_bin),
        .unidades(YU),
        .decenas(YD),
        .centenas(YC)
    );
    
endmodule
