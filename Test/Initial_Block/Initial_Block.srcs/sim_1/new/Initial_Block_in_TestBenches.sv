`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 07:19:34 PM
// Design Name: 
// Module Name: Initial_Block_in_TestBenches
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


module Initial_Block_in_TestBenches();

    reg a = 0;
    //initial starts executions at 0ns
    initial a = 1;  //Single statement intial block
    
    initial begin   // Multy statement initial block
        a = 1;
            #10;
        a = 0;
    end
        
endmodule
