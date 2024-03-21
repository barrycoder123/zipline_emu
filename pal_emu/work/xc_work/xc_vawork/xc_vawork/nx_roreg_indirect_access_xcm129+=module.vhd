architecture module of nx_roreg_indirect_access_xcm129 is
  -- quickturn multiple_driver_resolution
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component ixc_context_read
    generic (
      WIDTH : std_logic_vector := signed(integer_to_std(32,32))
    ) ;
    port (
    rdata : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0
    ) := (others => 'X') ) ;
  end component ;

  component nx_indirect_access_cntrl_xcm111
    generic (
      MEM_TYPE : std_logic_vector := std_logic_vector'("0010") ;
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("10000101000") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("10000011100") ;
      ALIGNMENT : integer := 2 ;
      N_TIMER_BITS : integer := 0 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_DATA_BITS : integer := 64 ;
      N_TABLES : integer := 1 ;
      N_ENTRIES : integer := 32 ;
      N_INIT_INC_BITS : integer := 0 ;
      CAPABILITIES : std_logic_vector(15 downto 0) := std_logic_vector'
      ("1000000000100011") ;
      RESET_DATA : std_logic_vector(63 downto 0) := std_logic_vector'
      ("0000000000000000000000000000000000000000000000000000000000000000") ;
      type DUMMY0 is array(integer range <>) of std_logic_vector(4 downto 0)
    ) ;
    port (
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      wr_stb : in std_logic := 'X' ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(4 downto 0) := (others => 'X') ;
      cmnd_table_id : in std_logic_vector(0 downto 0) := (others => 'X') ;
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(4 downto 0) ;
      stat_table_id : out std_logic_vector(0 downto 0) ;
      capability_lst : out std_logic_vector(15 downto 0) ;
      capability_type : out std_logic_vector(3 downto 0) ;
      enable : out std_logic ;
      addr_limit : in DUMMY0(0 downto 0) := (others => (others => 'X')) ;
      wr_dat : in std_logic_vector(63 downto 0) := (others => 'X') ;
      rd_dat : out std_logic_vector(63 downto 0) ;
      sw_cs : out std_logic ;
      sw_ce : out std_logic ;
      sw_we : out std_logic ;
      sw_add : out std_logic_vector(4 downto 0) ;
      sw_wdat : out std_logic_vector(63 downto 0) ;
      sw_rdat : in std_logic_vector(63 downto 0) := (others => 'X') ;
      sw_match : in std_logic := 'X' ;
      sw_aindex : in std_logic_vector(3 downto 0) := (others => 'X') ;
      grant : in std_logic := 'X' ;
      yield : out std_logic ;
    reset : out std_logic ) ;
  end component ;

  signal DUMMY1 : std_logic_vector(0 to 2) ;
  signal DUMMY2 : std_logic_vector(0 to 4) ;
  signal DUMMY3 : std_logic_vector(0 to 4) ;
  signal DUMMY4 : std_logic_vector(0 to 15) ;
  signal DUMMY5 : std_logic_vector(0 to 3) ;
  signal DUMMY6 : std_logic_vector(0 to 63) ;
  signal _zy_simnet_cio_6 : std_logic ;
  signal DUMMY7 : std_logic_vector(0 to 2) ;
  signal DUMMY8 : std_logic_vector(0 to 4) ;
  signal DUMMY9 : std_logic_vector(0 to 4) ;
  signal _zy_simnet_dio_10 : std_logic ;
  signal DUMMY10 : std_logic_vector(0 to 15) ;
  signal DUMMY11 : std_logic_vector(0 to 3) ;
  signal _zy_simnet_dio_13 : std_logic ;
  signal DUMMY12 : std_logic_vector(0 to 4) ;
  signal _zy_simnet_cio_15 : std_logic_vector(0 to 63) ;
  signal DUMMY13 : std_logic_vector(0 to 63) ;
  signal DUMMY14 : std_logic ;
  signal _zy_simnet_dio_18 : std_logic ;
  signal DUMMY15 : std_logic ;
  signal DUMMY16 : std_logic_vector(0 to 4) ;
  signal DUMMY17 : std_logic_vector(0 to 63) ;
  signal DUMMY18 : std_logic_vector(0 to 63) ;
  signal _zy_simnet_cio_23 : std_logic ;
  signal _zy_simnet_cio_24 : std_logic_vector(0 to 3) ;
  signal _zy_simnet_cio_25 : std_logic ;
  signal _zy_simnet_dio_26 : std_logic ;
  signal DUMMY19 : std_logic ;
  signal reset : std_logic ;
  signal sw_add : std_logic_vector(4 downto 0) ;
  signal sw_cs : std_logic ;
  signal sw_wdat : std_logic_vector(63 downto 0) ;
  signal sw_rdat : std_logic_vector(63 downto 0) ;
  signal sw_we : std_logic ;
  signal addr_limit : std_logic_vector(4 downto 0) ;
  signal _zyixc_ctx_rdata_29 : DUMMY0(0 to 31) ;
  signal _svmls_var_L189_2 : std_logic_vector(63 downto 0) ;
  signal _svmls_mah_L0_0 : integer ;
  signal _svmls_dummy_ret : integer ;
  signal DUMMY20 : std_logic_vector(2047 downto 0) ;
  type DUMMY22 is array(integer range <>) of std_logic_vector(4 downto 0) ;
  signal DUMMY21 : DUMMY22(0 downto 0) ; 
  -- quickturn keep_net _zyixc_ctx_rdata_29

