library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_q_poll_ctrl is
  generic (
    IS_SV : integer := 1;
    ARCH : integer := 0
  ) ;
  port (
    pollReq : in std_logic ;
    pollEn : out std_logic ;
  reqId0 : out std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of pollEn: signal is 1 ;
  attribute _2_state_ of reqId0: signal is 1 ;
  attribute _2_state_ of ixc_q_poll_ctrl: entity is 1 ;
  attribute upf_always_on of ixc_q_poll_ctrl: entity is 1 ;
  constant IS_PTM : std_logic := boolean_to_std((ARCH = 1 or ARCH = 2)) ;
end ixc_q_poll_ctrl ;
