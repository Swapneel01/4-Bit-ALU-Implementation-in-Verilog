`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2018 10:26:28
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


module sim_alu();
reg [7:0] A,B;
reg [3:0] Select;
wire [7:0] Out;
wire carry;
//integer k;
reg clk;


alu dut(A,B,Select,Out,carry,clk);
always begin
//A= 8'b00000000;
//B= 8'b00000000;
//Select= 4'b0000;
clk=1;

A= 8'b00001000;
B= 8'b00000010;
Select= 4'b0000;
#10; 
end


always #5 clk=!clk;

//for(k=0;k<=15;k=k+1)
//begin
//Select = Select+ 4'b0001;
//#10;
//end

endmodule
