`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 20:43:49
// Design Name: 
// Module Name: pcplus4
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


//program counter + 4 add operation
module pcplus4 (fromPc,NexttoPc);
    input [31:0]fromPc;
    output [31:0]NexttoPc;

    assign NexttoPc = 4 + fromPc;
    
endmodule //pcplus4
