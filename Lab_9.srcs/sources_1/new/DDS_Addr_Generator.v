`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/30 10:00:19
// Design Name: 
// Module Name: DDS_Addr_Generator
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


module DDS_Addr_Generator(
   input clk_DDS,
   input Rst,
   input [8:0]Phase,
   output [7:0]Addr_out
    );
    parameter NWORD=256;
    wire [7:0]PWORD = (Phase*NWORD)/360;
    wire clk_out;
    reg [7:0]Addr_Cnt=0;
    Clk_Division Clk_Division_1(
    .clk_100MHz(clk_DDS),
    .clk_mode(1200),
    .clk_out(clk_out)
    );
    always@(posedge clk_out or negedge Rst)
    begin 
       if(!Rst)
         Addr_Cnt <= 0;
        else
         Addr_Cnt <= Addr_Cnt+1;
     end
     assign Addr_out = Addr_Cnt + PWORD;
endmodule
