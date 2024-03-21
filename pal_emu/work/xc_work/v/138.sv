// xc_work/v/138.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/IXCSF.sv:318
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
 (* upf_always_on = 1, _2_state_ = 1 *) module IXC_ISF;
// exported object:  (var) pvec (R)  
// exported object:  (var) pvec (R)  
parameter WIDTH = 2;
localparam PIOWIDTH = 2;
localparam EVMEMW = 512;
localparam NBLK = 1;
localparam NBLK1 = 0;
localparam MDEP = 1;
wire  fclk;
wire  [1:0] pvec ;
// quickturn external_ref pvec
bit [1:0] pvecEv ;
bit [63:0] pvecEvD ;
bit [1:0] _zyevPio ;
// quickturn keep_net _zyevPio
// quickturn no_hardmacro _zyevPio
// quickturn external_ref _zyevPio
wire  isfWait;
bit isfBusy;
bit isfBusyD;
bit [8:0] rptr ;
bit mark;
bit markN;
bit nd;
localparam ST_IDLE = 0;
localparam ST_ACTIVE = 1;
localparam ST_MRD = 2;
bit [1:0] state ;
assign  isfWait = (((nd | isfBusy) | isfBusyD) ? 1'b1 : 1'bz);
ixc_assign  #(2) _zz_strnp_0 (pvec[1:0],_zyevPio[1:0]);


   always@(posedge fclk) begin 
      case(state)
       ST_IDLE:
         begin
           if (nd) begin
             isfBusy <= 1;
             state <= ST_ACTIVE;
           end
           rptr <= 0;
         end
       ST_ACTIVE:
         begin
             isfBusy <= 1;
             state <= ST_MRD;
             rptr <= 0;
         end
       ST_MRD:
         if(rptr == NBLK1) begin
             isfBusy <= 0;
             state <= ST_IDLE;
             rptr <= MDEP-1;
         end else begin
             rptr <= rptr+1;
         end
      endcase
      mark <= markN;
      pvecEvD <= pvecEv;   
      isfBusyD <= isfBusy; 
   end

   
   Q_NOT_TOUCH _zzqnthw();
   
   //quickturn fast_clock fclk
   //quickturn external_ref _zyevPio
   //quickturn name_map isfWait xcva_top.xc_top.isfWait


// pragma CVASTRPROP MODULE IXC_ISF PROP_IXCOM_MOD TRUE
endmodule

