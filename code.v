`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 01:35:31 PM
// Design Name: 
// Module Name: code
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


module code(
    input A,
    input B,
    input CI,
    output  SUM,
    output  CO
    );
    
   assign CO = CI & (A | B) | (A & B);
   assign SUM = (CI ^ B ^ A) | (A & B & CI);
    
  
endmodule
