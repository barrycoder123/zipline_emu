library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_mevClk is
  generic (
    WIDTH : std_logic_vector := signed(integer_to_std(4,32));
    DUMMY3 : std_logic_vector := signed(integer_to_std(0,32));
    HOLD : integer := 0;
    IS_EDGED : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0
    ) := integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)
    ) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1);
    POLARITY : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0
    ) := integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)
    ) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1);
    DS : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
     integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0) := integer_to_std
    (0,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
    (1,$QKTN_MAX(WIDTH'length,32)))))+1);
    DM : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
     integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0) := integer_to_std
    (0,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
    (1,$QKTN_MAX(WIDTH'length,32)))))+1);
    EVOUT : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32))
     - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0) :=
     integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
     integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1);
    WAIT_EV : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32
    )) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0) :=
     integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
     integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)
  ) ;
  port (
    xclk : out std_logic ;
    clks : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32
    )) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0) ;
    ens : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)
    ) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0) ;
    DUMMY5 : in std_logic ;
    DUMMY7 : in std_logic ;
    active : out std_logic ;
    busy : out std_logic ;
  bwOn : out std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_mevClk: entity is 1 ;
  attribute upf_always_on of ixc_mevClk: entity is 1 ;
  constant DMS : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0)
   := ext(ext(DS,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) or ext(DM,abs(conv_integer
  ((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (WIDTH'length,32)))))+1),abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32
  )) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
end ixc_mevClk ;
