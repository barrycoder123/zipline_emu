/*************************************************************************
*
* Copyright ?? Microsoft Corporation. All rights reserved.
* Copyright ?? Broadcom Inc. All rights reserved.
* Licensed under the MIT License.
*
*************************************************************************/
`include "cr_global_params.vh"

module kme_tb;   
   
   // strings not supported
   //string testname; 
   //longest test name is 34 chars
   reg [35*8-1:0] testname;
   //string seed;
   reg [35*8-1:0] seed;
   reg[31:0] initial_seed;
   int  error_cntr;
   //integer error_cntr;

   string fsdbFilename;
   //reg [35*8-1:0] fsdbFilename;
  

   logic clk;
   logic rst_n;
   //reg clk, rst_n;

   logic kme_ib_tready;
   //reg kme_ib_tready;
   logic [`AXI_S_TID_WIDTH-1:0]  kme_ib_tid;
   logic [`AXI_S_DP_DWIDTH-1:0]  kme_ib_tdata;
   logic [`AXI_S_TSTRB_WIDTH-1:0] kme_ib_tstrb;
   logic [`AXI_S_USER_WIDTH-1:0] kme_ib_tuser;
   logic                         kme_ib_tvalid;
   logic                         kme_ib_tlast;
   //reg [`AXI_S_TID_WIDTH-1:0]  kme_ib_tid;
   //reg [`AXI_S_DP_DWIDTH-1:0]  kme_ib_tdata;
   //reg [`AXI_S_TSTRB_WIDTH-1:0] kme_ib_tstrb;
   //reg [`AXI_S_USER_WIDTH-1:0] kme_ib_tuser;
   //reg                         kme_ib_tvalid;
   //reg                         kme_ib_tlast;

   logic kme_ob_tready;
   logic [`AXI_S_TID_WIDTH-1:0]  kme_ob_tid;
   logic [`AXI_S_DP_DWIDTH-1:0]  kme_ob_tdata;
   logic [`AXI_S_TSTRB_WIDTH-1:0] kme_ob_tstrb;
   logic [`AXI_S_USER_WIDTH-1:0] kme_ob_tuser;
   logic                         kme_ob_tvalid;
   logic                         kme_ob_tlast;    
   //reg kme_ob_tready;
   //reg [`AXI_S_TID_WIDTH-1:0]  kme_ob_tid;
   //reg [`AXI_S_DP_DWIDTH-1:0]  kme_ob_tdata;
   //reg [`AXI_S_TSTRB_WIDTH-1:0] kme_ob_tstrb;
   //reg [`AXI_S_USER_WIDTH-1:0] kme_ob_tuser;
   //reg                         kme_ob_tvalid;
   //reg                         kme_ob_tlast;    

   logic [`N_RBUS_ADDR_BITS-1:0] kme_apb_paddr;
   logic                         kme_apb_psel;
   logic                         kme_apb_penable;
   logic                         kme_apb_pwrite;
   logic [`N_RBUS_DATA_BITS-1:0] kme_apb_pwdata;  
   logic [`N_RBUS_DATA_BITS-1:0] kme_apb_prdata;
   logic                         kme_apb_pready;		        
   logic                         kme_apb_pslverr;
   //reg [`N_RBUS_ADDR_BITS-1:0] kme_apb_paddr;
   //reg                         kme_apb_psel;
   //reg                         kme_apb_penable;
   //reg                         kme_apb_pwrite;
   //reg [`N_RBUS_DATA_BITS-1:0] kme_apb_pwdata;  
   //reg [`N_RBUS_DATA_BITS-1:0] kme_apb_prdata;
   //reg                         kme_apb_pready;		        
   //reg                         kme_apb_pslverr;
   logic my_clk;

//TODO: export dut clock to here 

