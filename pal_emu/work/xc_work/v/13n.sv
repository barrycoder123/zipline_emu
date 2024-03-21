// xc_work/v/13n.sv
// /home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_aes_256_drng.v:18
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
module cr_kme_aes_256_drng(output reg seed_expired,output  drng_valid,output  [127:0] drng_256_out ,output  drng_fifo_overflow,output  drng_fifo_underflow,output reg drng_idle,input  start,input  [383:0] seed ,input  [47:0] seed_life ,input  drng_ack,input  clk,input  rst_n
);
typedef enum bit [1:0] {SEED_EXPIRED=2'b0,SET_KEY=2'b01,SEND_BLKS=2'b10,RESULT=2'b11} drng_fsm;
drng_fsm cur_state, nxt_state;
reg [127:0] CiphIn ;
reg CiphInVldR;
reg CiphInLastR;
wire  CiphInStall;
reg KeyInVld;
reg [255:0] KeyIn ;
wire  KeyInStall;
reg [127:0] AesCiphOutR ;
reg AesCiphOutVldR;
reg fifo_in_valid;
reg [127:0] fifo_in ;
wire  fifo_in_stall;
wire  [127:0] fifo_out ;
reg [47:0] reseed_counter ;
reg [47:0] reseed_counter_limit ;
reg [255:0] internal_state_key ;
reg [127:0] internal_state_value ;
reg [2:0] in_count ;
reg [2:0] out_count ;
wire  _zy_simnet_seed_expired_0_w$;
wire  _zy_simnet_drng_idle_1_w$;
wire  [0:127] _zy_simnet_AesCiphOutR_2_w$ ;
wire  _zy_simnet_AesCiphOutVldR_3_w$;
wire  _zy_simnet_cio_4;
wire  _zy_simnet_cio_5;
wire  _zy_simnet_cio_6;
wire  [0:127] _zy_simnet_CiphIn_7_w$ ;
wire  _zy_simnet_CiphInVldR_8_w$;
wire  _zy_simnet_CiphInLastR_9_w$;
wire  _zy_simnet_cio_10;
wire  [0:255] _zy_simnet_KeyIn_11_w$ ;
wire  _zy_simnet_KeyInVld_12_w$;
wire  _zy_simnet_cio_13;
wire  [0:127] _zy_simnet_fifo_in_14_w$ ;
wire  _zy_simnet_fifo_in_valid_15_w$;
wire  _zy_simnet_cio_16;
assign  drng_256_out = fifo_out;
assign  _zy_simnet_seed_expired_0_w$ = seed_expired;
assign  _zy_simnet_drng_idle_1_w$ = drng_idle;
assign  AesCiphOutR = _zy_simnet_AesCiphOutR_2_w$;
assign  AesCiphOutVldR = _zy_simnet_AesCiphOutVldR_3_w$;
assign  _zy_simnet_cio_4 = 1'b0;
assign  _zy_simnet_cio_5 = 1'b0;
assign  _zy_simnet_cio_6 = 1'b1;
assign  _zy_simnet_CiphIn_7_w$ = CiphIn;
assign  _zy_simnet_CiphInVldR_8_w$ = CiphInVldR;
assign  _zy_simnet_CiphInLastR_9_w$ = CiphInLastR;
assign  _zy_simnet_cio_10 = 1'b1;
assign  _zy_simnet_KeyIn_11_w$ = KeyIn;
assign  _zy_simnet_KeyInVld_12_w$ = KeyInVld;
assign  _zy_simnet_cio_13 = 1'b0;
assign  _zy_simnet_fifo_in_14_w$ = fifo_in;
assign  _zy_simnet_fifo_in_valid_15_w$ = fifo_in_valid;
assign  _zy_simnet_cio_16 = 1'b0;
AesSecIStub AesSecIStub(
  .AesCiphOutR(_zy_simnet_AesCiphOutR_2_w$) ,
  .AesCiphOutVldR(_zy_simnet_AesCiphOutVldR_3_w$) ,
  .KeyInitStall(KeyInStall) ,
  .CiphInStall(CiphInStall) ,
  .Aes128(_zy_simnet_cio_4) ,
  .Aes192(_zy_simnet_cio_5) ,
  .Aes256(_zy_simnet_cio_6) ,
  .CiphIn(_zy_simnet_CiphIn_7_w$) ,
  .CiphInVldR(_zy_simnet_CiphInVldR_8_w$) ,
  .CiphInLastR(_zy_simnet_CiphInLastR_9_w$) ,
  .EncryptEn(_zy_simnet_cio_10) ,
  .KeyIn(_zy_simnet_KeyIn_11_w$) ,
  .KeyInitVldR(_zy_simnet_KeyInVld_12_w$) ,
  .AesCiphOutStall(_zy_simnet_cio_13) ,
  .clk(clk) ,
  .rst_n(rst_n) ); 
