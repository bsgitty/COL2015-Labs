`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2026 11:35:47 AM
// Design Name: 
// Module Name: Switches
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


module Switches(
    input wire [9:0] sw,
    output reg [6:0] seg,
    output wire [3:0] an

    );
    assign an = 4'b1110;
    always @(*) begin
        if (sw[9]) begin
            seg = 7'b0010000;
        end else if (sw[8]) begin
            seg = 7'b0000000;
        end else if (sw[7]) begin 
            seg = 7'b1111000;
        end else if (sw[6]) begin
            seg = 7'b0000010;
        end else if (sw[5]) begin
            seg = 7'b0010010;
        end else if (sw[4]) begin 
            seg = 7'b0011001;
        end else if (sw[3]) begin
            seg = 7'b0110000;
        end else if (sw[2]) begin
            seg = 7'b0100100;
        end else if (sw[1]) begin
            seg = 7'b1111001;
        end else if (sw[0]) begin
            seg = 7'b1000000;
        end else begin
            seg = 7'b1111111;
        end
    end
endmodule
