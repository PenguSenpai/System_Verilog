`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2025 10:24:04 PM
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
`timescale 1ns/1ps
 
 ////Do not change any code after this ->

module test(input probe);

  realtime st = 0,ed = 0;
  realtime dif = 0;

  initial begin
    @(posedge probe);
    st = $realtime();
    @(posedge probe);
    ed = $realtime();
    #2;
    dif = ed - st;
    $display("---------------------------");
    $display("magic_no = %0t", (dif/1000));
    $display("---------------------------");
  end
  
endmodule
