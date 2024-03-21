// xc_work/v/100n.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1rw.v:58
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_ram_1rw_xcm109(input  clk,input  rst_n,input  ovstb,input  lvm,input  mlvm,input  mrdten,input  bimc_rst_n,input  bimc_isync,input  bimc_idat,output logic bimc_odat,output logic bimc_osync,output logic ro_uncorrectable_ecc_error
,input  [95:0] bwe ,input  [95:0] din ,input  [8:0] add ,input  cs,input  we,output  [95:0] dout );
// exported object:  (scope) get_backdoor 
// exported object:  (scope) set_backdoor 
parameter integer WIDTH = 32'sb01100000;
parameter integer BWEWIDTH = 32'sb01100000;
parameter integer DEPTH = 512;
parameter integer SPECIALIZE = 1;
parameter integer LATCH = 0;
logic bimc_iclk;
logic bimc_irstn;
logic rst_clk_n;
logic p_mode_disable_ecc_mem;
logic byp;
logic se;
logic rds;
logic [1:0] ecc_corrupt ;
logic rst_rclk_n;
logic sew;
logic web;
logic ro_mem_ecc_error_ev;
logic ro_mem_ecc_corrected;
logic [8:0] ro_mem_ecc_error_addr ;
genvar ii;
wire  _zy_simnet_bimc_odat_0_w$;
wire  _zy_simnet_bimc_osync_1_w$;
wire  _zy_simnet_ro_uncorrectable_ecc_error_2_w$;
assign  bimc_iclk = clk;
assign  bimc_irstn = bimc_rst_n;
assign  rst_clk_n = rst_n;
assign  p_mode_disable_ecc_mem = 1'b0;
assign  byp = 1'b0;
assign  se = 1'b0;
assign  rds = 1'b0;
assign  ecc_corrupt = 2'b0;
assign  rst_rclk_n = rst_n;
assign  sew = 1'b0;
assign  web = ( !(cs && we) );
assign  _zy_simnet_bimc_odat_0_w$ = bimc_odat;
assign  _zy_simnet_bimc_osync_1_w$ = bimc_osync;
assign  _zy_simnet_ro_uncorrectable_ecc_error_2_w$ = ro_uncorrectable_ecc_error;
initial 
 if (( !$test$plusargs("info_off") ))
  begin
   $xc_severity_msg(0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1rw.v", 142);
   $display("%m");
   $display("%dx%db SPRAM", DEPTH, WIDTH);
  end
if(1) begin: g
 logic [8:0] add_r ;
 logic [95:0] dat_r ;
 logic [95:0] dout_i ;
 logic [95:0] din_i ;
 logic [511:0] we_clk ;
 logic [511:0] we_gate ;
 logic [95:0] mem [0:511];
  assign  dout_i = mem[add];
  assign  din_i = ((dout_i & ( ~bwe )) | (din & bwe));
  assign  dout = dat_r;
  assign  bimc_odat = bimc_idat;
  assign  bimc_osync = bimc_isync;
  assign  ro_uncorrectable_ecc_error = 1'b0;
  assign  we_clk = {512{clk}};
 if(1) begin: u_ram
  const static integer _zyictd_sysfunc_11_L263_2 = $test$plusargs("debug_on");

  task get_backdoor;
   input integer opcode;
   input logic [8:0] address ;
   output logic [95:0] data ;
   if ((opcode != 4))
    begin
     $xc_severity_msg(2, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1rw.v", 251);
     $display("%m");
     $display("Unexpected opcode %d", opcode);
    end
   else
    data = mem[address];
  endtask


  task set_backdoor;
   input integer opcode;
   input logic [8:0] address ;
   input logic [95:0] data ;
   if ((opcode != 6))
    begin
     $xc_severity_msg(2, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1rw.v", 251);
     $display("%m");
     $display("Unexpected opcode %d", opcode);
    end
   else
    mem[address] = data;
  endtask

  initial 
   if (( !$test$plusargs("info_off") ))
    begin
     $xc_severity_msg(0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1rw.v", 253);
     $display("%m");
     $display("Estimate %d latches", DEPTH);
    end
  initial 
   if (( !$test$plusargs("info_off") ))
    begin
     $xc_severity_msg(0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1rw.v", 255);
     $display("%m");
     $display("Estimate %d flops", (WIDTH + (DEPTH * WIDTH)));
    end
  always 
   @(posedge clk)
    if ((cs && we))
     begin
      mem[add] <= din_i;
      if (_zyictd_sysfunc_11_L263_2)
       begin
        $xc_severity_msg(0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1rw.v", 263);
        $display("%m");
        $display("DEBUG: %s", $sformatf("Writing %x to %d",din_i,add));
       end
     end
 end
 initial 
  begin
  end
 always_ff 
  @(posedge clk or negedge rst_n)
   if (( !rst_n ))
    dat_r <= 96'b0;
   else
    if (cs)
     dat_r <= (we ? din_i : dout_i);
end
endmodule
