library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_ml_gfifo_root_port is
  port (
    tkout : out std_logic ;
    tkin : in std_logic ;
    RGFreq : in std_logic ;
    CGFcbid : out std_logic_vector(19 downto 0) ;
    CGFlen : out std_logic_vector(11 downto 0) ;
  CGFidata : out std_logic_vector(511 downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_ml_gfifo_root_port: entity is 1 ;
  attribute upf_always_on of ixc_ml_gfifo_root_port: entity is 1 ;
end ixc_ml_gfifo_root_port ;
