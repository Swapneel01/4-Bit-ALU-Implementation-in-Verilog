`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2018 10:24:23
// Design Name: 
// Module Name: alu
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


module alu(A,B,Select,Out,carry,clk);
input  clk;
input [7:0] A,B;
input [3:0] Select;
output [7:0] Out;
output carry;

reg [7:0] result;
wire [8:0] temp;
assign Out = result;
assign temp = {1'b0,A} + {1'b0,B};
assign carry= temp[8];

//module decoder_1(a,b,c,d,d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15);

always @(A,B,Select)
begin
   case(Select)
   4'b0000: result = A + B;  //addition 0
   4'b0001: result = A - B;  //subtraction 1
   4'b0010: result = A * B;  //multiplication //4'b0010: result = 2 
   4'b0011: result = A / B;  //division 3
   4'b0100: result = A & B;  //bitwise and 4
   4'b0101: result = A | B;  //bitwise or 5
   4'b0110: result = A ^ B;  //bitwise xor 6
   4'b0111: result = ~(A & B); //bitwise nand 7
   4'b1000: result = ~(A | B); //bitwise nor 8
   4'b1001: result = ~(A ^ B);  //bitwise xnor 9
   4'b1010: result = A<<1;      //shift left 10
   4'b1011: result = A>>1;      //shift right 11
   4'b1100: result = (A==B)?8'd1:8'd0; //equal comparison 12
   4'b1101: result = (A>B)?8'd1:8'd0; //greater than comparison 13
   4'b1110: result = (A<B)?8'd1:8'd0; //less than comparison 14
   4'b1111: result = !A; //Not A 15
   default: result = A + B;
   endcase
end
endmodule
