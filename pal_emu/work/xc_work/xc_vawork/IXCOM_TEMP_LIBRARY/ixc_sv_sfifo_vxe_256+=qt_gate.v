
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module IXC_SV_SFIFO_VXE_256 ( rdCnt, scgGFreq);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
`_2_ output [63:0] rdCnt;
input scgGFreq;
wire [0:63] _zy_simnet_rdCnt_0_w$;
`_2_ wire [21:0] tId;
`_2_ wire [511:0] iData;
`_2_ wire [16:0] wptr;
`_2_ wire [16:0] wptrN;
`_2_ wire [16:0] xptr;
`_2_ wire [16:0] xptrN;
`_2_ wire [255:0] ififoXdata;
`_2_ wire [255:0] ififoXdataFinal;
`_2_ wire [16:0] rptr;
`_2_ wire [16:0] rptrN;
`_2_ wire [14:0] ififoRaddr0;
`_2_ wire [14:0] ififoRaddr1;
`_2_ wire [14:0] ififoRaddr2;
`_2_ wire [767:0] ififoRdata;
`_2_ wire [17:0] rdDelta;
`_2_ wire [3:0] markBits;
`_2_ wire [3:0] markBitsN;
`_2_ wire [3:0] newMarkBits;
`_2_ wire [3:0] newMarkBitsD;
`_2_ wire [3:0] dataBits;
`_2_ wire [23:0] offset;
`_2_ wire [23:0] offsetN;
`_2_ wire moveForward;
`_2_ wire moveForwardN;
`_2_ wire active;
`_2_ wire activeD;
`_2_ wire [63:0] xval;
`_2_ wire nps;
`_2_ wire eob;
`_2_ wire [31:0] i;
`_2_ wire [63:0] head;
`_2_ wire [63:0] xhead;
`_2_ wire [63:0] vhead;
`_2_ wire [15:0] pktl;
`_2_ wire [15:0] pktlN;
`_2_ wire [9:0] vlen;
`_2_ wire [9:0] vlenN;
`_2_ wire rstDone;
`_2_ wire rstDoneD;
`_2_ wire rstDoneD2;
`_2_ wire [11:0] odly;
`_2_ wire [11:0] odlyN;
`_2_ wire vmode;
`_2_ wire [575:0] tmpData;
wire oSt;
`_2_ wire [255:0] oMark;
`_2_ wire oDataEn;
`_2_ wire [3:0] oDataLen;
`_2_ wire [511:0] oData;
`_2_ wire [31:0] numRsts;
`_2_ wire [767:0] ofifoData;
`_2_ wire [3:0] oFill;
`_2_ wire [14:0] ofifoAddr0;
`_2_ wire [15:0] ofifoAddr1;
`_2_ wire [15:0] ofifoAddr2;
`_2_ wire [14:0] ofifoWptr;
`_2_ wire [7:0] shiftCount;
`_2_ wire [767:0] shiftedOData;
Q_NOT_TOUCH _zzqnthw ( .sig());
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
