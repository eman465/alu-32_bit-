`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
eman_hussein 
//////////////////////////////////////////////////////////////////////////////////


module ALU_32bit_tb();
 reg [31:0] A;
 reg [31:0] B;
    reg en;
    reg [3:0]opcode;
    wire [32:0] ALU_res;
    ALU_32bit dut(.A(A),.B(B),.en(en),.opcode(opcode),.ALU_res(ALU_res));
    initial 
    begin
      en =1'b0;
      #10 en = 1'b1;
      A = 32'd4; B = 32'd2;
      opcode= 4'b0000;
      #10 opcode= 4'b0001;
      #10 opcode= 4'b0011;
      #10 opcode= 4'b0100;
      #10 opcode= 4'b0101;
      #10 opcode= 4'b0110;
      #10 opcode= 4'b0111;
      #10 opcode= 4'b1000;
      #10 opcode= 4'b1001;
      #10 opcode= 4'b1010;
      #10 opcode= 4'b1011;
      #10 opcode= 4'b1100;
      #10 opcode= 4'b1101;
      #10 opcode= 4'b1110;
      #10 en=1'b0;
      #10 en=1'b1;
      #10 opcode= 4'b1111;
    end
endmodule
