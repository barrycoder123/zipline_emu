architecture module of nx_fifo_xcm27 is
  type DUMMY0 is array(integer range <>) of std_logic_vector(33 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "depth_n"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "depth_n.genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 depth_n  "
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 genblk1  "
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component nx_fifo_ctrl_xcm38
    generic (
      DEPTH : integer := 2 ;
      OVERFLOW_ASSERT : integer := 1 ;
      UNDERFLOW_ASSERT : integer := 1
    ) ;
    port (
      empty : out std_logic ;
      full : out std_logic ;
      used_slots : out std_logic_vector(1 downto 0) ;
      free_slots : out std_logic_vector(1 downto 0) ;
      rptr : out std_logic_vector(0 downto 0) ;
      wptr : out std_logic_vector(0 downto 0) ;
      underflow : out std_logic ;
      overflow : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      wen : in std_logic := 'X' ;
      ren : in std_logic := 'X' ;
    clear : in std_logic := 'X' ) ;
  end component ;

  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;

begin
  _zz_strnp_2 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY1
      ,underflow
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY2
      ,overflow
    ) ;
  Generate1 : if depth_n : (TRUE) generate
    signal rptr : std_logic_vector(0 downto 0) ;
    signal wptr : std_logic_vector(0 downto 0) ;
    signal DUMMY3 : std_logic ;
    signal DUMMY4 : std_logic ;
    signal r_data : DUMMY0(1 downto 0) ;
  begin
    _zz_strnp_0 : ixc_assign
      generic map(W => 1)
      port map (
         underflow
        ,DUMMY3
      ) ;
    _zz_strnp_1 : ixc_assign
      generic map(W => 1)
      port map (
         overflow
        ,DUMMY4
      ) ;
    Generate2 : if genblk1 : (TRUE) generate
    begin
      rdata <= "0000000000000000000000000000000000" when (empty)='1' else r_data
      (conv_integer(rptr)) ;
    end generate ;

    process --:o45
    (clk)
    begin
      if (clk'event and clk = '1') then
        if (((wen)='1' and (full = '0'))) then
          r_data(conv_integer(wptr)) <= wdata ;
        end if;
      end if ;
    end process ;
    fifo_ctrl : nx_fifo_ctrl_xcm38
      port map (
         empty => empty
        ,full => full
        ,used_slots => used_slots
        ,free_slots => free_slots
        ,rptr => rptr
        ,wptr => wptr
        ,underflow => DUMMY3
        ,overflow => DUMMY4
        ,clk => clk
        ,rst_n => rst_n
        ,wen => wen
        ,ren => ren
        ,clear => clear
      ) ;
  end generate ;
end module;
