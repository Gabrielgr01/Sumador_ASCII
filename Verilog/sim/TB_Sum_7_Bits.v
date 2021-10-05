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
    reg [6:0] Val_1;
    reg [6:0] Val_2;
    //Outputs
    wire [6:0] Resul;
    wire Acout;
    //Instanciar
   Sum_7_Bits(Acin, Val_1, Val_2, Resul, Acout);
    //Stimulus
    initial begin
    Val_1=0000000;
    Val_2=1111111;
    end
endmodule
