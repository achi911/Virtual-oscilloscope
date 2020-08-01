`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/31 22:01:14
// Design Name: 
// Module Name: fenpinqi_1
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


module fenpinqi_1(
   input clk_100MHz,
   output reg clk_1=1
    );
    reg [8:0] A=0;
    always@(posedge clk_100MHz)
    begin
      if(A!=8'd200)
        A<=A+1;
      else
       begin
       clk_1<=~clk_1;
       A<=0;
       end
    end
endmodule
