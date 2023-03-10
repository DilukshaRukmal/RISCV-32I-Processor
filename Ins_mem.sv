`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  Team Zigma
// Engineer: Nuwan Udara
// 
// Create Date: 04.02.2023 17:27:50
// Design Name: INSTRUCTION MEM
// Module Name: Ins_mem
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Take the PC and send the instruction from memmory to the Instruction Decoder, InDecode module.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Ins_Mem (
    //input clk,
    input [4:0] addr,
    output reg [31:0] instruction
    //output wire [31:0] instruction
);
  reg [31:0] memory[31:0];  //chnage as you like later.

  initial begin
    memory[0]  = 32'b00000000001100000000000010110011; //add x1, x0, x3
    memory[1]  = 32'b00000001010110100000100100110011; //add x18, x20, x21
    memory[2]  = 32'b00000001011110110000100010110011; //add x17, x22, x23
    memory[3]  = 32'b01000001010010101000110010110011; //add x16, x18, x5
    memory[4]  = 32'b00000001010100000010001100100011; //sw x16, 6(x0)
    memory[5]  = 32'b01000001010010101000110010110011; //sub x25, x21, x20
    memory[6]  = 32'b01000001010010101000110010110011; //lw x15, 6(x0)
    memory[7]  = 32'd8;
    memory[8]  = 32'h0009;
    memory[9]  = 32'h000a;
    memory[10] = 32'h000b;
    memory[11] = 32'h000c;
    memory[12] = 32'h000d;
    memory[13] = 32'h000e;
    memory[14] = 32'h000f;
    memory[15] = 32'h10;
    memory[16] = 32'h0011;
    memory[17] = 32'h0012;
    memory[18] = 32'h0013;
    memory[19] = 32'h0014;
    memory[20] = 32'h0015;
    memory[21] = 32'h0016;
    memory[22] = 32'h0017;
    memory[23] = 32'h0018;
    memory[24] = 32'h0019;
    memory[25] = 32'h001a;
    memory[26] = 32'h001b;
    memory[27] = 32'h001c;
    memory[28] = 32'h001d;
    memory[29] = 32'h0013;
    memory[30] = 32'h001f;
    memory[31] = 32'h20;
  end

  // Retriving the instruction code based on the PC count
  //assign instruction = memory[addr[3:0]];
  always @(*) 
  begin
    instruction = memory[addr[4:0]];
  end

endmodule