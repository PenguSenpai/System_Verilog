`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Personal
// Engineer: Douglas, Gavin
// 
// Create Date: 08/11/2025 06:56:39 PM
// Design Name: Coding_Exercise_A22
// Module Name: test_tb1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: More practice of initial block usage and global variables
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include "../../source_1/new/test.sv"

module test_tb1();  
  reg resetn = 0;

  initial begin
    resetn = 0;
    #100;
    resetn = 1;
    forever begin
      #50 resetn = ~resetn;
    end
  end
  
  test t1 = new();
  
  initial begin
    #201;
    t1.no_gen(resetn);
    t1.display();
  end
endmodule
