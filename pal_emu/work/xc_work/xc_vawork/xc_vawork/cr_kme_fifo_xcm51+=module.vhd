architecture module of cr_kme_fifo_xcm51 is
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 genblk1  "
  component nx_fifo_xcm26
    generic (
      DEPTH : integer := 4 ;
      WIDTH : integer := 611 ;
      DATA_RESET : integer := 1 ;
      UNDERFLOW_ASSERT : integer := 1 ;
      OVERFLOW_ASSERT : integer := 1
    ) ;
    port (
      empty : out std_logic ;
      full : out std_logic ;
      underflow : out std_logic ;
      overflow : out std_logic ;
      used_slots : out std_logic_vector(2 downto 0) ;
      free_slots : out std_logic_vector(2 downto 0) ;
      rdata : out std_logic_vector(610 downto 0) ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      wen : in std_logic := 'X' ;
      ren : in std_logic := 'X' ;
      clear : in std_logic := 'X' ;
    wdata : in std_logic_vector(610 downto 0) := (others => 'X') ) ;
  end component ;

  signal ren : std_logic ;
  signal empty : std_logic ;
  signal free_slots : std_logic_vector(2 downto 0) ;
  signal _zy_simnet_dio_0 : std_logic ;
  signal _zy_simnet_dio_1 : std_logic_vector(0 to 2) ;
  signal _zy_simnet_cio_2 : std_logic ;

begin
  fifo_out_valid <= not(empty) ;
  ren <= (fifo_out_valid and fifo_out_ack) ;
  _zy_simnet_cio_2 <= '0' ;
  std_fifo : nx_fifo_xcm26
    port map (
       empty => empty
      ,full => _zy_simnet_dio_0
      ,underflow => fifo_underflow
      ,overflow => fifo_overflow
      ,used_slots => _zy_simnet_dio_1
      ,free_slots => free_slots
      ,rdata => fifo_out
      ,clk => clk
      ,rst_n => rst_n
      ,wen => fifo_in_valid
      ,ren => ren
      ,clear => _zy_simnet_cio_2
      ,wdata => fifo_in
    ) ;
  Generate1 : if genblk1 : (TRUE) generate
  begin
    fifo_in_stall <= (boolean_to_std(ext(std_logic_vector'(std_logic'('0') &
     free_slots),32) <= std_logic_vector'("00000000000000000000000000000000"))
     or fifo_in_stall_override) ;
  end generate ;
end module;
