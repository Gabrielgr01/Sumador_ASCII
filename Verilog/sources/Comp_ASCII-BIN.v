`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jose Fabio Navarro Naranjo
// 
// Create Date: 04.10.2021 21:27:23
// Design Name: 
// Module Name: Ascii_Bin_Top
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


module Comp_ASCII_BIN (
    input [6:0] AU, AD,
    output [6:0] binarioSinAcarreo
    );

    wire [6:0] entrada_D1, entrada_D2, cable1, entrada_U;

    assign entrada_D1[0] = 0;
    assign entrada_D1[1] = AD[0];
    assign entrada_D1[2] = AD[1];
    assign entrada_D1[3] = AD[2];
    assign entrada_D1[4] = AD[3];
    assign entrada_D1[5] = 0;
    assign entrada_D1[6] = 0;

    assign entrada_D2[0] = 0;
    assign entrada_D2[1] = 0;
    assign entrada_D2[2] = 0;
    assign entrada_D2[3] = AD[0];
    assign entrada_D2[4] = AD[1];
    assign entrada_D2[5] = AD[2];
    assign entrada_D2[6] = AD[3];

    assign entrada_U[0] = AU[0];
    assign entrada_U[1] = AU[1];
    assign entrada_U[2] = AU[2];
    assign entrada_U[3] = AU[3];
    assign entrada_U[4] = 0;
    assign entrada_U[5] = 0;
    assign entrada_U[6] = 0;

    Comp_Sum_7_Bits sum1(
        //.Cin(0),
        .num_A(entrada_D1),
        .num_B(entrada_D2),
        .num_sum(cable1)
    );

    //wire acarreoSalida;
    //wire [6:0] binarioSinAcarreo;

    Comp_Sum_7_Bits sum2(
        //.Cin(0),
        .num_A(cable1),
        .num_B(entrada_U),
        .num_sum(binarioSinAcarreo)
        //.Cout(acarreoSalida)
    );

    /*
    assign binario[0]=binarioSinAcarreo[0];
    assign binario[1]=binarioSinAcarreo[1];
    assign binario[2]=binarioSinAcarreo[2];
    assign binario[3]=binarioSinAcarreo[3];
    assign binario[4]=binarioSinAcarreo[4];
    assign binario[5]=binarioSinAcarreo[5];
    assign binario[6]=binarioSinAcarreo[6];
    assign binario[7]=acarreoSalida;
    */

endmodule
