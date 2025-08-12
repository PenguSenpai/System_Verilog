`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2025 06:49:10 PM
// Design Name: 
// Module Name: test
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

class test;
  bit rst  = 1;
  int temp = 0;
  
  
  task display();
    $display("---------------------------");
    $display("magic_no = %0d", this.temp);
    $display("---------------------------");
  endtask
  
  task no_gen(rst);
    this.temp = rst*7*8*3; 
  endtask
  
endclass

module test();
endmodule
