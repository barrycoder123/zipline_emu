library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity cr_kme_aes_256_drng is
  port (
    seed_expired : out std_logic ;
    drng_valid : out std_logic ;
    drng_256_out : out std_logic_vector(127 downto 0) ;
    drng_fifo_overflow : out std_logic ;
    drng_fifo_underflow : out std_logic ;
    drng_idle : out std_logic ;
    start : in std_logic ;
    seed : in std_logic_vector(383 downto 0) ;
    seed_life : in std_logic_vector(47 downto 0) ;
    drng_ack : in std_logic ;
    clk : in std_logic ;
  rst_n : in std_logic ) ;
  attribute _2_state_: integer;
  subtype drng_fsm is std_logic_vector(1 downto 0) ;
  constant DUMMY0 : drng_fsm := std_logic_vector'("00") ;
  constant SET_KEY : drng_fsm := std_logic_vector'("01") ;
  constant SEND_BLKS : drng_fsm := std_logic_vector'("10") ;
  constant RESULT : drng_fsm := std_logic_vector'("11") ;
end cr_kme_aes_256_drng ;
