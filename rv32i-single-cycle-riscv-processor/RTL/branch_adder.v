`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 21:09:13
// Design Name: 
// Module Name: branch_adder
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


module Branch_Adder(PC,offset,branch_target);
    input [31:0] PC;                   
    input [31:0] offset;                
    output reg [31:0] branch_target;  

    always @(*) begin
        branch_target <= PC + (offset );  
    end

endmodule