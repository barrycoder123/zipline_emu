library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_sample_bit is
  generic (
    WIDTH : integer := 1;
    RD_TYPE : integer := 0;
    subtype StateType is std_logic;
    type DUMMY2 is array(integer range <>) of std_logic
  ) ;
  port (
    sv : out DUMMY2((WIDTH - 1) downto 0) ;
    -- quickturn array_with_packed_dim sv 2 0
  v : in DUMMY2((WIDTH - 1) downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  -- quickturn array_with_packed_dim v 2 0
  attribute upf_always_on of ixc_sample_bit: entity is 1 ;
end ixc_sample_bit ;
