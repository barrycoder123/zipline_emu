library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_gfifo_merge_port is
  generic (
    FIRST_IN_CHAIN : integer := 0;
    LAST_IN_CHAIN : integer := 0;
    I1_DW : std_logic_vector := signed(integer_to_std(64,32));
    I2_DW : std_logic_vector := signed(integer_to_std(64,32));
    constant O_DW : std_logic_vector := ((ext(I1_DW,$QKTN_MAX($QKTN_MAX
    (I1_DW'length,I2_DW'length),32)) + ext(I2_DW,$QKTN_MAX($QKTN_MAX
    (I1_DW'length,I2_DW'length),32))) + integer_to_std(32,$QKTN_MAX($QKTN_MAX
    (I1_DW'length,I2_DW'length),32)))
  ) ;
  port (
    i1req : in std_logic ;
    i1cbid : in std_logic_vector(19 downto 0) ;
    i1len : in std_logic_vector(11 downto 0) ;
    i1data : in std_logic_vector(conv_integer((ext(I1_DW,$QKTN_MAX
    (I1_DW'length,32)) - integer_to_std(1,$QKTN_MAX(I1_DW'length,32)))) downto 0
    ) ;
    i2req : in std_logic ;
    i2cbid : in std_logic_vector(19 downto 0) ;
    i2len : in std_logic_vector(11 downto 0) ;
    i2data : in std_logic_vector(conv_integer(it_cond_op(ext(I2_DW,$QKTN_MAX
    (I2_DW'length,32)) = integer_to_std(0,$QKTN_MAX(I2_DW'length,32)
    ),integer_to_std(0,$QKTN_MAX(I2_DW'length,32)),(ext(I2_DW,$QKTN_MAX
    (I2_DW'length,32)) - integer_to_std(1,$QKTN_MAX(I2_DW'length,32))))) downto
     0) ;
    i2tgl : in std_logic ;
    LBfull : in std_logic ;
    mreq : out std_logic ;
    mcbid : out std_logic_vector(19 downto 0) ;
    mlen : out std_logic_vector(11 downto 0) ;
    mdata : out std_logic_vector(conv_integer((ext(O_DW,$QKTN_MAX($QKTN_MAX
    (I1_DW'length,I2_DW'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
    (I1_DW'length,I2_DW'length),32)))) downto 0) ;
  mtgl : out std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_gfifo_merge_port: entity is 1 ;
  attribute upf_always_on of ixc_gfifo_merge_port: entity is 1 ;
end ixc_gfifo_merge_port ;
