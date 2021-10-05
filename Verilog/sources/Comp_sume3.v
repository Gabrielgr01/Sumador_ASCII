`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 00:32:51
// Design Name: 
// Module Name: Comp_sume3
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

module Comp_sume3 (
    input inA,
    input inB,
    input inC,
    input inD,
    output [3:0] S
    );
    
    // instantiate:

    // entradas negadas
    wire A_negada, b_negado, C_negado, D_negado;
    
    Comp_NOT A_neg (
        .A(inA),
        .Y(A_negado)
    );

    Comp_NOT B_neg (
        .A(inB),
        .Y(B_negado)
    );

    Comp_NOT C_neg (
        .A(inC),
        .Y(C_negado)
    );

    Comp_NOT D_neg (
        .A(inD),
        .Y(D_negado)
    );

    // S3
    wire tmp_and1, tmp_and2, S3;

    Comp_AND_2 S3tmpAND1(
        .A(inB),
        .B(inD),
        .Y(tmp_and1)
    );

    Comp_AND_2 S3tmpAND2(
        .A(inB),
        .B(inC),
        .Y(tmp_and2)
    );

    Comp_OR_3 S3tmpOR(
        .A(inA),
        .B(tmp_and1),
        .C(tmp_and2),
        .Y(S3)
    );

    // S2
    wire tmp_and3, tmp_and4, S2;

    Comp_AND_2 S2tmpAND1(
        .A(inA),
        .B(inD),
        .Y(tmp_and3)
    );

    Comp_AND_3 S2tmpAND2(
        .A(inB),
        .B(C_negada),
        .C(D_negada),
        .Y(tmp_and4)
    );

    Comp_OR_2 S2tmpOR(
        .A(tmp_and3),
        .B(tmp_and4),
        .Y(S2)
    );

    // S1
    wire tmp_and5, tmp_and6, tmp_and7, S1;

    Comp_AND_2 S1tmpAND1(
        .A(inA),
        .B(D_negada),
        .Y(tmp_and5)
    );

    Comp_AND_2 S1tmpAND2(
        .A(inC),
        .B(inD),
        .Y(tmp_and6)
    );

    Comp_AND_2 S1tmpAND3(
        .A(B_negada),
        .B(inC),
        .Y(tmp_and7)
    );

    Comp_OR_3 S1tmpOR(
        .A(tmp_and5),
        .B(tmp_and6),
        .C(tmp_and7),
        .Y(S1)
    );

    // S0
    wire tmp_and8, tmp_and9, S0;

    /*
        AD' = tmp_and5
    */

    Comp_AND_3 S0tmpAND1(
        .A(A_negada),
        .B(B_negada),
        .C(inD),
        .Y(tmp_and8)
    );

    Comp_AND_3 S0tmpAND2(
        .A(inB),
        .B(inC),
        .C(D_negada),
        .Y(tmp_and9)
    );

    Comp_OR_3 S0tmpOR(
        .A(tmp_and5),
        .B(tmp_and8),
        .C(tmp_and9),
        .Y(S0)
    );

    assign S[3] = S3;
    assign S[2] = S2;
    assign S[1] = S1;
    assign S[0] = S0;

endmodule