begin
  addr_limit <= "11111" ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 3)
    port map (
       DUMMY1
      ,stat_code
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY2
      ,stat_datawords
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY3
      ,stat_addr
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY4
      ,capability_lst
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY5
      ,capability_type
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY6
      ,rd_dat
    ) ;
  _zy_simnet_cio_6 <= '0' ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 3)
    port map (
       stat_code
      ,DUMMY7
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 5)
    port map (
       stat_datawords
      ,DUMMY8
    ) ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 5)
    port map (
       stat_addr
      ,DUMMY9
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 16)
    port map (
       capability_lst
      ,DUMMY10
    ) ;
  _zz_strnp_12 : ixc_assign
    generic map(W => 4)
    port map (
       capability_type
      ,DUMMY11
    ) ;
  _zz_strnp_13 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY12
      ,addr_limit
    ) ;
  _zy_simnet_cio_15 <=
   "0000000000000000000000000000000000000000000000000000000000000000" ;
  _zz_strnp_14 : ixc_assign
    generic map(W => 64)
    port map (
       rd_dat
      ,DUMMY13
    ) ;
  _zz_strnp_15 : ixc_assign
    generic map(W => 1)
    port map (
       sw_cs
      ,DUMMY14
    ) ;
  _zz_strnp_16 : ixc_assign
    generic map(W => 1)
    port map (
       sw_we
      ,DUMMY15
    ) ;
  _zz_strnp_17 : ixc_assign
    generic map(W => 5)
    port map (
       sw_add
      ,DUMMY16
    ) ;
  _zz_strnp_18 : ixc_assign
    generic map(W => 64)
    port map (
       sw_wdat
      ,DUMMY17
    ) ;
  _zz_strnp_19 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY18
      ,sw_rdat
    ) ;
  _zy_simnet_cio_23 <= '0' ;
  _zy_simnet_cio_24 <= "0000" ;
  _zy_simnet_cio_25 <= '1' ;
  _zz_strnp_20 : ixc_assign
    generic map(W => 1)
    port map (
       reset
      ,DUMMY19
    ) ;
  _zzixc_ctxrd_0 : ixc_context_read
    generic map(WIDTH => integer_to_std(2048,32))
    port map (
       DUMMY20
    ) ;
  DUMMY20 <= std_logic_vector'(_zyixc_ctx_rdata_29(0)(63 downto 0) &
   _zyixc_ctx_rdata_29(1)(63 downto 0) & _zyixc_ctx_rdata_29(2)(63 downto 0) &
   _zyixc_ctx_rdata_29(3)(63 downto 0) & _zyixc_ctx_rdata_29(4)(63 downto 0) &
   _zyixc_ctx_rdata_29(5)(63 downto 0) & _zyixc_ctx_rdata_29(6)(63 downto 0) &
   _zyixc_ctx_rdata_29(7)(63 downto 0) & _zyixc_ctx_rdata_29(8)(63 downto 0) &
   _zyixc_ctx_rdata_29(9)(63 downto 0) & _zyixc_ctx_rdata_29(10)(63 downto 0) &
   _zyixc_ctx_rdata_29(11)(63 downto 0) & _zyixc_ctx_rdata_29(12)(63 downto 0) &
   _zyixc_ctx_rdata_29(13)(63 downto 0) & _zyixc_ctx_rdata_29(14)(63 downto 0) &
   _zyixc_ctx_rdata_29(15)(63 downto 0) & _zyixc_ctx_rdata_29(16)(63 downto 0) &
   _zyixc_ctx_rdata_29(17)(63 downto 0) & _zyixc_ctx_rdata_29(18)(63 downto 0) &
   _zyixc_ctx_rdata_29(19)(63 downto 0) & _zyixc_ctx_rdata_29(20)(63 downto 0) &
   _zyixc_ctx_rdata_29(21)(63 downto 0) & _zyixc_ctx_rdata_29(22)(63 downto 0) &
   _zyixc_ctx_rdata_29(23)(63 downto 0) & _zyixc_ctx_rdata_29(24)(63 downto 0) &
   _zyixc_ctx_rdata_29(25)(63 downto 0) & _zyixc_ctx_rdata_29(26)(63 downto 0) &
   _zyixc_ctx_rdata_29(27)(63 downto 0) & _zyixc_ctx_rdata_29(28)(63 downto 0) &
   _zyixc_ctx_rdata_29(29)(63 downto 0) & _zyixc_ctx_rdata_29(30)(63 downto 0) &
   _zyixc_ctx_rdata_29(31)(63 downto 0)) ;
  u_cntrl : nx_indirect_access_cntrl_xcm111
    port map (
       clk => clk
      ,rst_n => rst_n
      ,wr_stb => wr_stb
      ,reg_addr => addr
      ,cmnd_op => cmnd_op
      ,cmnd_addr => cmnd_addr
      ,cmnd_table_id => _zy_simnet_cio_6
      ,stat_code => DUMMY7
      ,stat_datawords => DUMMY8
      ,stat_addr => DUMMY9
      ,stat_table_id => _zy_simnet_dio_10
      ,capability_lst => DUMMY10
      ,capability_type => DUMMY11
      ,enable => _zy_simnet_dio_13
      ,addr_limit => DUMMY21
      ,wr_dat => _zy_simnet_cio_15
      ,rd_dat => DUMMY13
      ,sw_cs => DUMMY14
      ,sw_ce => _zy_simnet_dio_18
      ,sw_we => DUMMY15
      ,sw_add => DUMMY16
      ,sw_wdat => DUMMY17
      ,sw_rdat => DUMMY18
      ,sw_match => _zy_simnet_cio_23
      ,sw_aindex => _zy_simnet_cio_24
      ,grant => _zy_simnet_cio_25
      ,yield => _zy_simnet_dio_26
      ,reset => DUMMY19
    ) ;
  DUMMY21 <= $__unpack__(DUMMY12) ;

  mem_rd :
  process --:o163
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      sw_rdat <=
       "0000000000000000000000000000000000000000000000000000000000000000" ;
    elsif (clk'event and clk = '1') then
      if (sw_cs = '1') then
        if (ext(sw_add,16) < std_logic_vector'("0000000000100000")) then
          sw_rdat <= mem_a(conv_integer(sw_add)) ;
        else
          sw_rdat <=
           "0000000000000000000000000000000000000000000000000000000000000000" ;
        end if;
      end if;
    end if ;
  end process ;

  process --:o190
  (*)
  begin
    _zyixc_ctx_rdata_29 <= mem_a ;
  end process ;
end module;
