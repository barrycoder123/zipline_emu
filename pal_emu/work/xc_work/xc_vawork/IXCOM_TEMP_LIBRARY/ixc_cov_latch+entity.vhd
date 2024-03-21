library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_cov_latch is
  generic (
    WIDTH : std_logic_vector := signed(integer_to_std(1,32));
    USE_RESET : integer := 0
  ) ;
  port (
    cout : out std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0
    ) ;
    cin : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)
    ) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0) ;
  rst : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of cout: signal is 1 ;
  attribute _2_state_ of ixc_cov_latch: entity is 1 ;
  attribute upf_always_on of ixc_cov_latch: entity is 1 ;
end ixc_cov_latch ;