/*
   initial begin
      clk = 1'b0;
      forever
	begin
           #0.625;
           clk = ~clk;
	end
   end
  */
   //assign clk = kme_tb.kme_dut.clock_1;
   assign clk = my_clk;
  
   apb_xactor #(.ADDR_WIDTH(`N_RBUS_ADDR_BITS),.DATA_WIDTH(`N_RBUS_DATA_BITS)) apb_xactor(
											  .clk(clk), 
											  .reset_n(rst_n), 
											  .prdata(kme_apb_prdata), 
											  .pready(kme_apb_pready), 
											  .pslverr(kme_apb_pslverr), 
											  .psel(kme_apb_psel), 
											  .penable(kme_apb_penable), 
											  .paddr(kme_apb_paddr), 
											  .pwdata(kme_apb_pwdata), 
											  .pwrite(kme_apb_pwrite)
											  );
   
   cr_kme kme_dut(
		  .kme_ib_tready(kme_ib_tready), 
		  .kme_ib_tvalid(kme_ib_tvalid),
		  .kme_ib_tlast(kme_ib_tlast),
		  .kme_ib_tid(kme_ib_tid),
		  .kme_ib_tstrb(kme_ib_tstrb),
		  .kme_ib_tuser(kme_ib_tuser),
		  .kme_ib_tdata(kme_ib_tdata),

		  .kme_cceip0_ob_tready(kme_ob_tready), 
		  .kme_cceip0_ob_tvalid(kme_ob_tvalid),
		  .kme_cceip0_ob_tlast(kme_ob_tlast),
		  .kme_cceip0_ob_tid(kme_ob_tid),
		  .kme_cceip0_ob_tstrb(kme_ob_tstrb),
		  .kme_cceip0_ob_tuser(kme_ob_tuser),
		  .kme_cceip0_ob_tdata(kme_ob_tdata),
      
/* -----\/----- EXCLUDED -----\/-----
		  .kme_cceip1_ob_tready(), 
		  .kme_cceip1_ob_tvalid(),
		  .kme_cceip1_ob_tlast(),
		  .kme_cceip1_ob_tid(),
		  .kme_cceip1_ob_tstrb(),
		  .kme_cceip1_ob_tuser(),
		  .kme_cceip1_ob_tdata(),

		  .kme_cceip2_ob_tready(), 
		  .kme_cceip2_ob_tvalid(),
		  .kme_cceip2_ob_tlast(),
		  .kme_cceip2_ob_tid(),
		  .kme_cceip2_ob_tstrb(),
		  .kme_cceip2_ob_tuser(),
		  .kme_cceip2_ob_tdata(),

		  .kme_cceip3_ob_tready(), 
		  .kme_cceip3_ob_tvalid(),
		  .kme_cceip3_ob_tlast(),
		  .kme_cceip3_ob_tid(),
		  .kme_cceip3_ob_tstrb(),
		  .kme_cceip3_ob_tuser(),
		  .kme_cceip3_ob_tdata(),

		  .kme_cddip0_ob_tready(), 
		  .kme_cddip0_ob_tvalid(),
		  .kme_cddip0_ob_tlast(),
		  .kme_cddip0_ob_tid(),
		  .kme_cddip0_ob_tstrb(),
		  .kme_cddip0_ob_tuser(),
		  .kme_cddip0_ob_tdata(),
      
		  .kme_cddip1_ob_tready(), 
		  .kme_cddip1_ob_tvalid(),
		  .kme_cddip1_ob_tlast(),
		  .kme_cddip1_ob_tid(),
		  .kme_cddip1_ob_tstrb(),
		  .kme_cddip1_ob_tuser(),
		  .kme_cddip1_ob_tdata(),

		  .kme_cddip2_ob_tready(), 
		  .kme_cddip2_ob_tvalid(),
		  .kme_cddip2_ob_tlast(),
		  .kme_cddip2_ob_tid(),
		  .kme_cddip2_ob_tstrb(),
		  .kme_cddip2_ob_tuser(),
		  .kme_cddip2_ob_tdata(),

		  .kme_cddip3_ob_tready(), 
		  .kme_cddip3_ob_tvalid(),
		  .kme_cddip3_ob_tlast(),
		  .kme_cddip3_ob_tid(),
		  .kme_cddip3_ob_tstrb(),
		  .kme_cddip3_ob_tuser(),
		  .kme_cddip3_ob_tdata(),
 -----/\----- EXCLUDED -----/\----- */
      
		  .apb_paddr(kme_apb_paddr[`N_KME_RBUS_ADDR_BITS-1:0]),
		  .apb_psel(kme_apb_psel), 
		  .apb_penable(kme_apb_penable), 
		  .apb_pwrite(kme_apb_pwrite), 
		  .apb_pwdata(kme_apb_pwdata),
		  .apb_prdata(kme_apb_prdata),
		  .apb_pready(kme_apb_pready), 
		  .apb_pslverr(kme_apb_pslverr),

		  .clk(clk), 
		  .rst_n(rst_n), 
		  .scan_en(1'b0), 
		  .scan_mode(1'b0), 
		  .scan_rst_n(1'b0), 
    
		  .ovstb(1'b1), 
		  .lvm(1'b0),
		  .mlvm(1'b0),

		  .kme_interrupt(),
		  .disable_debug_cmd(1'b0),
                  .kme_idle(),
		  .disable_unencrypted_keys(1'b0)
		  );
      // IMPORT DPI-C functions here
      import "DPI-C" function int get_config_data(output bit[7:0] operation, output bit [31:0] address, output bit[31:0] data);
      import "DPI-C" function int ib_service_data(output bit[63:0] tdata, output
      bit[31:0] tuser_string, output bit[7:0] tstrb, output bit[31:0] str_get);
      import "DPI-C" function int ob_service_data(output bit[63:0] tdata, output
      bit[31:0] tuser_string, output bit[7:0] tstrb, output bit[31:0]  str_get);
      initial begin
          $ixc_ctrl("gsf_is", "get_config_data");
          $ixc_ctrl("gsf_is", "ib_service_data");
          $ixc_ctrl("gsf_is", "ob_service_data");
          $ixc_ctrl("tb_export", "tb_task");
      end

   logic config_done = 0;
   bit [7:0]     tstrb_ib;
   bit [63:0]    tdata_ib;
   bit [31:0]    tuser_string_ib;
   bit [31:0]    str_get_ib;
   reg[3*8:0] user_string_ib = "";
   int retval_ib;
   logic ready_ib = 0;
   logic 	     saw_mega;
   logic 	     saw_guid_tlv;
   logic 	     have_guid_tlv;
   int           mega_tlv_word_count;

   bit [7:0]    tstrb_ob;
   bit [63:0]   tdata_ob;
   bit [31:0]   tuser_string_ob;
   reg [3*8:0]  user_string_ob;
   bit [31:0]   str_get_ob;
   int retval_ob;
   logic ready_ob = 0;
   reg [7:0]      tuser;
   reg            tlast;
   logic          saw_cqe;
   logic          saw_stats;
   logic          ignore_compare_result;
   integer        watchdog_timer; 

   reg [31:0]     returned_data;
   reg            response;
   bit [7:0]   operation;
   bit [31:0] address;
   bit [31:0] data;
   int retval;
   logic config_ready = 0;

   task tb_task();
        error_cntr = 0;
        rst_n = 1'b0;

        if ($test$plusargs("SEED")) begin
            $value$plusargs("SEED=%d", seed);
        end else begin
            seed = "1";
        end

        if ($test$plusargs("TESTNAME")) begin
            $value$plusargs("TESTNAME=%s", testname);
            $display("TESTNAME=%s SEED=%s", testname, seed);
        end else begin
            testname = "unknown";
            $display("TESTNAME=%s SEED=%s", testname, seed);
        end

        $display("--- \"rst_n\" is being asserted for 100ns ---");
        // scale via actual clk period of 1.25 ns
        repeat (125) begin 
            @(posedge clk);
        end
        $display("STOP \n");

        kme_ib_tid <= 0;
        kme_ib_tvalid <= 0;
        kme_ib_tlast <= 0;
        kme_ib_tdata <= 0;
        kme_ib_tstrb <= 0;
        kme_ib_tuser <= 0;
        kme_ob_tready <= 1;
        
        repeat (62.5) begin 
            @(posedge clk);
        end
        $display("--- \"rst_n\" has been DE-ASSERTED! ---");
        rst_n = 1'b1;

        repeat (125) begin 
            @(posedge clk);
        end
        @(posedge clk);
        do_kme_config();
        config_done = 1;

        repeat (12.5) begin 
            @(posedge clk);
        end

        //$finish;
   endtask
    
    always @(posedge clk) begin
        if (config_done == 1) begin
            service_ib_interface();
        end
    end

    always @(posedge clk) begin
        if (config_done == 1) begin
            service_ob_interface();
            if (error_cntr) begin 
                $display("\nTest %s FAILED!\n", testname);
            end else begin
                $display("\nTest %s PASSED!\n", testname);
            end
            $finish;
         end
    end

    always @(posedge clk) begin
        if (config_ready == 1) begin 
            retval = get_config_data(operation, address, data);
            $display("curr value of retval --> 0x%x", retval);
            if (retval == 1) begin
              // new algo
              $display("operation = %s, address = 0x%h, data = 0x%h\n", operation, address, data);
              if ( (operation == "r" || operation == "R" || operation == "w" || operation == "W") ) begin
                  if ( operation == "r" || operation == "R" ) begin
                      apb_xactor.read(address, returned_data, response);
                      $display("MY INFO: curr address: 0x%h --> data_from_config: 0x%h --> data_from_apb: 0x%h\n", address, data, returned_data);
                      if ( response !== 0 ) begin
                      $display ("\n\nAPB_FATAL:  @time:%-d   Slave ERROR and/or TIMEOUT on the READ operation to address 0x%h\n\n",
                              $time, address );
                         $finish;
                      end 
                      if ( returned_data !== data ) begin
                         $display ("APB_ERROR:  @time:%-d   Data MISMATCH --> Actual: 0x%h  Expect: 0x%h", $time, returned_data, data ); 
                         ++error_cntr;
                         if ( error_cntr > 10 ) begin
                            $finish;
                         end
                      end
                  end 
                  else if (operation == "w" || operation == "W") begin
                      apb_xactor.write(address, data, response);
                      if ( response !== 0 ) begin
                         $display ("\n\nAPB_FATAL:  @time:%-d   Slave ERROR and/or TIMEOUT on the WRITE operation to address 0x%h\n\n", $time, address );
                         $finish;
                      end
                  end
                  @(posedge clk);
              end         
            end
        end
    
    end

task do_kme_config();
        config_ready = 1;
        @(posedge clk);
        $display ("APB_INFO:  @time:%-d Exiting APB engine config ...", $time );
   endtask // do_kme_config
    
   always @(posedge clk) begin
        if (ready_ib == 1) begin
            retval_ib = ib_service_data(tdata_ib, tuser_string_ib, tstrb_ib,
            str_get_ib);
            user_string_ib = reverse_translate_tuser(tuser_string_ib);
            $display("user_string is %s\n", user_string_ib);
            if ( retval_ib == 1 ) begin
                $display("tdata = 0x%h, tuser_string = %d, tstrb = 0x%h, str_get = %d\n", tdata_ib, tuser_string_ib, tstrb_ib, str_get_ib);
                if ( kme_ib_tready === 1'b1) begin
                    kme_ib_tlast <= 1'b0;
                    kme_ib_tvalid <= 1'b0;
                    if ( str_get_ib == 3 ) begin
                        if ( user_string_ib == "SoT" && tdata_ib[7:0] >= 8'd21 ) begin
                            $display("I should be here after seeing SoT\n");
                            saw_mega = 1;
                        end 
                        else if(tdata_ib[7:0] == 8'd10) begin
                            saw_guid_tlv = 1;
                        end
                        if (saw_mega == 1 ) begin
                            mega_tlv_word_count = mega_tlv_word_count + 1;
                            if(mega_tlv_word_count == 2) begin
                                $display("mega tlv word #2: %x", tdata_ib);
                                if(tdata_ib[4] == 1) begin
                                    have_guid_tlv = 1;
                                end
                            end
                        end
                        if ( user_string_ib == "EoT" && saw_mega == 1 ) begin
                            if( have_guid_tlv == 0 ) begin
                                kme_ib_tlast <= 1'b1;
                            end
                            saw_mega = 0;
                        end
                        else if(user_string_ib == "EoT" && saw_guid_tlv == 1) begin
                            kme_ib_tlast <= 1'b1;
                            saw_guid_tlv = 0;
                        end
                            kme_ib_tuser <= translate_tuser_t( user_string_ib );
                    end else begin
                        kme_ib_tuser <= 8'h00;
                    end
                    kme_ib_tvalid <= 1'b1;
                    kme_ib_tdata <= tdata_ib;
                    $display("am i getting correct tstrb values: 0x%x", tstrb_ib);
                    kme_ib_tstrb <= tstrb_ib;
                    //kme_ib_tvalid <= 1'b0;
                end
                @(posedge clk);
            end
        end
   end
	
   task service_ib_interface();
      int stop_loop = 1000;

      saw_mega = 0;
      saw_guid_tlv = 0;
      mega_tlv_word_count = 0;
      have_guid_tlv = 0;
      ready_ib = 1;

      kme_ib_tvalid <= 1'b0;
      kme_ib_tlast <= 1'b0;

      @(posedge clk);

      $display ("INBOUND_INFO:  @time:%-d Exiting INBOUND thread...", $time );

   endtask // service_ib_interface
   
   always @(posedge clk) begin
        if (ready_ob == 1) begin
            retval_ob = ob_service_data(tdata_ob, tuser_string_ob, tstrb_ob,
            str_get_ob);
            user_string_ob = reverse_translate_tuser(tuser_string_ob);
            $display("user_string is %s\n", user_string_ob);
            if (retval_ob == 1 ) begin 
                $display("OUTBOUND INFO: tdata = 0x%h, tuser_string = %d, tstrb = 0x%h, str_get = %d\n", tdata_ob, tuser_string_ob, tstrb_ob,
                str_get_ob);
                while ( kme_ob_tvalid === 1'b0) begin 
                    @(posedge clk);
                    ++watchdog_timer;
                    if ( watchdog_timer > 10000 ) begin
                        ++error_cntr;
                        $display ("\nOUTBOUND_ERROR:  @time:%-d  Watchdog timer EXPIRED!\n", $time ); 
                        $finish;
                    end
                end
                watchdog_timer = 0;
                tlast = 1'b0;
                ignore_compare_result = 0;
                $display ("OUTBOUND_INFO_MINE:  @time:%-d   kme_ob_tdata: 0x%h", $time, kme_ob_tdata);
                if ( str_get_ob == 3 ) begin
                    tuser = translate_tuser_t( user_string_ob );
                    if ( user_string_ob == "SoT" && tdata_ob[7:0] == 8'h09 ) begin
                        saw_cqe = 1;
                    end
                    if ( user_string_ob == "EoT") begin
                        tlast = 1'b1;
                        saw_cqe = 0;
                    end
                    if ( user_string_ob == "SoT" && tdata_ob[7:0] == 8'h08 ) begin
                        saw_stats = 1;
                    end
                    if ( user_string_ob == "EoT" && saw_stats == 1 ) begin
                        ignore_compare_result = 1;
                        saw_stats = 0;
                    end
                end else begin
                    tuser = 8'h00;
                end
                $display("after seeing str != 3 tuser is %d\n", tuser);
                if ( kme_ob_tdata !== tdata_ob && ignore_compare_result == 0 ) begin
                    $display ("OUTBOUND_ERROR:  @time:%-d   kme_ob_tdata MISMATCH --> Actual: 0x%h  Expect: 0x%h", $time,
                    kme_ob_tdata, tdata_ob ); 
                    ++error_cntr;
                end
                if ( kme_ob_tuser !== tuser ) begin
                    $display ("OUTBOUND_ERROR:  @time:%-d   kme_ob_tuser MISMATCH --> Actual: 0x%h  Expect: 0x%h", $time, kme_ob_tuser, tuser ); 
                    ++error_cntr;
                end
                if ( kme_ob_tstrb !== tstrb_ob ) begin
                    $display ("OUTBOUND_ERROR:  @time:%-d   kme_ob_tstrb MISMATCH --> Actual: 0x%h  Expect: 0x%h", $time,
                    kme_ob_tstrb, tstrb_ob ); 
                    ++error_cntr;
                end
                if ( kme_ob_tlast !== tlast ) begin
                    $display ("OUTBOUND_ERROR:  @time:%-d   kme_ob_tlast MISMATCH --> Actual: 0x%h  Expect: 0x%h", $time, kme_ob_tlast, tlast ); 
                    ++error_cntr;
                end 
            end 
            @(posedge clk);
    
        end
   end

   task service_ob_interface();
       saw_cqe = 0;
       saw_stats = 0;
       watchdog_timer = 0;
       ready_ob = 1;

       @(posedge clk);

       $display ("OUTBOUND_INFO:  @time:%-d Exiting OUTBOUND thread...", $time );

   endtask // service_ob_interface

   function logic[3*8:0] reverse_translate_tuser(bit[31:0] tuser);
      if (tuser == 11) begin
        $display("am i translating\n");
        return "SoT";
      end else if (tuser == 10) begin
        $display("am i translating\n");
        return "EoT";
      end else begin
        return "";
      end
   endfunction : reverse_translate_tuser

   function logic[7:0] translate_tuser_t (bit[3*8:0] tuser);
      $display("inside translate function the tuser is : %s\n", tuser);
      if ( tuser == "SoT" ) begin
         return 8'h01;
      end else if ( tuser == "EoT" ) begin
         return 8'h02;
      end else begin
         return 8'h03;
      end
   endfunction : translate_tuser_t

   
endmodule : kme_tb
