`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2025 07:17:54 PM
// Design Name: 
// Module Name: Using_Always_Block
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


module Using_Always_Block();

reg clk, clk_25MHz, clk_50MHz;
reg rst;

    initial begin
        clk = 1'b0;
        clk_25MHz = 1'b0;
        clk_50MHz = 1'b0;
        rst = 1'b0;
    end
    //Common use of always is clock generation or toggling globle variables constantly
    always #5 clk = ~clk;
    
    always #10 clk_50MHz = ~clk_50MHz;
    
    always #20 clk_25MHz = ~clk_25MHz;
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
    end
    
    initial begin
        #200;
        $finish();
    end
        
endmodule
