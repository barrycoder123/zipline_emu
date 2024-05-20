// xc_work/v/6n.sv
// /home/ibarry/Project-Zipline-master/rtl/common/cr_dual_rank_synchronizer.v:8
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module cr_dual_rank_synchronizer(clk,rst_n,din,dout);
parameter WIDTH = 1;
parameter RESET_VAL = 0;
input  clk;
input  rst_n;
input  din;
output  dout;
assign  dout = rst_n;
endmodule

