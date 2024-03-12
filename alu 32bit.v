///eman hussein ............////
///*************************************************//

`timescale 1ns / 1ps
module ALU_32bit(
    input [31:0] A,
    input [31:0] B,
    input en,
    input [3:0]opcode,
    output reg [32:0] ALU_res
    );
    always @(*)begin
    if(en==1)
    begin
    case(opcode)
    4'b0000:ALU_res=A+B;
    4'b0001:ALU_res=A-B;
   // 4'b0010:ALU_res=A*B;
    4'b0011:ALU_res=A/B;
    4'b0100:ALU_res=A<<1;
    4'b0101:ALU_res=A>>1;
    4'b0110:ALU_res={A[30:0],A[31]};
    4'b0111:ALU_res={A[0],A[31:0]};
    4'b1000:ALU_res=A&B;
    4'b1001:ALU_res=A|B;
    4'b1010:ALU_res=A^B;
    4'b1011:ALU_res=~(A|B);
    4'b1100:ALU_res=~(A&B);
    4'b1101:ALU_res=~(A^B);
    4'b1110:ALU_res=(A>B)?32'd1:32'd0;
    4'b1111:ALU_res=(A==B)?32'd1:32'd0;
  default:ALU_res=32'bx;
      ///***************************************************eman_hussein******************//
    endcase
    end
    else
    ALU_res=32'bZ;
    end
endmodule
