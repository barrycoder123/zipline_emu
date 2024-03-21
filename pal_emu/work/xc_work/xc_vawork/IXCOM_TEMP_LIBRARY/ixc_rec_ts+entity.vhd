library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_rec_ts is
  port (
    recTs : in std_logic ;
    ecmTs : out std_logic_vector(39 downto 0) ;
    tbSync : out std_logic ;
  recAck : out std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ecmTs: signal is 1 ;
  attribute _2_state_ of tbSync: signal is 1 ;
  attribute _2_state_ of recAck: signal is 1 ;
  attribute _2_state_ of ixc_rec_ts: entity is 1 ;
  attribute upf_always_on of ixc_rec_ts: entity is 1 ;
end ixc_rec_ts ;
