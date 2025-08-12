`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2025 06:30:33 PM
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
  
  task no_gen(input bit rst);
    this.temp = rst*5*6*2; 
  endtask
endclass
