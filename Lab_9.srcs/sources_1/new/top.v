`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/30 16:26:18
// Design Name: 
// Module Name: top
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


module top(
    input clk_100MHz,
    input [1:0]key,
    output clk_ADC,
    output clk_DAC,
   //output  DAC_Din,
   //output  DAC_Sync,
    input [7:0]ADC_data,
    output ADC_En,
    output  TMDS_Tx_Clk_N,
    output  TMDS_Tx_Clk_P,
    output  [2:0]TMDS_Tx_Data_N,
    output  [2:0]TMDS_Tx_Data_P 
    );
   //wire clk_100MHz_1;
   //wire clk_100MHz_2;
   //wire clk_DAC;
    //wire DAC_Out;
    wire [7:0]DAC_Data;
    wire DAC_Sync;
    wire DAC_Din;
    
    Lab_9 Lab_9(
    .clk_100MHz(clk_100MHz),
    .Key(key),
    .clk_DAC(clk_DAC),
    .DAC_Din(DAC_Din),
    .DAC_Sync(DAC_Sync),
    .DAC_Data_1(DAC_Data)
    );
    
    ADC_part ADC_part(
    .clk_100MHz(clk_100MHz),
    .ADC_Data(DAC_Data),
    .clk_ADC(clk_ADC),
    .ADC_En(ADC_En),
    .TMDS_Tx_Clk_N(TMDS_Tx_Clk_N),
    .TMDS_Tx_Clk_P(TMDS_Tx_Clk_P),
    .TMDS_Tx_Data_N(TMDS_Tx_Data_N),
    .TMDS_Tx_Data_P(TMDS_Tx_Data_P)
    );
    
endmodule
