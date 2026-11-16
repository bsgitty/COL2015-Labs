`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2026 11:40:32 AM
// Design Name: 
// Module Name: testbench_3
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


module testbench_3;
    reg clk;
    reg [13:0] sw;
    wire [3:0] an;
    wire [6:0] seg;
    wire dp;
    project3 uut (
        .clk(clk),
        .sw(sw),
        .an(an),
        .seg(seg),
        .dp(dp)
    );
    always begin
        #5 clk = ~clk;
    end
    initial begin
        clk = 1'b0;
        sw = 14'b0;
        
        sw[9:0] = 10'b0000000010;
        sw[10] = 1'b1;
        #20;
        sw[10] = 1'b0;
        #20;
        
        sw[9:0] = 10'b0000001000;
        sw[11] = 1'b1;
        #20;
        sw[11] = 1'b0;
        #20;
        
        sw[9:0] = 10'b0001000000;
        sw[12] = 1'b1;
        #20;
        sw[12] = 1'b0;
        #20;
        
        sw[9:0] = 10'b1000000000;
        sw[13] = 1'b1;
        #20;
        sw[13] = 1'b0;
        #20;
    end
endmodule
