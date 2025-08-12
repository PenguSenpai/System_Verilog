`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Personal
// Engineer: Douglas, Gavin 
// 
// Create Date: 08/11/2025 06:30:52 PM
// Design Name: Coding Exercise A21
// Module Name: test_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Getting used to inital block statements
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include "../../sources_1/new/test.sv"

module test_tb();
  
  reg rst = 0;
  initial begin
    #60;
    rst = 1;
  end
  test t1 = new();
  
  initial begin
    #59;
    t1.no_gen(rst);
    t1.display();
  end
  
  
endmodule
