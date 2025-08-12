`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2025 07:03:05 PM
// Design Name: 
// Module Name: Always_Block_TB
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


module Always_Block_TB();
    reg a, b;
    reg y;
    //formating of always blocks
    //always_comb @() for combinational logic || sensitive on all inputs
    //always_ff @() sequential circuit        || sensitive on clock signal
    //always_latch @() for latched logic
    
    always a = 1; // single statement always block that has no sensitivity list
    
    always begin     //multiple statement always block
        //.......
        //.......
        //.......
    end

    initial begin
        a = 1;
    end                        
endmodule      
