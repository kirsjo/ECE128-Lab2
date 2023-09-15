`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 02:12:59 PM
// Design Name: 
// Module Name: code_tb
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


module code_tb( );
    reg A, B, CI;
    wire SUM, CO;
    
    code uut(.A(A), .B(B), .CI(CI), .SUM(SUM), .CO(CO));
    
    initial begin
        A= 0; B=0; CI=0;
    #10
        A= 0; B=0; CI=1;
    #10
        A= 0; B=1; CI=0;
    #10
        A= 0; B=1; CI=1;
    #10
        A= 1; B=0; CI=0;
    #10
        A= 1; B=0; CI=1;
    #10
        A= 1; B=1; CI=0;
    #10
        A= 1; B=1; CI=1;
    end;

endmodule
