// xc_work/v/139n.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/IXCSF.sv:447
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
 (* upf_always_on = 1, _2_state_ = 1 *) module IXC_OSF1;
// exported object:  (var) pvecEv (R)  
parameter WIDTH = 20;
localparam NMB = 1;
localparam MBSIZE = 1984;
wire  fclk;
bit [19:0] pvecEv ;
wire  osfTbc;
wire  dummyin;
wire  dummyout;
wire  osfTbcB;
bit [0:0] _zyMBEv ;
wire  osfTbcB_x$tbc;
pulldown (osfTbc);
initial begin
 #(1'b0)
  forever
   @(posedge osfTbcB)
    if (!(xc_top.hwOutInit && 1'b1))
     begin
      xc_top.xcSchPulseQ;
      @(xc_top.pulseQEvent) ;
      OSF1_flushAll;
     end
end

import "DPI-C"  context function void xc_OSF1_Decoder ();
import "DPI-C" function int xc_OSF1_TbcEvent (output int ltid);

function void OSF1_flushAll;
 int gpid;
 int ltid;
// start ixc_t("ixc_svtb") - 485

     xc_OSF1_Decoder;
     gpid = xc_OSF1_TbcEvent(ltid);
     while(gpid >= 0) begin
       OSF_flush(gpid, ltid); 
       gpid = xc_OSF1_TbcEvent(ltid);
     end
     
     xcvtf_resetPvecEv();

// end -ixc_t
 begin
 end
endfunction

initial 
 begin
  begin
  end
  $import_rtl_signals;
 end

   assign osfTbcB = osfTbc;                                                                      


   
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
    

    IXC_OSF_MB #(20) OMB_0 (pvecEv[19:0], _zyMBEv[0]);
endmodule