cr_kme_fifo_xcm59 rnd_fifo(
  .fifo_in_stall(fifo_in_stall) ,
  .fifo_out(fifo_out) ,
  .fifo_out_valid(drng_valid) ,
  .fifo_overflow(drng_fifo_overflow) ,
  .fifo_underflow(drng_fifo_underflow) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .fifo_in(_zy_simnet_fifo_in_14_w$) ,
  .fifo_in_valid(_zy_simnet_fifo_in_valid_15_w$) ,
  .fifo_out_ack(drng_ack) ,
  .fifo_in_stall_override(_zy_simnet_cio_16) ); 
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     cur_state <= SEED_EXPIRED;
    end
   else
    begin
     cur_state <= nxt_state;
    end
  end
always 
 @(*)
  begin
   nxt_state = cur_state;
   case (cur_state)
    SEED_EXPIRED:
     begin
      if (start)
       begin
        nxt_state = SET_KEY;
       end
     end
    SET_KEY:
     begin
      if (( !KeyInStall ))
       begin
        nxt_state = SEND_BLKS;
       end
     end
    SEND_BLKS:
     begin
      if (CiphInLastR)
       begin
        nxt_state = RESULT;
       end
     end
    RESULT:
     begin
      if ((out_count == 3'b100))
       begin
        if ((reseed_counter_limit == reseed_counter))
         begin
          nxt_state = SEED_EXPIRED;
         end
        else
         begin
          nxt_state = SET_KEY;
         end
       end
     end
   endcase
  end
always 
 @(*)
  begin
   CiphIn = 128'b0;
   CiphInVldR = 1'b0;
   CiphInLastR = 1'b0;
   KeyInVld = 1'b0;
   KeyIn = 256'b0;
   fifo_in_valid = 1'b0;
   fifo_in = 128'b0;
   seed_expired = (nxt_state == SEED_EXPIRED);
   drng_idle = (nxt_state == SEED_EXPIRED);
   if ((cur_state == SET_KEY))
    begin
     if (( !KeyInStall ))
      begin
       KeyInVld = 1'b1;
       KeyIn = internal_state_key;
      end
    end
   if ((cur_state == SEND_BLKS))
    begin
     if (( !CiphInStall ))
      begin
       if (((in_count == 3'b0) | (in_count == 3'b01)))
        begin
         if (( !fifo_in_stall ))
          begin
          CiphInVldR = 1'b1;
          CiphInLastR = 1'b0;
          CiphIn = (internal_state_value + in_count);
          end
         else
          begin
          drng_idle = 1'b1;
          end
        end
       else
        begin
         CiphInVldR = 1'b1;
         CiphInLastR = (in_count == 3'b100);
         CiphIn = (internal_state_value + in_count);
        end
      end
    end
   if ((cur_state == RESULT))
    begin
     if (AesCiphOutVldR)
      begin
       if (((out_count == 3'b0) | (out_count == 3'b01)))
        begin
         fifo_in_valid = 1'b1;
         fifo_in = AesCiphOutR;
        end
      end
    end
  end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     reseed_counter <= 48'b0;
     reseed_counter_limit <= 48'b0;
    end
   else
    if ((cur_state == SEED_EXPIRED))
     begin
      reseed_counter <= 48'b0;
      reseed_counter_limit <= seed_life;
     end
    else
     if (CiphInLastR)
      begin
       reseed_counter <= (reseed_counter + 48'b01);
      end
  end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     internal_state_key <= 256'b0;
    end
   else
    if ((cur_state == SEED_EXPIRED))
     begin
      internal_state_key <= seed[383:128];
     end
    else
     if (AesCiphOutVldR)
      begin
       if ((out_count == 3'b010))
        internal_state_key[255:128] <= AesCiphOutR;
       if ((out_count == 3'b011))
        internal_state_key[127:0] <= AesCiphOutR;
      end
  end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     internal_state_value <= 128'b0;
    end
   else
    if ((cur_state == SEED_EXPIRED))
     begin
      internal_state_value <= seed[127:0];
     end
    else
     if (KeyInVld)
      begin
       internal_state_value <= (internal_state_value + 128'b01);
      end
     else
      if (AesCiphOutVldR)
       begin
        if ((out_count == 3'b100))
         internal_state_value <= AesCiphOutR;
       end
  end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     in_count <= 3'b0;
     out_count <= 3'b0;
    end
   else
    if ((cur_state == SET_KEY))
     begin
      in_count <= 3'b0;
      out_count <= 3'b0;
     end
    else
     begin
      if (CiphInVldR)
       in_count <= ((in_count == 3'b100) ? 3'b0 : (in_count + 3'b01));
      if (AesCiphOutVldR)
       out_count <= ((out_count == 3'b100) ? 3'b0 : (out_count + 3'b01));
     end
  end
endmodule

