architecture module of nx_ram_1rw_indirect_access_xcm123 is
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component nx_ram_1rw_xcm108
    generic (
      WIDTH : integer := 64 ;
      BWEWIDTH : integer := 64 ;
      DEPTH : integer := 32768 ;
      SPECIALIZE : integer := 1 ;
      LATCH : integer := 0
    ) ;
    port (
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      ovstb : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      mrdten : in std_logic := 'X' ;
      bimc_rst_n : in std_logic := 'X' ;
      bimc_isync : in std_logic := 'X' ;
      bimc_idat : in std_logic := 'X' ;
      bimc_odat : out std_logic ;
      bimc_osync : out std_logic ;
      ro_uncorrectable_ecc_error : out std_logic ;
      bwe : in std_logic_vector(63 downto 0) := (others => 'X') ;
      din : in std_logic_vector(63 downto 0) := (others => 'X') ;
      add : in std_logic_vector(14 downto 0) := (others => 'X') ;
      cs : in std_logic := 'X' ;
      we : in std_logic := 'X' ;
    dout : out std_logic_vector(63 downto 0) ) ;
  end component ;

  component nx_indirect_access_cntrl_v2_xcm125
    generic (
      MEM_TYPE : std_logic_vector := std_logic_vector'("0000") ;
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("00110011100") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("00110010000") ;
      ALIGNMENT : integer := 2 ;
      N_TIMER_BITS : integer := 6 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_DATA_BITS : integer := 64 ;
      N_TABLES : integer := 1 ;
      N_ENTRIES : integer := 32768 ;
      N_INIT_INC_BITS : integer := 0 ;
      CAPABILITIES : std_logic_vector(15 downto 0) := std_logic_vector'
      ("1100000101111111") ;
      RESET_DATA : std_logic_vector(63 downto 0) := std_logic_vector'
      ("0000000000000000000000000000000000000000000000000000000000000000") ;
      type DUMMY0 is array(integer range <>) of std_logic_vector(14 downto 0)
    ) ;
    port (
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      wr_stb : in std_logic := 'X' ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(14 downto 0) := (others => 'X') ;
      cmnd_table_id : in std_logic_vector(0 downto 0) := (others => 'X') ;
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(14 downto 0) ;
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
      sw_add : out std_logic_vector(14 downto 0) ;
      sw_wdat : out std_logic_vector(63 downto 0) ;
      sw_rdat : in std_logic_vector(63 downto 0) := (others => 'X') ;
      sw_match : in std_logic := 'X' ;
      sw_aindex : in std_logic_vector(13 downto 0) := (others => 'X') ;
      grant : in std_logic := 'X' ;
      rsp : in std_logic := 'X' ;
      yield : out std_logic ;
    reset : out std_logic ) ;
  end component ;

  signal DUMMY0 : std_logic_vector(0 to 2) ;
  signal DUMMY1 : std_logic_vector(0 to 4) ;
  signal DUMMY2 : std_logic_vector(0 to 14) ;
  signal DUMMY3 : std_logic_vector(0 to 15) ;
  signal DUMMY4 : std_logic_vector(0 to 3) ;
  signal DUMMY5 : std_logic_vector(0 to 63) ;
  signal DUMMY6 : std_logic ;
  signal DUMMY7 : std_logic ;
  signal DUMMY8 : std_logic ;
  signal DUMMY9 : std_logic_vector(0 to 63) ;
  signal DUMMY10 : std_logic ;
  signal DUMMY11 : std_logic ;
  signal DUMMY12 : std_logic ;
  signal DUMMY13 : std_logic ;
  signal DUMMY14 : std_logic_vector(0 to 63) ;
  signal DUMMY15 : std_logic_vector(0 to 63) ;
  signal DUMMY16 : std_logic_vector(0 to 14) ;
  signal DUMMY17 : std_logic ;
  signal DUMMY18 : std_logic ;
  signal DUMMY19 : std_logic_vector(0 to 63) ;
  signal _zy_simnet_cio_20 : std_logic ;
  signal DUMMY20 : std_logic_vector(0 to 2) ;
  signal DUMMY21 : std_logic_vector(0 to 4) ;
  signal DUMMY22 : std_logic_vector(0 to 14) ;
  signal _zy_simnet_dio_24 : std_logic ;
  signal DUMMY23 : std_logic_vector(0 to 15) ;
  signal DUMMY24 : std_logic_vector(0 to 3) ;
  signal DUMMY25 : std_logic ;
  signal DUMMY26 : std_logic_vector(0 to 14) ;
  signal DUMMY27 : std_logic_vector(0 to 63) ;
  signal DUMMY28 : std_logic ;
  signal _zy_simnet_dio_31 : std_logic ;
  signal DUMMY29 : std_logic ;
  signal DUMMY30 : std_logic_vector(0 to 14) ;
  signal DUMMY31 : std_logic_vector(0 to 63) ;
  signal DUMMY32 : std_logic_vector(0 to 63) ;
  signal _zy_simnet_cio_36 : std_logic ;
  signal _zy_simnet_cio_37 : std_logic_vector(0 to 13) ;
  signal _zy_simnet_tvar_38 : std_logic ;
  signal DUMMY33 : std_logic ;
  signal DUMMY34 : std_logic ;
  signal _zy_simnet_dio_41 : std_logic ;
  signal enable : std_logic ;
  signal yield : std_logic ;
  signal sw_add : std_logic_vector(14 downto 0) ;
  signal sw_cs : std_logic ;
  signal sw_wdat : std_logic_vector(63 downto 0) ;
  signal sw_we : std_logic ;
  signal add : std_logic_vector(14 downto 0) ;
  signal bwe : std_logic_vector(63 downto 0) ;
  signal cs : std_logic ;
  signal din : std_logic_vector(63 downto 0) ;
  signal we : std_logic ;
  signal dout : std_logic_vector(63 downto 0) ;
  signal r_rsp : std_logic_vector(1 downto 0) ;
  signal addr_limit : std_logic_vector(14 downto 0) ;
  signal DUMMY35 : std_logic_vector(0 downto 0) ;
  type DUMMY37 is array(integer range <>) of std_logic_vector(14 downto 0) ;
  signal DUMMY36 : DUMMY37(0 downto 0) ; 

