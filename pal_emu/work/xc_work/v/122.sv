// xc_work/v/122.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1rw.v:58
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_ram_1rw_xcm108(input  clk,input  rst_n,input  ovstb,input  lvm,input  mlvm,input  mrdten,input  bimc_rst_n,input  bimc_isync,input  bimc_idat,output logic bimc_odat,output logic bimc_osync,output logic ro_uncorrectable_ecc_error
,input  [37:0] bwe ,input  [37:0] din ,input  [13:0] add ,input  cs,input  we,output  [37:0] dout );
parameter integer WIDTH = 38;
parameter integer BWEWIDTH = 38;
parameter integer DEPTH = 16384;
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
logic [13:0] ro_mem_ecc_error_addr ;
genvar ii;
wire  _zy_simnet_bimc_odat_0_w$;
wire  _zy_simnet_bimc_osync_1_w$;
wire  _zy_simnet_ro_uncorrectable_ecc_error_2_w$;
ixc_assign  #(1) _zz_strnp_4 (bimc_iclk,clk);
ixc_assign  #(1) _zz_strnp_5 (bimc_irstn,bimc_rst_n);
ixc_assign  #(1) _zz_strnp_6 (rst_clk_n,rst_n);
assign  p_mode_disable_ecc_mem = 1'b0;
assign  byp = 1'b0;
assign  se = 1'b0;
assign  rds = 1'b0;
assign  ecc_corrupt = 2'b0;
ixc_assign  #(1) _zz_strnp_7 (rst_rclk_n,rst_n);
assign  sew = 1'b0;
assign  web = ( !(cs && we) );
ixc_assign  #(1) _zz_strnp_8 (_zy_simnet_bimc_odat_0_w$,bimc_odat);
ixc_assign  #(1) _zz_strnp_9 (_zy_simnet_bimc_osync_1_w$,bimc_osync);
ixc_assign  #(1) _zz_strnp_10 (_zy_simnet_ro_uncorrectable_ecc_error_2_w$,ro_uncorrectable_ecc_error);
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "g"
//pragma RTLNAME "g" "g"
if(1) begin: g
 logic [13:0] add_r ;
 logic [37:0] dat_r ;
 logic [37:0] dout_i ;
 logic [37:0] din_i ;
 logic [16383:0] we_clk ;
 logic [16383:0] we_gate ;
 logic [37:0] mem [0:16383];
  ixc_assign  #(38) _zz_strnp_0 (dout_i,mem[add]);
  assign  din_i = ((dout_i & ( ~bwe )) | (din & bwe));
  ixc_assign  #(38) _zz_strnp_1 (dout,dat_r);
  ixc_assign  #(1) _zz_strnp_2 (bimc_odat,bimc_idat);
  ixc_assign  #(1) _zz_strnp_3 (bimc_osync,bimc_isync);
  assign  ro_uncorrectable_ecc_error = 1'b0;
  assign  we_clk = {16384{clk}};
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "g.u_ram"
//pragma RTLNAME "u_ram" "u_ram"
 if(1) begin: u_ram
  const static integer _zyictd_sysfunc_11_L263_10 = $test$plusargs("debug_on");
// quickturn keep_net _zyictd_sysfunc_11_L263_10
  always 
   @(posedge clk)
    if ((cs && we))
     begin
      mem[add] <= din_i;
      if (_zyictd_sysfunc_11_L263_10)
       begin
        $xc_severity_msg(0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1rw.v", 263);
        $display("%m");
        $display("DEBUG: %s", $sformatf("Writing %x to %d",din_i,add));
       end
     end
 end
 always_ff 
  @(posedge clk or negedge rst_n)
   if (( !rst_n ))
    dat_r <= 38'b0;
   else
    if (cs)
     dat_r <= (we ? din_i : dout_i);
end
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 g  "
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 u_ram  "
endmodule

