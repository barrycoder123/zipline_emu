// xc_work/v/125n.sv
// /home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_int_handler.v:18
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
module cr_kme_int_handler(kme_interrupt,interrupt_status,suppress_key_tlvs,clk,rst_n,set_drbg_expired_int,set_txc_bp_int,set_gcm_tag_fail_int,set_key_tlv_miscmp_int,set_tlv_bip2_error_int,
cceip0_ism_mbe,cceip1_ism_mbe,cceip2_ism_mbe,cceip3_ism_mbe,cddip0_ism_mbe,cddip1_ism_mbe,cddip2_ism_mbe,cddip3_ism_mbe,kim_mbe,ckv_mbe,cceip_encrypt_mbe,cceip_validate_mbe,
cddip_decrypt_mbe,axi_mbe,bimc_interrupt,wr_stb,wr_data,reg_addr,o_interrupt_mask);
import cr_kmePKG::* ;
import cr_kme_regfilePKG::* ;
input  clk;
input  rst_n;
output reg kme_interrupt;
input  set_drbg_expired_int;
input  set_txc_bp_int;
input  set_gcm_tag_fail_int;
input  set_key_tlv_miscmp_int;
input  set_tlv_bip2_error_int;
input  cceip0_ism_mbe;
input  cceip1_ism_mbe;
input  cceip2_ism_mbe;
input  cceip3_ism_mbe;
input  cddip0_ism_mbe;
input  cddip1_ism_mbe;
input  cddip2_ism_mbe;
input  cddip3_ism_mbe;
input  kim_mbe;
input  ckv_mbe;
input  cceip_encrypt_mbe;
input  cceip_validate_mbe;
input  cddip_decrypt_mbe;
input  axi_mbe;
input  bimc_interrupt;
input  wr_stb;
input  [31:0] wr_data ;
input  [10:0] reg_addr ;
input  [4:0] o_interrupt_mask ;
output reg [4:0] interrupt_status ;
output  suppress_key_tlvs;
reg [4:0] set_triggers ;
integer i;
wire  _zy_simnet_kme_interrupt_0_w$;
wire  [0:4] _zy_simnet_interrupt_status_1_w$ ;
assign  suppress_key_tlvs = interrupt_status[1];
assign  _zy_simnet_kme_interrupt_0_w$ = kme_interrupt;
assign  _zy_simnet_interrupt_status_1_w$ = interrupt_status;
always 
 @(*)
  begin
   set_triggers[0] = set_drbg_expired_int;
   set_triggers[2] = set_txc_bp_int;
   set_triggers[3] = set_gcm_tag_fail_int;
   set_triggers[1] = ((((((((((((((cceip0_ism_mbe | cceip1_ism_mbe) | cceip2_ism_mbe) | cceip3_ism_mbe) | cddip0_ism_mbe) | cddip1_ism_mbe) | cddip2_ism_mbe) | cddip3_ism_mbe) | cceip_encrypt_mbe) | cceip_validate_mbe) | cddip_decrypt_mbe) | kim_mbe) | ckv_mbe) | axi_mbe) | set_tlv_bip2_error_int);
   set_triggers[4] = set_key_tlv_miscmp_int;
  end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     for (i = 0;(i < 5); i = (i + 1))
      begin
       interrupt_status <= 5'b0;
      end
    end
   else
    begin
     for (i = 0;(i < 5); i = (i + 1))
      begin
       if (((wr_stb & (reg_addr == 11'b01101111100)) & wr_data[i]))
        begin
         interrupt_status[i] <= 1'b0;
        end
       else
        if (set_triggers[i])
         begin
          interrupt_status[i] <= 1'b1;
         end
      end
    end
  end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     kme_interrupt <= 1'b0;
    end
   else
    begin
     kme_interrupt <= (( | (interrupt_status & o_interrupt_mask) ) | bimc_interrupt);
    end
  end
endmodule

