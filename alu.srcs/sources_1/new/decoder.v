`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2018 10:45:58
// Design Name: 
// Module Name: decoder
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


module decoder_1(a,b,c,d,d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15);
input a,b,c,d;
output reg d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15;
always @(a,b,c,d)
begin
d0=0;d1=0;d2=0;d3=0;d4=0;d5=0;d6=0;d7=0;d8=0;d9=0;d10=0;d11=0;d12=0;d13=0;d14=0;d15=0;
case({a,b,c,d})
4'b0000: d0=1;
4'b0001: d1=1;
4'b0010: d2=1;
4'b0011: d3=1;
4'b0100: d4=1;
4'b0101: d5=1;
4'b0110: d6=1;
4'b0111: d7=1;
4'b1000: d8=1;
4'b1001: d9=1;
4'b1010: d10=1;
4'b1011: d11=1;
4'b1100: d12=1;
4'b1101: d13=1;
4'b1110: d14=1;
4'b1111: d15=1;

default: begin
d0=0;d1=0;d2=0;d3=0;d4=0;d5=0;d6=0;d7=0;d8=0;d9=0;d10=0;d11=0;d12=0;d13=0;d14=0;d15=0;
end
endcase
end
 endmodule
