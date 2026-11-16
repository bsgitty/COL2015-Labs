`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2026 01:00:30 PM
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


// AND_gate_tb.v (testbench)
module AND_gate_tb ();
    // In this TB modeling Style, the test bench instantiates the DUT as a component   
    // and passes the inputs from a separate verilog module at instantiation
    reg a, b, d, e, g; // a, b are storage elements
    wire c, f, h; // c is the output
    // connecting testbench signals with AND_gate
    AND_gate UUT (
        .a (a),
        .b (b),
        .c (c),
        .d (d),
        .e (e),
        .f (f),
        .g (g),
        .h (h)
        );
    initial begin
        // inputs
        // 00 at 0 ns
        a = 0;
        b = 0;
        d = 0;
        e = 0;
        g = 0;
        
        // 01 at 20 ns, as b is 0 at 20 ns and a is changed to 1 at 20 ns
        #20 a = 1;d = 1;g = 1;
        
        // 10 at 40 ns
        #20 b = 1; a = 0;d = 0;e = 1;
        
        // 11 at 60 ns
        #20 a = 1; b = 1;d = 1;e = 1;
    end
endmodule
