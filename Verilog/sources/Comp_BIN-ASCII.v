`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 14:33:37
// Design Name: 
// Module Name: Bin_Ascii_Top
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


module Comp_BIN_ASCII (
    input [7:0] in,
    output [6:0] unidades, decenas, centenas
    );
    
    wire cero = 0;
    
    wire [3:0] salidaC1;
    
    Comp_Sume3 C1(
    .inA(cero),
    .inB(in[7]),
    .inC(in[6]),
    .inD(in[5]),
    .out(salidaC1)
    );
    
    wire [3:0] salidaC2;
    
    Comp_Sume3 C2(
    .inA(salidaC1[2]),
    .inB(salidaC1[1]),
    .inC(salidaC1[0]),
    .inD(in[4]),
    .out(salidaC2)
    );
    
    wire [3:0] salidaC3;
    
    Comp_Sume3 C3(
    .inA(salidaC2[2]),
    .inB(salidaC2[1]),
    .inC(salidaC2[0]),
    .inD(in[3]),
    .out(salidaC3)
    );
    
    wire [3:0] salidaC4;
    
    Comp_Sume3 C4(
    .inA(salidaC3[2]),
    .inB(salidaC3[1]),
    .inC(salidaC3[0]),
    .inD(in[2]),
    .out(salidaC4)
    );
    
    wire [3:0] salidaC5;
    
    Comp_Sume3 C5(
    .inA(salidaC4[2]),
    .inB(salidaC4[1]),
    .inC(salidaC4[0]),
    .inD(in[1]),
    .out(salidaC5)
    );
    
    wire [3:0] salidaC6;
    
    Comp_Sume3 C6(
    .inA(cero),
    .inB(salidaC1[3]),
    .inC(salidaC2[3]),
    .inD(salidaC3[3]),
    .out(salidaC6)
    );
    
    wire [3:0] salidaC7;
    
    Comp_Sume3 C7(
    .inA(salidaC6[2]),
    .inB(salidaC6[1]),
    .inC(salidaC6[0]),
    .inD(salidaC4[3]),
    .out(salidaC7)
    );
    
    assign unidades[0] = in[0];
    assign unidades[1] = salidaC5[0];
    assign unidades[2] = salidaC5[1];
    assign unidades[3] = salidaC5[2];
    assign unidades[6:4] = 011;
    
    assign decenas[0] = salidaC5[3];
    assign decenas[1] = salidaC7[0];
    assign decenas[2] = salidaC7[1];
    assign decenas[3] = salidaC7[2];
    assign decenas[6:4] = 011;
    
    assign centenas[0] = salidaC7[3];
    assign centenas[1] = salidaC6[3];
    assign centenas[2] = 0;
    assign centenas[3] = 0;
    assign centenas[6:4] = 011;

endmodule
