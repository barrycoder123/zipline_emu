library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_dutexcl_h2s_port_sync is
  generic (
    MODE : integer := 0;
    BA_WIDTH : integer := 0;
    NBA_WIDTH : integer := 0
  ) ;
  port (
    h2s_trigger : in std_logic ;
    triggerClk : out std_logic ;
    swp_ba : out std_logic_vector(0 to (BA_WIDTH - 1)) ;
    swp_nba : out std_logic_vector(0 to (NBA_WIDTH - 1)) ;
    reqSwFailSafe : out std_logic ;
    h2sPortEvent : in std_logic ;
    runModeIsNBRUN : in std_logic ;
    currentRunModeWasNBRUN : out std_logic ;
  gfifoReqAck : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of triggerClk: signal is 1 ;
  attribute _2_state_ of swp_ba: signal is 1 ;
  attribute _2_state_ of swp_nba: signal is 1 ;
  attribute _2_state_ of reqSwFailSafe: signal is 1 ;
  attribute _2_state_ of currentRunModeWasNBRUN: signal is 1 ;
  attribute _2_state_ of ixc_dutexcl_h2s_port_sync: entity is 1 ;
  attribute upf_always_on of ixc_dutexcl_h2s_port_sync: entity is 1 ;
end ixc_dutexcl_h2s_port_sync ;
