`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Douglas, Gavin
// 
// Create Date: 07/16/2025 06:55:58 PM
// Design Name: Initial_Blocks
// Module Name: Initial_Block_TB
// Project Name: Initial_Blocks
// Target Devices: //NA
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


module Initial_Block_TB
    ();
//////Global Signal CLK, RST
    reg clk;
    reg rst;
    reg [3:0] temp;
    //Initialize global variables within testbenches
    initial begin
        clk = 1'b0;
        rst = 1'b0;
    end
    //2.Generate random signal for Data/Control Signals
    
    initial begin 
        rst = 1'b1;
        #30;
        rst = 1'b0;
    end
    initial begin
        temp = 4'b0010;
        #10;
        temp = 4'hF;
        #10;
        temp = 4'b0011;
        #10;   
    end
    //3. Keep track of values of variables on console
    initial begin
        $monitor("Temp : %0d at time : %0t", temp, $time);
    end
    //Call the finish after a set duration of time
    initial begin
        #60;
        $finish();
    end
//////Data Signal

//////Control Signal   

endmodule