begin
  cs <= boolean_to_std(((hw_cs)='1' or (sw_cs)='1')) ;
  add <= hw_add when (hw_cs)='1' else sw_add ;
  bwe <= hw_bwe when (hw_cs)='1' else
   "1111111111111111111111111111111111111111111111111111111111111111" ;
  din <= hw_din when (hw_cs)='1' else sw_wdat ;
  we <= hw_we when (hw_cs)='1' else sw_we ;
  hw_dout <= dout when (enable)='1' else rd_dat ;
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       hw_yield
      ,yield
    ) ;
  addr_limit <= "111111111111111" ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 3)
    port map (
       DUMMY0
      ,stat_code
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY1
      ,stat_datawords
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 15)
    port map (
       DUMMY2
      ,stat_addr
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY3
      ,capability_lst
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY4
      ,capability_type
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY5
      ,rd_dat
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY6
      ,bimc_odat
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY7
      ,bimc_osync
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY8
      ,ro_uncorrectable_ecc_error
    ) ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY9
      ,hw_dout
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY10
      ,hw_yield
    ) ;
  _zz_strnp_12 : ixc_assign
    generic map(W => 1)
    port map (
       bimc_odat
      ,DUMMY11
    ) ;
  _zz_strnp_13 : ixc_assign
    generic map(W => 1)
    port map (
       bimc_osync
      ,DUMMY12
    ) ;
  _zz_strnp_14 : ixc_assign
    generic map(W => 1)
    port map (
       ro_uncorrectable_ecc_error
      ,DUMMY13
    ) ;
  _zz_strnp_15 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY14
      ,bwe
    ) ;
  _zz_strnp_16 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY15
      ,din
    ) ;
  _zz_strnp_17 : ixc_assign
    generic map(W => 15)
    port map (
       DUMMY16
      ,add
    ) ;
  _zz_strnp_18 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY17
      ,cs
    ) ;
  _zz_strnp_19 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY18
      ,we
    ) ;
  _zz_strnp_20 : ixc_assign
    generic map(W => 64)
    port map (
       dout
      ,DUMMY19
    ) ;
  _zy_simnet_cio_20 <= '0' ;
  _zz_strnp_21 : ixc_assign
    generic map(W => 3)
    port map (
       stat_code
      ,DUMMY20
    ) ;
  _zz_strnp_22 : ixc_assign
    generic map(W => 5)
    port map (
       stat_datawords
      ,DUMMY21
    ) ;
  _zz_strnp_23 : ixc_assign
    generic map(W => 15)
    port map (
       stat_addr
      ,DUMMY22
    ) ;
  _zz_strnp_24 : ixc_assign
    generic map(W => 16)
    port map (
       capability_lst
      ,DUMMY23
    ) ;
  _zz_strnp_25 : ixc_assign
    generic map(W => 4)
    port map (
       capability_type
      ,DUMMY24
    ) ;
  _zz_strnp_26 : ixc_assign
    generic map(W => 1)
    port map (
       enable
      ,DUMMY25
    ) ;
  _zz_strnp_27 : ixc_assign
    generic map(W => 15)
    port map (
       DUMMY26
      ,addr_limit
    ) ;
  _zz_strnp_28 : ixc_assign
    generic map(W => 64)
    port map (
       rd_dat
      ,DUMMY27
    ) ;
  _zz_strnp_29 : ixc_assign
    generic map(W => 1)
    port map (
       sw_cs
      ,DUMMY28
    ) ;
  _zz_strnp_30 : ixc_assign
    generic map(W => 1)
    port map (
       sw_we
      ,DUMMY29
    ) ;
  _zz_strnp_31 : ixc_assign
    generic map(W => 15)
    port map (
       sw_add
      ,DUMMY30
    ) ;
  _zz_strnp_32 : ixc_assign
    generic map(W => 64)
    port map (
       sw_wdat
      ,DUMMY31
    ) ;
  _zz_strnp_33 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY32
      ,dout
    ) ;
  _zy_simnet_cio_36 <= '0' ;
  _zy_simnet_cio_37 <= "00000000000000" ;
  _zy_simnet_tvar_38 <= not(hw_cs) ;
  _zz_strnp_34 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY33
      ,DUMMY35
    ) ;
  DUMMY35 <= ext(r_rsp(1),1) ;
  _zz_strnp_35 : ixc_assign
    generic map(W => 1)
    port map (
       yield
      ,DUMMY34
    ) ;
  u_ram : nx_ram_1rw_xcm108
    port map (
       clk
      ,rst_n
      ,ovstb
      ,lvm
      ,mlvm
      ,mrdten
      ,bimc_rst_n
      ,bimc_isync
      ,bimc_idat
      ,DUMMY11
      ,DUMMY12
      ,DUMMY13
      ,DUMMY14
      ,DUMMY15
      ,DUMMY16
      ,DUMMY17
      ,DUMMY18
      ,DUMMY19
    ) ;
  u_cntrl : nx_indirect_access_cntrl_v2_xcm125
    port map (
       clk
      ,rst_n
      ,wr_stb
      ,reg_addr
      ,cmnd_op
      ,cmnd_addr
      ,_zy_simnet_cio_20
      ,DUMMY20
      ,DUMMY21
      ,DUMMY22
      ,_zy_simnet_dio_24
      ,DUMMY23
      ,DUMMY24
      ,DUMMY25
      ,DUMMY36
      ,wr_dat
      ,DUMMY27
      ,DUMMY28
      ,_zy_simnet_dio_31
      ,DUMMY29
      ,DUMMY30
      ,DUMMY31
      ,DUMMY32
      ,_zy_simnet_cio_36
      ,_zy_simnet_cio_37
      ,_zy_simnet_tvar_38
      ,DUMMY33
      ,DUMMY34
      ,_zy_simnet_dio_41
    ) ;
  DUMMY36 <= $__unpack__(DUMMY26) ;

  process --:o137
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      r_rsp <= "00" ;
    elsif (clk'event and clk = '1') then
      r_rsp <= std_logic_vector'(r_rsp(0 downto 0) & boolean_to_std(((hw_cs =
       '0') and (sw_we = '0') and (sw_cs)='1'))) ;
    end if ;
  end process ;
end module;
