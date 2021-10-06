`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 19:05:47
// Design Name: 
// Module Name: TB_sumador
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


module TB_sumador(

    );
    
    // inputs
    reg Cin;
    reg [6:0] num_A, num_B;
    
    //outputs
    wire [7:0] num_sum;
    wire Cout;
    
    // instantiate
    Comp_Sum_8_Bits sumador(
        .Cin(Cin),
        .num_A(num_A),
        .num_B(num_B),
        .num_sum(num_sum),
        .Cout(COut)
    );
    
    // stimulus
    initial begin
        Cin = 0;
        num_A = 0000000;
        num_B = 0000000;
    end
    
    always #1 num_A[0] = ~num_A[0];
    always #2 num_A[1] = ~num_A[1];
    always #4 num_A[2] = ~num_A[2];
    always #8 num_A[3] = ~num_A[3];
    always #16 num_A[4] = ~num_A[4];
    always #32 num_A[5] = ~num_A[5];
    always #64 num_A[6] = ~num_A[6];
    
    always #128 num_B[0] = ~num_B[0];
    always #256 num_B[1] = ~num_B[1];
    always #512 num_B[2] = ~num_B[2];
    always #1024 num_B[3] = ~num_B[3];
    always #2048 num_B[4] = ~num_B[4];
    always #4096 num_B[5] = ~num_B[5];
    always #8192 num_B[6] = ~num_B[6];
    
endmodule
