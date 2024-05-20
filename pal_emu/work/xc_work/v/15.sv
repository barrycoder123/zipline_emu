// xc_work/v/15.sv
// /home/ibarry/Project-Zipline-master/rtl/AesSecI/AesSecIStub.v:11
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
module AesSecIStub(output  [127:0] AesCiphOutR ,output  AesCiphOutVldR,output  KeyInitStall,output  CiphInStall,input  Aes128,input  Aes192,input  Aes256,input  [127:0] CiphIn ,input  CiphInVldR,input  CiphInLastR,input  EncryptEn,input  [255:0] KeyIn 
,input  KeyInitVldR,input  AesCiphOutStall,input  clk,input  rst_n);
assign  AesCiphOutR = 128'b0;
assign  AesCiphOutVldR = (AesCiphOutStall ? 1'b0 : 1'b1);
assign  KeyInitStall = 1'b0;
assign  CiphInStall = 1'b0;
endmodule

