// xc_work/v/1n.sv
// /home/ibarry/Project-Zipline-master/dv/KME/run/tb_top.sv:9
// NOTE: This file corresponds to a module in the Software/TB partition.
`timescale 1ns/1ns
module tb_top;
// external : kme_tb_dut.tb_task (resolved )  (task)  
kme_tb kme_tb_dut(); 
initial 
 begin
  kme_tb_dut.tb_task;
 end
endmodule

