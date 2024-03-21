LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY ixc_pio_call_0_0_0_0_1 IS
  GENERIC (
    S2HDW : integer := 1;
    H2SDW : integer := 1;
    MAIDW : integer := 0;
    LTIDW : integer := 0;
    ISSVA : integer := 0;
    CONSTANT S2HDW1 : integer := it_cond_op(S2HDW = 0,0,(S2HDW - 1));
    CONSTANT H2SDW1 : integer := it_cond_op(H2SDW = 0,0,(H2SDW - 1));
    CONSTANT MAIDW1 : integer := it_cond_op(MAIDW = 0,0,(MAIDW - 1));
    CONSTANT LTIDW1 : integer := it_cond_op(LTIDW = 0,0,(LTIDW - 1))
  ) ;
  PORT (
    s2h_notify : OUT std_logic ;
    s2h_data : OUT std_logic_vector(S2HDW1 DOWNTO 0) ;
    from_isf : IN std_logic ;
    h2s_notify : IN std_logic ;
    h2s_data : IN std_logic_vector(H2SDW1 DOWNTO 0) ;
    to_osf : OUT std_logic ;
    maid : IN std_logic_vector(MAIDW1 DOWNTO 0) ;
  ltid : IN std_logic_vector(LTIDW1 DOWNTO 0) ) ;
  ATTRIBUTE _2_state_: integer;
  ATTRIBUTE upf_always_on : integer;
  ATTRIBUTE _2_state_ OF s2h_data: SIGNAL IS 1 ;
  ATTRIBUTE _2_state_ OF h2s_data: SIGNAL IS 1 ;
  ATTRIBUTE _2_state_ OF maid: SIGNAL IS 1 ;
  ATTRIBUTE _2_state_ OF ltid: SIGNAL IS 1 ;
  ATTRIBUTE _2_state_ OF ixc_pio_call_0_0_0_0_1 : ENTITY IS 1 ;
  ATTRIBUTE upf_always_on OF ixc_pio_call_0_0_0_0_1 : ENTITY IS 1 ;
END;


                