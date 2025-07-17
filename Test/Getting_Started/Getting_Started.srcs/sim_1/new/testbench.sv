`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2025 06:38:03 PM
// Design Name: 
// Module Name: testbench
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


class transaction;
  
  
  randc bit [7:0] data;
  
  task display();
    $display("Value of Data : %0d", this.data);
  endtask
  
 
  
endclass
 
 
 
module testbench;
  
  transaction t;
  reg [7:0] data;
  
  
  initial begin
    t = new();
    
    for(int i = 0; i<10; i++) begin
      t.randomize();
      data = t.data;
      t.display();
      #10;
    end
    
    
  end
  
  initial begin
    //$dumpfile("dump.vcd");
    //$dumpvars;
    #200;
    $finish();
    
  end
  
  
endmodule

