`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2026 12:10:51 PM
// Design Name: 
// Module Name: AND_gate
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


// AND GATE
module AND_gate (
    input a,
    input b,
    input d,
    input e,
    input g,
    output f,
    output c,
    output h);
    //output c);
    assign f = d | e; 
    assign c = a & b;
    assign h = ~g;
endmodule

// OR GATE
//module OR_gate (
//    input a,
//    input b, 
//    output c);
//    assign c = a | b;
//endmodule
