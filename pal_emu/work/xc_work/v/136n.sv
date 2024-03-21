// xc_work/v/136n.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/IXCSF.sv:197
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
 (* upf_always_on = 1, _2_state_ = 1 *) module IXC_OSF;
// exported object:  (var) pvecEv (R)  
// exported object:  (var) pvecEv (R)  
parameter WIDTH = 2;
localparam PIOWIDTH = 2;
localparam NMB = 0;
localparam MBSIZE = 1984;
wire  fclk;
bit [1:0] pvecEv ;
wire  [1:0] _zyevPio ;
wire  _zyPOEv;
wire  osfTbc;
wire  dummyin;
wire  dummyout;
wire  osfTbc_x$tbc;
wire  [1:0] _zy__zyevPio_x$ed_1 ;
assign  _zyPOEv = ( | _zy__zyevPio_x$ed_1 );
pulldown (osfTbc);
initial begin
 #(1'b0)
  forever
   @(posedge osfTbc)
    if (!(xc_top.hwOutInit && 1'b1))
     begin
      xc_top.xcSchPulseQ;
      @(xc_top.pulseQEvent) ;
      OSF_flushAll;
     end
end

assign  _zyevPio = pvecEv;
axPIBModvec #(2,1 )_zy_pimod__2(_zy__zyevPio_x$ed_1,_zyevPio); 
import "DPI-C"  context function void xc_OSF_Decoder ();
import "DPI-C" function int xc_OSF_TbcEvent (output int ltid);

function void OSF_flushAll;
 int gpid;
 int ltid;
// start ixc_t("ixc_svtb") - 254

     xc_OSF_Decoder;
     gpid = xc_OSF_TbcEvent(ltid);
     while(gpid >= 0) begin
       OSF_flush(gpid, ltid); 
       gpid = xc_OSF_TbcEvent(ltid);
     end
     
     xcvtf_resetPvecEv(); 

// end -ixc_t
 begin
 end
endfunction

initial 
 $import_rtl_signals;
initial 
 $import_rtl_signals;

   event rstPvecEv;
   function void xcvtf_resetPvecEv();
     ->rstPvecEv;
   endfunction

   class EventClass;
     event ev;
     int ltid;
   endclass
   
   EventClass events[WIDTH-1:0];

   export "DPI-C" function OSF_create_wait_event;
   function void OSF_create_wait_event(input int gpid);
     events[gpid] = new;
   endfunction

   export "DPI-C" task OSF_wait;
   task automatic OSF_wait(input int gpid, output int ltid);
     @events[gpid].ev;
     ltid = events[gpid].ltid;
   endtask

   function void OSF_flush(input int gpid, input int ltid);
     events[gpid].ltid = ltid;
     ->events[gpid].ev;
   endfunction
    

endmodule

