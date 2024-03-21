// xc_work/v/137.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/IXCSF.sv:3
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
 (* upf_always_on = 1, _2_state_ = 1 *) module IXC_OSF_MB(pvecEv,dirty);
input  pvecEv;
output  dirty;

   parameter      WIDTH = 1984;

   wire     [WIDTH-1:0]  pvecEv;
   wire                 dirty;
   
   localparam    EVMEMW = 64;
   localparam    NBLK  = ((WIDTH+(EVMEMW-1))/(EVMEMW));
   localparam    NBLK1    = (NBLK == 0) ? 0 : (NBLK-1);
   localparam    MDEP     = (NBLK > 0) ? (NBLK+1) : 1; // 1 word for encoding dirty words
   localparam    PTRWID  = ($clog2(MDEP) > 0) ? ($clog2(MDEP)) : 1; 

   
   bit [EVMEMW-1:0]       _zyevMem[0:(MDEP-1)];
   //quickturn use_hardmacro_pack _zyevMem
   
   wire [NBLK1:0]         wsel;

   assign dirty =  (|(wsel));

   genvar idx;
   generate
     for(idx = 0; idx < NBLK1; idx = idx+1) begin
      assign wsel[idx] =  |(pvecEv[idx*EVMEMW +: EVMEMW]);
     end
     assign wsel[NBLK1] = |(pvecEv[(WIDTH-1) : NBLK1*EVMEMW]);
   endgenerate

   always@(*) begin
     _zyevMem[0] = wsel;
   end
   
   always@(*) begin
     for(int i = 0; i < NBLK1; i = i+1) begin
       if (wsel[i]) _zyevMem[i+1] = (pvecEv[i*EVMEMW +: EVMEMW]);
     end
     if (wsel[NBLK1]) _zyevMem[NBLK1+1] =  (pvecEv[(WIDTH-1) : (NBLK1*EVMEMW)]);
   end

   
   Q_NOT_TOUCH _zzqnthw();


// pragma CVASTRPROP MODULE IXC_OSF_MB PROP_IXCOM_MOD TRUE
endmodule

