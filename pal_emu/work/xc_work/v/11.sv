// xc_work/v/11.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1r1w.v:30
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_ram_1r1w_xcm16(input  rst_n,input  clk,input  lvm,input  mlvm,input  mrdten,input  bimc_rst_n,input  bimc_isync,input  bimc_idat,output logic bimc_odat,output logic bimc_osync,output logic ro_uncorrectable_ecc_error,input  reb
,input  [7:0] ra ,output logic [82:0] dout ,input  web,input  [7:0] wa ,input  [82:0] din ,input  [82:0] bwe );
parameter integer WIDTH = 83;
parameter integer DEPTH = 168;
parameter integer BWEWIDTH = 83;
parameter integer SPECIALIZE = 1;
parameter integer IN_FLOP = 1;
parameter integer OUT_FLOP = 1;
parameter integer RD_LATENCY = 1;
parameter integer WRITETHROUGH = 0;
logic [82:0] ldout ;
logic [82:0] ldin ;
logic bimc_iclk;
logic bimc_irstn;
logic [82:0] mem [0:167];
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
wire  [0:82] _zy_simnet_dout_3_w$ ;
ixc_assign  #(83) _zz_strnp_7 (ldin,din);
ixc_assign  #(1) _zz_strnp_8 (bimc_iclk,clk);
ixc_assign  #(1) _zz_strnp_9 (bimc_irstn,bimc_rst_n);
assign  p_mode_disable_ecc_mem = 1'b0;
assign  se = 1'b0;
assign  rds = 1'b0;
assign  ecc_corrupt = 2'b0;
ixc_assign  #(1) _zz_strnp_10 (rst_rclk_n,rst_n);
ixc_assign  #(1) _zz_strnp_11 (rst_wclk_n,rst_n);
ixc_assign  #(1) _zz_strnp_12 (rclk,clk);
ixc_assign  #(1) _zz_strnp_13 (wclk,clk);
ixc_assign  #(83) _zz_strnp_14 (dout,ldout);
ixc_assign  #(1) _zz_strnp_15 (_zy_simnet_bimc_odat_0_w$,bimc_odat);
ixc_assign  #(1) _zz_strnp_16 (_zy_simnet_bimc_osync_1_w$,bimc_osync);
ixc_assign  #(1) _zz_strnp_17 (_zy_simnet_ro_uncorrectable_ecc_error_2_w$,ro_uncorrectable_ecc_error);
ixc_assign  #(83) _zz_strnp_18 (_zy_simnet_dout_3_w$,dout);
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "_1r1wramDxWb"
//pragma RTLNAME "_1r1wramDxWb" "_1r1wramDxWb"
if(1) begin: _1r1wramDxWb
 logic _web;
 logic [7:0] _wa ;
 logic [82:0] _din ;
 logic [82:0] _bwe ;
 logic [82:0] dout_i ;
 logic [82:0] din_i ;
 logic [82:0] mem [0:167];
 logic writethrough;
 logic [82:0] _dout ;
 logic [82:0] dout_r [0:0];
 const static integer _zyictd_sysfunc_11_L258_6 = $test$plusargs("debug_on");
// quickturn keep_net _zyictd_sysfunc_11_L258_6
  assign  din_i = ((mem[_wa] & ( ~_bwe )) | (_din & _bwe));
  assign  dout_i = (writethrough ? din_i : mem[ra]);
  ixc_assign  #(1) _zz_strnp_0 (bimc_odat,bimc_idat);
  ixc_assign  #(1) _zz_strnp_1 (bimc_osync,bimc_isync);
  assign  ro_uncorrectable_ecc_error = 1'b0;
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "_1r1wramDxWb.genblk1"
//pragma RTLNAME "genblk1" "genblk1"
 if(1) begin: genblk1
  logic web_r;
  logic [7:0] wa_r ;
  logic [82:0] din_r ;
  logic [82:0] bwe_r ;
    ixc_assign  #(1) _zz_strnp_2 (_web,web_r);
    ixc_assign  #(8) _zz_strnp_3 (_wa,wa_r);
    ixc_assign  #(83) _zz_strnp_4 (_din,din_r);
    ixc_assign  #(83) _zz_strnp_5 (_bwe,bwe_r);
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
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "_1r1wramDxWb.genblk2"
//pragma RTLNAME "genblk2" "genblk2"
 if(1) begin: genblk2
    assign  writethrough = 1'b0;
 end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "_1r1wramDxWb.genblk3"
//pragma RTLNAME "genblk3" "genblk3"
 if(1) begin: genblk3
  logic [82:0] dout_rr ;
    ixc_assign  #(83) _zz_strnp_6 (ldout,dout_rr);
  always_ff 
   @(posedge clk)
    begin
     dout_rr <= dout_r[0];
    end
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
 always 
  @(posedge clk)
   begin
    if (( !_web ))
     begin
      mem[_wa] <= din_i;
      if (_zyictd_sysfunc_11_L258_6)
       begin
        $xc_severity_msg(0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1r1w.v", 258);
        $display("%m");
        $display("DEBUG: %s", $sformatf("Writing %x to %d",din_i,_wa));
       end
     end
   end
end
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 _1r1wramDxWb  "
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 genblk1  "
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_2 "0 genblk2  "
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_3 "0 genblk3  "
endmodule

