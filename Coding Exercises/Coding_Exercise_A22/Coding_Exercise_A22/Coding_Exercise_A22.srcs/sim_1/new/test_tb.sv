`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2025 06:50:10 PM
// Design Name: 
// Module Name: test_tb
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

`include "../../sources_1/new/test.sv"
module test_tb();
  
  reg resetn = 0;   //////rst represent DUT reset Signal

  /////// User Logic goes here
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
