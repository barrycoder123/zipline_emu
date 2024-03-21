library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_gfifo2_port is
  generic (
    DATA_WIDTH : std_logic_vector := signed(integer_to_std(512,32));
    SHARE_FLAG : std_logic_vector := signed(integer_to_std(0,32));
    constant PACKET_WIDTH : std_logic_vector := (ext(DATA_WIDTH,$QKTN_MAX
    (DATA_WIDTH'length,32)) + integer_to_std(32,$QKTN_MAX(DATA_WIDTH'length,32))
    );
    constant PACKET_WORDS : std_logic_vector := ((ext(PACKET_WIDTH,$QKTN_MAX
    (DATA_WIDTH'length,32)) + integer_to_std(63,$QKTN_MAX(DATA_WIDTH'length,32))
    ) / integer_to_std(64,$QKTN_MAX(DATA_WIDTH'length,32)))
  ) ;
  port (
    req : in std_logic ;
    cbid : in std_logic_vector(19 downto 0) ;
    len : in std_logic_vector(11 downto 0) ;
    data : in std_logic_vector(conv_integer((ext(DATA_WIDTH,$QKTN_MAX
    (DATA_WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(DATA_WIDTH'length,32)))
    ) downto 0) ;
    pktEn : out std_logic_vector(conv_integer((ext(PACKET_WORDS,$QKTN_MAX
    (DATA_WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(DATA_WIDTH'length,32)))
    ) downto 0) ;
  pktData : out std_logic_vector(conv_integer(((ext(ext(PACKET_WORDS,$QKTN_MAX
  (DATA_WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX(DATA_WIDTH'length,32)
  ),$QKTN_MAX(DATA_WIDTH'length,32))) - integer_to_std(1,$QKTN_MAX
  (DATA_WIDTH'length,32)))) downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_gfifo2_port: entity is 1 ;
  attribute upf_always_on of ixc_gfifo2_port: entity is 1 ;
end ixc_gfifo2_port ;
