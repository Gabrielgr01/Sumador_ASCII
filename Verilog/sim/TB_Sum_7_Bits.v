`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2021 19:03:43
// Design Name: 
// Module Name: TB_Sum_7_Bits
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


module TB_Sum_7_Bits(

    );
    //Inputs
    reg Acin;
    reg [6:0] Val_1, Val_2;
    
    //Outputs
    wire [6:0] Resul;
    wire Acout;
    
    //Instanciar
    Comp_Sum_7_Bits  sum_7bits(
        .Cin(Acin), 
        .num_A(Val_1), 
        .num_B(Val_2), 
        .num_sum(Resul), 
        .Cout(Acout)
    );
    
    //Stimulus
    initial begin
        Acin = 0;
        Val_1 = 0000000;
        Val_2 = 0000000;
    end
    
    always #1 Val_1[0] = ~Val_1[0];
    always #2 Val_1[1] = ~Val_1[1];
    always #4 Val_1[2] = ~Val_1[2];
    always #8 Val_1[3] = ~Val_1[3];
    always #16 Val_1[4] = ~Val_1[4];
    always #32 Val_1[5] = ~Val_1[5];
    always #64 Val_1[6] = ~Val_1[6];
    
    always #128 Val_2[0] = ~Val_2[0];
    always #256 Val_2[1] = ~Val_2[1];
    always #512 Val_2[2] = ~Val_2[2];
    always #1024 Val_2[3] = ~Val_2[3];
    always #2048 Val_2[4] = ~Val_2[4];
    always #4096 Val_2[5] = ~Val_2[5];
    always #8192 Val_2[6] = ~Val_2[6];
    
endmodule
