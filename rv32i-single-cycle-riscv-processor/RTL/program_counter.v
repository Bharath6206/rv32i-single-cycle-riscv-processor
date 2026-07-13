`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 20:41:16
// Design Name: 
// Module Name: program_counter
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


module program_counter ( clk , rst , pc_in , pc_out );
    input clk,rst;
    input       [31:0]pc_in;  // 32 bit 
    output reg  [31:0]pc_out; //32 bit register

    always @(posedge clk or posedge rst) begin
        if (rst)
        pc_out <=32'b00;
        else
            pc_out <=pc_in;
        end
    
endmodule
