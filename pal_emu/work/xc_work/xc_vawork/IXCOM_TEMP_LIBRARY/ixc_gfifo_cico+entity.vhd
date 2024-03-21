library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_gfifo_cico is
  generic (
    N : std_logic_vector := signed(integer_to_std(16,32))
  ) ;
  port (
    ci : out std_logic_vector(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
     integer_to_std(1,$QKTN_MAX(N'length,32)))) downto 0) ;
    co : in std_logic_vector(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
     integer_to_std(1,$QKTN_MAX(N'length,32)))) downto 0) ;
    GFLock : in std_logic ;
  anyReq : out std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_gfifo_cico: entity is 1 ;
  attribute upf_always_on of ixc_gfifo_cico: entity is 1 ;
  constant G : integer := 4 ;
  constant M : std_logic_vector := (ext(N,$QKTN_MAX(N'length,32)) /
   integer_to_std(4,$QKTN_MAX(N'length,32))) ;
  constant R : std_logic_vector := (ext(N,$QKTN_MAX(N'length,32)) - (ext
  (integer_to_std(4,$QKTN_MAX(N'length,32)) * ext(M,$QKTN_MAX(N'length,32)
  ),$QKTN_MAX(N'length,32)))) ;
end ixc_gfifo_cico ;
