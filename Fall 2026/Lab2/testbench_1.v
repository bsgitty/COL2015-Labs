`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2026 12:17:43 PM
// Design Name: 
// Module Name: testbench_1
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


module testbench_1();
    reg [9:0] sw;
    wire [6:0] seg;
    wire [3:0] an;
    Switches UUT (
        .sw (sw),
        .seg (seg),
        .an (an)
);
    initial begin
        sw = 10'b0000000000;
    
        #20 sw = 10'b0000000001;
    
        #20 sw = 10'b0000000010;
    
        #20 sw = 10'b0000000100;
    
        #20 sw = 10'b0000001000;
    
        #20 sw = 10'b0000010000;
    
        #20 sw = 10'b0000100000;
    
        #20 sw = 10'b0001000000;
    
        #20 sw = 10'b0010000000;
    
        #20 sw = 10'b0100000000;
    
        #20 sw = 10'b1000000000;
        
        #20 sw = 10'b0010000010;
        
        #20 sw = 10'b1100000000;
        
        #20 sw = 10'b0100010000;
    end
endmodule
