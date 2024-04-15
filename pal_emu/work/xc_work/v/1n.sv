// xc_work/v/1n.sv
// /home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv:12
// NOTE: This file corresponds to a module in the Software/TB partition.
`timescale 1ns/1ns
module kme_tb;
// external : kme_tb.kme_dut.clock_1 (resolved )  (var)  :(R)  
// external : apb_xactor.read (resolved )  (task)  
// external : apb_xactor.write (resolved )  (task)  
string testname;
string seed;
reg [31:0] initial_seed ;
int error_cntr;
string fsdbFilename;
logic clk;
logic rst_n;
logic kme_ib_tready;
logic [0:0] kme_ib_tid ;
logic [63:0] kme_ib_tdata ;
logic [7:0] kme_ib_tstrb ;
logic [7:0] kme_ib_tuser ;
logic kme_ib_tvalid;
logic kme_ib_tlast;
logic kme_ob_tready;
logic [0:0] kme_ob_tid ;
logic [63:0] kme_ob_tdata ;
logic [7:0] kme_ob_tstrb ;
logic [7:0] kme_ob_tuser ;
logic kme_ob_tvalid;
logic kme_ob_tlast;
logic [19:0] kme_apb_paddr ;
logic kme_apb_psel;
logic kme_apb_penable;
logic kme_apb_pwrite;
logic [31:0] kme_apb_pwdata ;
logic [31:0] kme_apb_prdata ;
logic kme_apb_pready;
logic kme_apb_pslverr;
integer _zz_56_221_0;
integer _zz_56_227_1;
wire  _zy_simnet_kme_apb_psel_0_w$;
wire  _zy_simnet_kme_apb_penable_1_w$;
wire  [0:19] _zy_simnet_kme_apb_paddr_2_w$ ;
wire  [0:31] _zy_simnet_kme_apb_pwdata_3_w$ ;
wire  _zy_simnet_kme_apb_pwrite_4_w$;
wire  _zy_simnet_clk_5_w$;
wire  _zy_simnet_rst_n_6_w$;
wire  [0:31] _zy_simnet_kme_apb_prdata_7_w$ ;
wire  _zy_simnet_kme_apb_pready_8_w$;
wire  _zy_simnet_kme_apb_pslverr_9_w$;
wire  _zy_simnet_dio_10;
wire  _zy_simnet_kme_ib_tready_11_w$;
wire  _zy_simnet_kme_ob_tvalid_12_w$;
wire  _zy_simnet_kme_ob_tlast_13_w$;
wire  _zy_simnet_kme_ob_tid_14_w$;
wire  [0:7] _zy_simnet_kme_ob_tstrb_15_w$ ;
wire  [0:7] _zy_simnet_kme_ob_tuser_16_w$ ;
wire  [0:63] _zy_simnet_kme_ob_tdata_17_w$ ;
wire  [0:31] _zy_simnet_kme_apb_prdata_18_w$ ;
wire  _zy_simnet_kme_apb_pready_19_w$;
wire  _zy_simnet_kme_apb_pslverr_20_w$;
wire  _zy_simnet_dio_21;
wire  _zy_simnet_clk_22_w$;
wire  _zy_simnet_rst_n_23_w$;
wire  _zy_simnet_cio_24;
wire  _zy_simnet_cio_25;
wire  _zy_simnet_cio_26;
wire  _zy_simnet_cio_27;
wire  _zy_simnet_cio_28;
wire  _zy_simnet_cio_29;
wire  _zy_simnet_cio_30;
wire  _zy_simnet_cio_31;
wire  _zy_simnet_kme_ib_tvalid_32_w$;
wire  _zy_simnet_kme_ib_tlast_33_w$;
wire  _zy_simnet_kme_ib_tid_34_w$;
wire  [0:7] _zy_simnet_kme_ib_tstrb_35_w$ ;
wire  [0:7] _zy_simnet_kme_ib_tuser_36_w$ ;
wire  [0:63] _zy_simnet_kme_ib_tdata_37_w$ ;
wire  _zy_simnet_kme_ob_tready_38_w$;
wire  [0:15] _zy_simnet_kme_apb_paddr_39_w$ ;
wire  _zy_simnet_kme_apb_psel_40_w$;
wire  _zy_simnet_kme_apb_penable_41_w$;
wire  _zy_simnet_kme_apb_pwrite_42_w$;
wire  [0:31] _zy_simnet_kme_apb_pwdata_43_w$ ;
assign  clk = kme_tb.kme_dut.clock_1;
assign  kme_apb_psel = _zy_simnet_kme_apb_psel_0_w$;
assign  kme_apb_penable = _zy_simnet_kme_apb_penable_1_w$;
assign  kme_apb_paddr = _zy_simnet_kme_apb_paddr_2_w$;
assign  kme_apb_pwdata = _zy_simnet_kme_apb_pwdata_3_w$;
assign  kme_apb_pwrite = _zy_simnet_kme_apb_pwrite_4_w$;
assign  _zy_simnet_clk_5_w$ = clk;
assign  _zy_simnet_rst_n_6_w$ = rst_n;
assign  _zy_simnet_kme_apb_prdata_7_w$ = kme_apb_prdata;
assign  _zy_simnet_kme_apb_pready_8_w$ = kme_apb_pready;
assign  _zy_simnet_kme_apb_pslverr_9_w$ = kme_apb_pslverr;
assign  kme_ib_tready = _zy_simnet_kme_ib_tready_11_w$;
assign  kme_ob_tvalid = _zy_simnet_kme_ob_tvalid_12_w$;
assign  kme_ob_tlast = _zy_simnet_kme_ob_tlast_13_w$;
assign  kme_ob_tid = _zy_simnet_kme_ob_tid_14_w$;
assign  kme_ob_tstrb = _zy_simnet_kme_ob_tstrb_15_w$;
assign  kme_ob_tuser = _zy_simnet_kme_ob_tuser_16_w$;
assign  kme_ob_tdata = _zy_simnet_kme_ob_tdata_17_w$;
assign  kme_apb_prdata = _zy_simnet_kme_apb_prdata_18_w$;
assign  kme_apb_pready = _zy_simnet_kme_apb_pready_19_w$;
assign  kme_apb_pslverr = _zy_simnet_kme_apb_pslverr_20_w$;
assign  _zy_simnet_clk_22_w$ = clk;
assign  _zy_simnet_rst_n_23_w$ = rst_n;
assign  _zy_simnet_cio_24 = 1'b0;
assign  _zy_simnet_cio_25 = 1'b0;
assign  _zy_simnet_cio_26 = 1'b0;
assign  _zy_simnet_cio_27 = 1'b1;
assign  _zy_simnet_cio_28 = 1'b0;
assign  _zy_simnet_cio_29 = 1'b0;
assign  _zy_simnet_cio_30 = 1'b0;
assign  _zy_simnet_cio_31 = 1'b0;
assign  _zy_simnet_kme_ib_tvalid_32_w$ = kme_ib_tvalid;
assign  _zy_simnet_kme_ib_tlast_33_w$ = kme_ib_tlast;
assign  _zy_simnet_kme_ib_tid_34_w$ = kme_ib_tid;
assign  _zy_simnet_kme_ib_tstrb_35_w$ = kme_ib_tstrb;
assign  _zy_simnet_kme_ib_tuser_36_w$ = kme_ib_tuser;
assign  _zy_simnet_kme_ib_tdata_37_w$ = kme_ib_tdata;
assign  _zy_simnet_kme_ob_tready_38_w$ = kme_ob_tready;
assign  _zy_simnet_kme_apb_paddr_39_w$ = kme_apb_paddr[15:0];
assign  _zy_simnet_kme_apb_psel_40_w$ = kme_apb_psel;
assign  _zy_simnet_kme_apb_penable_41_w$ = kme_apb_penable;
assign  _zy_simnet_kme_apb_pwrite_42_w$ = kme_apb_pwrite;
assign  _zy_simnet_kme_apb_pwdata_43_w$ = kme_apb_pwdata;
apb_xactor apb_xactor(
  .psel(_zy_simnet_kme_apb_psel_0_w$) ,
  .penable(_zy_simnet_kme_apb_penable_1_w$) ,
  .paddr(_zy_simnet_kme_apb_paddr_2_w$) ,
  .pwdata(_zy_simnet_kme_apb_pwdata_3_w$) ,
  .pwrite(_zy_simnet_kme_apb_pwrite_4_w$) ,
  .clk(_zy_simnet_clk_5_w$) ,
  .reset_n(_zy_simnet_rst_n_6_w$) ,
  .prdata(_zy_simnet_kme_apb_prdata_7_w$) ,
  .pready(_zy_simnet_kme_apb_pready_8_w$) ,
  .pslverr(_zy_simnet_kme_apb_pslverr_9_w$) ); 
cr_kme kme_dut(
  .kme_interrupt(_zy_simnet_dio_10) ,
  .kme_ib_tready(_zy_simnet_kme_ib_tready_11_w$) ,
  .kme_cceip0_ob_tvalid(_zy_simnet_kme_ob_tvalid_12_w$) ,
  .kme_cceip0_ob_tlast(_zy_simnet_kme_ob_tlast_13_w$) ,
  .kme_cceip0_ob_tid(_zy_simnet_kme_ob_tid_14_w$) ,
  .kme_cceip0_ob_tstrb(_zy_simnet_kme_ob_tstrb_15_w$) ,
  .kme_cceip0_ob_tuser(_zy_simnet_kme_ob_tuser_16_w$) ,
  .kme_cceip0_ob_tdata(_zy_simnet_kme_ob_tdata_17_w$) ,
  .apb_prdata(_zy_simnet_kme_apb_prdata_18_w$) ,
  .apb_pready(_zy_simnet_kme_apb_pready_19_w$) ,
  .apb_pslverr(_zy_simnet_kme_apb_pslverr_20_w$) ,
  .kme_idle(_zy_simnet_dio_21) ,
  .clk(_zy_simnet_clk_22_w$) ,
  .rst_n(_zy_simnet_rst_n_23_w$) ,
  .scan_en(_zy_simnet_cio_24) ,
  .scan_mode(_zy_simnet_cio_25) ,
  .scan_rst_n(_zy_simnet_cio_26) ,
  .ovstb(_zy_simnet_cio_27) ,
  .lvm(_zy_simnet_cio_28) ,
  .mlvm(_zy_simnet_cio_29) ,
  .disable_debug_cmd(_zy_simnet_cio_30) ,
  .disable_unencrypted_keys(_zy_simnet_cio_31) ,
  .kme_ib_tvalid(_zy_simnet_kme_ib_tvalid_32_w$) ,
  .kme_ib_tlast(_zy_simnet_kme_ib_tlast_33_w$) ,
  .kme_ib_tid(_zy_simnet_kme_ib_tid_34_w$) ,
  .kme_ib_tstrb(_zy_simnet_kme_ib_tstrb_35_w$) ,
  .kme_ib_tuser(_zy_simnet_kme_ib_tuser_36_w$) ,
  .kme_ib_tdata(_zy_simnet_kme_ib_tdata_37_w$) ,
  .kme_cceip0_ob_tready(_zy_simnet_kme_ob_tready_38_w$) ,
  .apb_paddr(_zy_simnet_kme_apb_paddr_39_w$) ,
  .apb_psel(_zy_simnet_kme_apb_psel_40_w$) ,
  .apb_penable(_zy_simnet_kme_apb_penable_41_w$) ,
  .apb_pwrite(_zy_simnet_kme_apb_pwrite_42_w$) ,
  .apb_pwdata(_zy_simnet_kme_apb_pwdata_43_w$) ); 
import "DPI-C" function int get_config_data (output bit [31:0] operation ,output bit [31:0] address ,output bit [31:0] data );

task do_kme_config;
 reg [31:0] returned_data ;
 reg response;
 bit [31:0] operation ;
 bit [31:0] address ;
 bit [31:0] data ;
 static int retval = 1;
 begin
  retval = get_config_data(operation,address,data);
  while ((retval !== 2))
   begin
    retval = get_config_data(operation,address,data);
    $display("curr value of retval --> 0x%x",retval);
    if ((retval == 1))
     begin
      $display("operation = %d, address = 0x%h, data = 0x%h\n",operation,address,data);
      if (((((operation == 32'b01110010) || (operation == 32'b01010010)) || (operation == 32'b01110111)) || (operation == 32'b01010111)))
       begin
        if (((operation == 32'b01110010) || (operation == 32'b01010010)))
         begin
          apb_xactor.read(address,returned_data,response);
          $display("MY INFO: curr address: 0x%h --> data_from_config: 0x%h --> data_from_apb: 0x%h\n",address,data,returned_data);
          if ((response !== 32'b0))
          begin
          $display("\n\nAPB_FATAL:  @time:%-d   Slave ERROR and/or TIMEOUT on the READ operation to address 0x%h\n\n",$time,address);
          $finish;
          end
          if ((returned_data !== data))
          begin
          $display("APB_ERROR:  @time:%-d   Data MISMATCH --> Actual: 0x%h  Expect: 0x%h",$time,returned_data,data);
          begin
          error_cntr = (error_cntr + 1);
          end
          if ((error_cntr > 10))
          begin
          $finish;
          end
          end
         end
        else
         if (((operation == 32'b01110111) || (operation == 32'b01010111)))
          begin
          apb_xactor.write(address,data,response);
          if ((response !== 32'b0))
          begin
          $display("\n\nAPB_FATAL:  @time:%-d   Slave ERROR and/or TIMEOUT on the WRITE operation to address 0x%h\n\n",$time,address);
          $finish;
          end
          end
        @(posedge clk)
         begin
         end
       end
     end
   end
  @(posedge clk)
   begin
   end
  $display("APB_INFO:  @time:%-d Exiting APB engine config ...",$time);
 end
endtask


task service_ib_interface;
 reg [7:0] tstrb ;
 reg [63:0] tdata ;
 string tuser_string;
 string file_name;
 string vector;
 integer str_get;
 integer file_descriptor;
 logic saw_mega;
 logic saw_guid_tlv;
 logic have_guid_tlv;
 integer mega_tlv_word_count;
 begin
  file_name = $psprintf("../../dv/KME/tests/%s.inbound",testname);
  file_descriptor = $fopen(file_name,"r");
  if ((file_descriptor == 0))
   begin
    $display("INBOUND_FATAL:  @time:%-d File %s NOT found!",$time,file_name);
    $finish;
   end
  else
   begin
    $display("INBOUND_INFO:  @time:%-d Openned test file -->  %s",$time,file_name);
   end
  saw_mega = 1'b0;
  saw_guid_tlv = 1'b0;
  mega_tlv_word_count = 0;
  have_guid_tlv = 1'b0;
  while (( !$feof(file_descriptor) ))
   begin
    if ((kme_ib_tready === 1'b1))
     begin
      kme_ib_tlast <= 1'b0;
      if ($fgets(vector,file_descriptor))
       begin
        str_get = $sscanf(vector,"0x%h %s 0x%h",tdata,tuser_string,tstrb);
        if ((str_get >= 2))
         begin
          $display("INBOUND_INFO:  @time:%-d vector --> %s",$time,vector);
          if ((str_get == 3))
          begin
          if (((tuser_string == "SoT") && (tdata[7:0] >= 8'b010101)))
          begin
          saw_mega = 1'b1;
          end
          else
          if ((tdata[7:0] == 8'b01010))
          begin
          saw_guid_tlv = 1'b1;
          end
          if ((saw_mega == 32'b01))
          begin
          mega_tlv_word_count = (mega_tlv_word_count + 1);
          if ((mega_tlv_word_count == 2))
          begin
          $display("mega tlv word #2: %x",tdata);
          if ((tdata[4] == 32'b01))
          begin
          have_guid_tlv = 1'b1;
          end
          end
          end
          if (((tuser_string == "EoT") && (saw_mega == 32'b01)))
          begin
          if ((have_guid_tlv == 32'b0))
          begin
          kme_ib_tlast <= 1'b1;
          end
          saw_mega = 1'b0;
          end
          else
          if (((tuser_string == "EoT") && (saw_guid_tlv == 32'b01)))
          begin
          kme_ib_tlast <= 1'b1;
          saw_guid_tlv = 1'b0;
          end
          kme_ib_tuser <= translate_tuser(tuser_string);
          end
          else
          begin
          kme_ib_tuser <= 8'b0;
          end
          kme_ib_tvalid <= 1'b1;
          kme_ib_tdata <= tdata;
          kme_ib_tstrb <= tstrb;
         end
        else
         begin
          kme_ib_tvalid <= 1'b0;
         end
       end
      else
       begin
        kme_ib_tvalid <= 1'b0;
       end
     end
    @(posedge clk)
     begin
     end
   end
  kme_ib_tvalid <= 1'b0;
  kme_ib_tlast <= 1'b0;
  @(posedge clk)
   begin
   end
  $display("INBOUND_INFO:  @time:%-d Exiting INBOUND thread...",$time);
 end
endtask


task service_ob_interface;
 reg [7:0] tstrb ;
 reg [7:0] tuser ;
 reg [63:0] tdata ;
 reg tlast;
 string tuser_string;
 string file_name;
 string vector;
 integer str_get;
 integer file_descriptor;
 logic saw_cqe;
 logic saw_stats;
 logic ignore_compare_result;
 logic got_next_line;
 integer watchdog_timer;
 integer rc;
 begin
  file_name = $psprintf("../../dv/KME/tests/%s.outbound",testname);
  file_descriptor = $fopen(file_name,"r");
  if ((file_descriptor == 0))
   begin
    $display("OUTBOUND_FATAL:  @time:%-d File %s NOT found!",$time,file_name);
    $finish;
   end
  else
   begin
    $display("OUTBOUND_INFO:  @time:%-d Openned test file -->  %s",$time,file_name);
   end
  saw_cqe = 1'b0;
  saw_stats = 1'b0;
  got_next_line = 1'b0;
  watchdog_timer = 0;
  while (( !$feof(file_descriptor) ))
   begin
    if ((kme_ob_tvalid === 1'b1))
     begin
      watchdog_timer = 0;
      tlast = 1'b0;
      ignore_compare_result = 1'b0;
      if (((got_next_line == 32'b01) || $fgets(vector,file_descriptor)))
       begin
        got_next_line = 1'b0;
        while (((vector[0] === 8'b0100011) && ( !$feof(file_descriptor) )))
         begin
          rc = $fgets(vector,file_descriptor);
         end
        $display("OUTBOUND_INFO:  @time:%-d vector --> %s",$time,vector);
        $display("OUTBOUND_INFO_MINE:  @time:%-d   kme_ob_tdata: 0x%h",$time,kme_ob_tdata);
        str_get = $sscanf(vector,"0x%h %s 0x%h",tdata,tuser_string,tstrb);
        if ((str_get == 3))
         begin
          tuser = translate_tuser(tuser_string);
          if (((tuser_string == "SoT") && (tdata[7:0] == 8'b01001)))
          begin
          saw_cqe = 1'b1;
          end
          if ((tuser_string == "EoT"))
          begin
          tlast = 1'b1;
          saw_cqe = 1'b0;
          rc = $fgets(vector,file_descriptor);
          got_next_line = 1'b1;
          end
          if (((tuser_string == "SoT") && (tdata[7:0] == 8'b01000)))
          begin
          saw_stats = 1'b1;
          end
          if (((tuser_string == "EoT") && (saw_stats == 32'b01)))
          begin
          ignore_compare_result = 1'b1;
          saw_stats = 1'b0;
          end
         end
        else
         begin
          tuser = 8'b0;
         end
        if (((kme_ob_tdata !== tdata) && (ignore_compare_result == 32'b0)))
         begin
          $display("OUTBOUND_ERROR:  @time:%-d   kme_ob_tdata MISMATCH --> Actual: 0x%h  Expect: 0x%h",$time,kme_ob_tdata,tdata);
          begin
          error_cntr = (error_cntr + 1);
          end
         end
        if ((kme_ob_tuser !== tuser))
         begin
          $display("OUTBOUND_ERROR:  @time:%-d   kme_ob_tuser MISMATCH --> Actual: 0x%h  Expect: 0x%h",$time,kme_ob_tuser,tuser);
          begin
          error_cntr = (error_cntr + 1);
          end
         end
        if ((kme_ob_tstrb !== tstrb))
         begin
          $display("OUTBOUND_ERROR:  @time:%-d   kme_ob_tstrb MISMATCH --> Actual: 0x%h  Expect: 0x%h",$time,kme_ob_tstrb,tstrb);
          begin
          error_cntr = (error_cntr + 1);
          end
         end
        if ((kme_ob_tlast !== tlast))
         begin
          $display("OUTBOUND_ERROR:  @time:%-d   kme_ob_tlast MISMATCH --> Actual: 0x%h  Expect: 0x%h",$time,kme_ob_tlast,tlast);
          begin
          error_cntr = (error_cntr + 1);
          end
         end
       end
      else
       begin
        begin
         error_cntr = (error_cntr + 1);
        end
        $display("\nOUTBOUND_FATAL:  @time:%-d  No corresponding expect vector!\n",$time);
        $finish;
       end
     end
    else
     begin
      begin
       watchdog_timer = (watchdog_timer + 1);
      end
      if ((watchdog_timer > 10000))
       begin
        begin
         error_cntr = (error_cntr + 1);
        end
        $display("\nOUTBOUND_ERROR:  @time:%-d  Watchdog timer EXPIRED!\n",$time);
        $finish;
       end
     end
    @(posedge clk)
     begin
     end
   end
  @(posedge clk)
   begin
   end
  $display("OUTBOUND_INFO:  @time:%-d Exiting OUTBOUND thread...",$time);
 end
endtask


function  [7:0] translate_tuser;
 input string tuser;
 if ((tuser == "SoT"))
  begin
   return 8'b01;
  end
 else
  if ((tuser == "EoT"))
   begin
    return 8'b010;
   end
  else
   begin
    return 8'b011;
   end
endfunction

initial 
 begin
  error_cntr = 0;
  rst_n = 1'b0;
  if ($test$plusargs("SEED"))
   begin
    _zz_56_221_0 = $value$plusargs("SEED=%d",seed);
   end
  else
   begin
    seed = "1";
   end
  if ($test$plusargs("TESTNAME"))
   begin
    _zz_56_227_1 = $value$plusargs("TESTNAME=%s",testname);
    $display("TESTNAME=%s SEED=%s",testname,seed);
   end
  else
   begin
    testname = "unknown";
    $display("TESTNAME=%s SEED=%s",testname,seed);
   end
  $display("--- \"rst_n\" is being ASSERTED for 100ns ---");
  repeat (125)
   begin
    @(posedge clk)
     begin
     end
   end
  kme_ib_tid <= 1'b0;
  kme_ib_tvalid <= 1'b0;
  kme_ib_tlast <= 1'b0;
  kme_ib_tdata <= 64'b0;
  kme_ib_tstrb <= 8'b0;
  kme_ib_tuser <= 8'b0;
  kme_ob_tready <= 1'b1;
  repeat (6.2500000000000000e+01)
   begin
    @(posedge clk)
     begin
     end
   end
  $display("--- \"rst_n\" has been DE-ASSERTED! ---");
  rst_n = 1'b1;
  repeat (125)
   begin
    @(posedge clk)
     begin
     end
   end
  @(posedge clk)
   begin
   end
  do_kme_config;
  fork
   begin
    service_ib_interface;
   end
   begin
    service_ob_interface;
   end
  join
  if (error_cntr)
   begin
    $display("\nTest %s FAILED!\n",testname);
   end
  else
   begin
    $display("\nTest %s PASSED!\n",testname);
   end
  repeat (1.2500000000000000e+01)
   begin
    @(posedge clk)
     begin
     end
   end
  $finish;
 end
endmodule

