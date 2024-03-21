library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_scg_gfifo_port is
  generic (
    DW : std_logic_vector := signed(integer_to_std(512,32));
    SHARE : integer := 0;
    USETIME : std_logic_vector := signed(integer_to_std(1,32));
    BUFL : integer := 4;
    IS_SV_CHANNEL : integer := 1
  ) ;
  port (
    tkout : out std_logic ;
    tkin : in std_logic ;
    ireq : in std_logic ;
    cbid : in std_logic_vector(19 downto 0) ;
    len : in std_logic_vector(11 downto 0) ;
  idata : in std_logic_vector(conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) -
   integer_to_std(1,$QKTN_MAX(DW'length,32)))) downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_scg_gfifo_port: entity is 1 ;
  attribute upf_always_on of ixc_scg_gfifo_port: entity is 1 ;
  constant XW : std_logic_vector := it_cond_op(ext(DW,$QKTN_MAX(DW'length,32)) >
   integer_to_std(512,$QKTN_MAX(DW'length,32)),integer_to_std(512,$QKTN_MAX
  (DW'length,32)),ext(DW,$QKTN_MAX(DW'length,32))) ;
  constant SEL1 : std_logic_vector := it_cond_op(ext(DW,$QKTN_MAX(DW'length,32))
   > integer_to_std(512,$QKTN_MAX(DW'length,32)),((ext(DW,$QKTN_MAX(DW'length,32
  )) - integer_to_std(1,$QKTN_MAX(DW'length,32))) / integer_to_std(512,$QKTN_MAX
  (DW'length,32))),integer_to_std(0,$QKTN_MAX(DW'length,32))) ;
end ixc_scg_gfifo_port ;
