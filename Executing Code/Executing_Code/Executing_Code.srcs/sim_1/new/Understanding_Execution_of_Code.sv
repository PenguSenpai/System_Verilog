`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2025 05:53:49 PM
// Design Name: 
// Module Name: Understanding_Execution_of_Code
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


module Understanding_Execution_of_Code();

    reg clk;
    reg rst;
    reg [3:0] temp;
    
    //1. Initialzied Global Variable
    initial begin
        clk = 1'b0;
        rst = 1'b0;
    end
    
    //2. Random signal for data/control
    initial begin
        rst = 1'b1;
        #30;
        rst = 1'b0;
    end  
    
    initial begin
        temp = 4'h0;
        #30;
        temp = 4'b0101;
        #10;
        temp = 4'b1010;
        #10;
        temp = 4'b1011;
        #10;
    end
   //3. System Task at the start of simulation
   initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
    end
    
    //4. Analyze values of variables through incdir
    initial begin
        $monitor("Temp: %0d at time : %ot", temp, $time);
    end
    
    //5. Stoping simulation forcefully calling $finish
    initial begin
        #200;
        $finish;
    end
             
    
endmodule
