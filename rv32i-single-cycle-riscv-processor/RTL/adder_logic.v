`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 21:10:31
// Design Name: 
// Module Name: adder_logic
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


// adder logic 
module adder_logic ( in_1 , in_2 , Sum_out );
    
input [31:0] in_1 , in_2;
output [31:0] Sum_out;
assign Sum_out = in_1 + in_2 ;

endmodule //adder_logic