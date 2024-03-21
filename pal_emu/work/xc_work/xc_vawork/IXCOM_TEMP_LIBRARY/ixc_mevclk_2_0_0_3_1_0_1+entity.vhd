LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY ixc_mevClk_2_0_0_3_1_0_1 IS
  GENERIC (
    WIDTH : std_logic_vector := signed(integer_to_std(4,32));
    DUMMY3 : std_logic_vector := signed(integer_to_std(0,32));
    HOLD : integer := 0;
    IS_EDGED : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO 0
    ) := integer_to_std(0,ABS(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)
    ) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1);
    POLARITY : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO 0
    ) := integer_to_std(0,ABS(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)
    ) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1);
    DS : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
     integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO 0) := integer_to_std
    (0,ABS(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
    (1,$QKTN_MAX(WIDTH'length,32)))))+1);
    DM : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
     integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO 0) := integer_to_std
    (0,ABS(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
    (1,$QKTN_MAX(WIDTH'length,32)))))+1);
    EVOUT : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32))
     - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO 0) :=
     integer_to_std(0,ABS(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
     integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1);
    WAIT_EV : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32
    )) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO 0) :=
     integer_to_std(0,ABS(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
     integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)
  ) ;
  PORT (
    xclk : OUT std_logic ;
    clks : IN std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32
    )) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO 0) ;
    ens : IN std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)
    ) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO 0) ;
    DUMMY5 : IN std_logic ;
    DUMMY7 : IN std_logic ;
    active : OUT std_logic ;
    busy : OUT std_logic ;
  bwOn : OUT std_logic ) ;
  ATTRIBUTE _2_state_: integer;
  ATTRIBUTE upf_always_on : integer;
  ATTRIBUTE _2_state_ OF ixc_mevClk_2_0_0_3_1_0_1 : ENTITY IS 1 ;
  ATTRIBUTE upf_always_on OF ixc_mevClk_2_0_0_3_1_0_1 : ENTITY IS 1 ;
  CONSTANT DMS : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO 0)
   := ext(ext(DS,ABS(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) OR ext(DM,ABS(conv_integer
  ((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (WIDTH'length,32)))))+1),ABS(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32
  )) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
END;


                