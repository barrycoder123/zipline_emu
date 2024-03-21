// xc_work/v/35n.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1r1w.v:30
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_ram_1r1w_xcm14(input  rst_n,input  clk,input  lvm,input  mlvm,input  mrdten,input  bimc_rst_n,input  bimc_isync,input  bimc_idat,output logic bimc_odat,output logic bimc_osync,output logic ro_uncorrectable_ecc_error,input  reb
,input  [10:0] ra ,output logic [70:0] dout ,input  web,input  [10:0] wa ,input  [70:0] din ,input  [70:0] bwe );
parameter integer WIDTH = 71;
parameter integer DEPTH = 2048;
parameter integer BWEWIDTH = 71;
parameter integer SPECIALIZE = 1;
parameter integer IN_FLOP = 1;
parameter integer OUT_FLOP = 1;
parameter integer RD_LATENCY = 1;
parameter integer WRITETHROUGH = 0;
logic [70:0] ldout ;
logic [70:0] ldin ;
logic bimc_iclk;
logic bimc_irstn;
logic [70:0] mem [0:2047];
logic p_mode_disable_ecc_mem;
logic se;
logic rds;
logic [1:0] ecc_corrupt ;
logic rst_rclk_n;
logic rst_wclk_n;
logic rclk;
logic wclk;
genvar ii;
wire  _zy_simnet_bimc_odat_0_w$;
wire  _zy_simnet_bimc_osync_1_w$;
wire  _zy_simnet_ro_uncorrectable_ecc_error_2_w$;
wire  [0:70] _zy_simnet_dout_3_w$ ;
assign  ldin = din;
assign  bimc_iclk = clk;
assign  bimc_irstn = bimc_rst_n;
assign  p_mode_disable_ecc_mem = 1'b0;
assign  se = 1'b0;
assign  rds = 1'b0;
assign  ecc_corrupt = 2'b0;
assign  rst_rclk_n = rst_n;
assign  rst_wclk_n = rst_n;
assign  rclk = clk;
assign  wclk = clk;
assign  dout = ldout;
assign  _zy_simnet_bimc_odat_0_w$ = bimc_odat;
assign  _zy_simnet_bimc_osync_1_w$ = bimc_osync;
assign  _zy_simnet_ro_uncorrectable_ecc_error_2_w$ = ro_uncorrectable_ecc_error;
assign  _zy_simnet_dout_3_w$ = dout;
initial 
 if (( !$test$plusargs("info_off") ))
  begin
   $xc_severity_msg(0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1r1w.v", 125);
   $display("%m");
   $display("%dx%db 1R1WRAM", DEPTH, WIDTH);
  end
if(1) begin: _1r1wramDxWb
 logic _web;
 logic [10:0] _wa ;
 logic [70:0] _din ;
 logic [70:0] _bwe ;
 logic [70:0] dout_i ;
 logic [70:0] din_i ;
 logic [70:0] mem [0:2047];
 logic writethrough;
 logic [70:0] _dout ;
 logic [70:0] dout_r [0:0];
 const static integer _zyictd_sysfunc_11_L258_1 = $test$plusargs("debug_on");
  assign  din_i = ((mem[_wa] & ( ~_bwe )) | (_din & _bwe));
  assign  dout_i = (writethrough ? din_i : mem[ra]);
  assign  bimc_odat = bimc_idat;
  assign  bimc_osync = bimc_isync;
  assign  ro_uncorrectable_ecc_error = 1'b0;

 task get_backdoor;
  input integer opcode;
  input logic [10:0] address ;
  output logic [70:0] data ;
  if ((opcode != 4))
   begin
    $xc_severity_msg(2, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1r1w.v", 246);
    $display("%m");
    $display("Unexpected opcode %d", opcode);
   end
  else
   data = mem[address];
 endtask


 task set_backdoor;
  input integer opcode;
  input logic [10:0] address ;
  input logic [70:0] data ;
  if ((opcode != 6))
   begin
    $xc_severity_msg(2, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1r1w.v", 246);
    $display("%m");
    $display("Unexpected opcode %d", opcode);
   end
  else
   mem[address] = data;
 endtask

 if(1) begin: genblk1
  logic web_r;
  logic [10:0] wa_r ;
  logic [70:0] din_r ;
  logic [70:0] bwe_r ;
    assign  _web = web_r;
    assign  _wa = wa_r;
    assign  _din = din_r;
    assign  _bwe = bwe_r;
  always_ff 
   @(posedge clk or negedge rst_n)
    begin
     if (( !rst_n ))
      begin
       web_r <= 1'b0;
      end
     else
      begin
       web_r <= web;
      end
    end
  always_ff 
   @(posedge clk)
    begin
     din_r <= ldin;
     bwe_r <= bwe;
     wa_r <= wa;
    end
 end
 if(1) begin: genblk2
    assign  writethrough = 1'b0;
 end
 if(1) begin: genblk3
  logic [70:0] dout_rr ;
    assign  ldout = dout_rr;
  always_ff 
   @(posedge clk)
    begin
     dout_rr <= dout_r[0];
    end
 end
 initial 
  begin
  end
 always_ff 
  @(posedge clk)
   begin
    if (( !reb ))
     dout_r[0] <= dout_i;
    begin:unmblk0
     int i;
     for (i = 1;(i < 1); i = (i + 1))
      dout_r[i] <= dout_r[(i - 1)];
    end
   end
 initial 
  if (( !$test$plusargs("info_off") ))
   begin
    $xc_severity_msg(0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1r1w.v", 248);
    $display("%m");
    $display("Estimate %d latches", DEPTH);
   end
 initial 
  if (( !$test$plusargs("info_off") ))
   begin
    $xc_severity_msg(0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1r1w.v", 250);
    $display("%m");
    $display("Estimate %d flops", (WIDTH + (DEPTH * WIDTH)));
   end
 always 
  @(posedge clk)
   begin
    if (( !_web ))
     begin
      mem[_wa] <= din_i;
      if (_zyictd_sysfunc_11_L258_1)
       begin
        $xc_severity_msg(0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1r1w.v", 258);
        $display("%m");
        $display("DEBUG: %s", $sformatf("Writing %x to %d",din_i,_wa));
       end
     end
   end
end
endmodule

