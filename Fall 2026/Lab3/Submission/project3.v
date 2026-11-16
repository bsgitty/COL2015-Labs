`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2026 11:38:55 AM
// Design Name: 
// Module Name: project3
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


module project3(
    input wire clk,
    input wire [13:0] sw,
    output wire [3:0] an,
    output reg [6:0] seg,
    output wire dp

    );
    reg [9:0] dataout0;
    reg [9:0] dataout1;
    reg [9:0] dataout2;
    reg [9:0] dataout3;
    always @(posedge clk) begin
        if (sw[10]) dataout0 <=sw[9:0];
        if (sw[11]) dataout1 <=sw[9:0];
        if (sw[12]) dataout2 <=sw[9:0];
        if (sw[13]) dataout3 <=sw[9:0];
    end
    reg[16:0] counter = 17'd0;
    reg[1:0] active_anode = 2'd0;
    always @(posedge clk) begin 
        if (counter == 17'd99999) begin
            counter <= 0;
            active_anode <= active_anode + 1'b1;
        end else begin
            counter <= counter + 1'b1;
        end
    end
    assign an[0] = ~(active_anode == 2'd0);
    assign an[1] = ~(active_anode == 2'd1);
    assign an[2] = ~(active_anode == 2'd2);
    assign an[3] = ~(active_anode == 2'd3);
    reg [9:0] selected_digit;
    always @(*) begin
        if (active_anode == 2'd0) begin
            selected_digit = dataout0;
        end else if (active_anode == 2'd1) begin
            selected_digit = dataout1;
        end else if (active_anode == 2'd2) begin
            selected_digit = dataout2;
        end else if (active_anode == 2'd3) begin
            selected_digit = dataout3;
        end else begin
            selected_digit = 10'd0;     
       
        end
    end
    always @(*) begin
        if (selected_digit == 10'b1000000000) begin
            seg = 7'b0010000;
        end else if (selected_digit == 10'b0100000000) begin
            seg = 7'b0000000;
        end else if (selected_digit == 10'b0010000000) begin
            seg = 7'b1111000;
        end else if (selected_digit == 10'b0001000000) begin
            seg = 7'b0000010;
        end else if (selected_digit == 10'b0000100000) begin
            seg = 7'b0010010;
        end else if (selected_digit == 10'b0000010000) begin
            seg = 7'b0011001;
        end else if (selected_digit == 10'b0000001000) begin
            seg = 7'b0110000;
        end else if (selected_digit == 10'b0000000100) begin
            seg = 7'b0100100;
        end else if (selected_digit == 10'b0000000010) begin
            seg = 7'b1111001;
        end else if (selected_digit == 10'b0000000001) begin
            seg = 7'b1000000;
        end else begin
            seg = 7'b1111111;    
        end
    end
    assign dp =1'b1;
endmodule
