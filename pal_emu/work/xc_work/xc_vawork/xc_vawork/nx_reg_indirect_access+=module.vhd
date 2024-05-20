architecture module of nx_reg_indirect_access is
  -- quickturn multiple_driver_resolution
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

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

  component ixc_context_write
    generic (
      DWIDTH : std_logic_vector := signed(integer_to_std(32,32)) ;
      NVEC : std_logic_vector := signed(integer_to_std(1,32))
    ) ;
    port (
    wdata : in std_logic_vector(conv_integer((ext(DWIDTH,$QKTN_MAX
    (DWIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(DWIDTH'length,32)))) downto
     0) := (others => 'X') ) ;
  end component ;

  component ixc_mevClk
    generic (
      WIDTH : std_logic_vector := signed(integer_to_std(4,32)) ;
      DUMMY3 : std_logic_vector := signed(integer_to_std(0,32)) ;
      HOLD : integer := 0 ;
      IS_EDGED : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
       0) := integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
      POLARITY : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
       0) := integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
      DS : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32))
       - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0) :=
       integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32))
       - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
      DM : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32))
       - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0) :=
       integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32))
       - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
      EVOUT : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32
      )) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0) :=
       integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32))
       - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
      WAIT_EV : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
       0) := integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)
    ) ;
    port (
      xclk : out std_logic ;
      clks : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
       0) := (others => 'X') ;
      ens : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
       0) := (others => 'X') ;
      DUMMY5 : in std_logic := 'X' ;
      DUMMY7 : in std_logic := 'X' ;
      active : out std_logic ;
      busy : out std_logic ;
    bwOn : out std_logic ) ;
  end component ;

  component ixc_capLoopXp
    port (
      bClk : out std_logic ;
      en : in std_logic := 'X' ;
      bcLatchEn : out std_logic ;
    bpHalt : out std_logic ) ;
  end component ;

  component nx_indirect_access_cntrl_xcm111
    generic (
      MEM_TYPE : std_logic_vector := std_logic_vector'("0010") ;
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("10001010100") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("10001001100") ;
      ALIGNMENT : integer := 2 ;
      N_TIMER_BITS : integer := 0 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_DATA_BITS : integer := 32 ;
      N_TABLES : integer := 1 ;
      N_ENTRIES : integer := 32 ;
      N_INIT_INC_BITS : integer := 0 ;
      CAPABILITIES : std_logic_vector(15 downto 0) := std_logic_vector'
      ("1000000000100111") ;
      RESET_DATA : std_logic_vector(31 downto 0) := std_logic_vector'
      ("00000000000000000000000000000000") ;
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
      wr_dat : in std_logic_vector(31 downto 0) := (others => 'X') ;
      rd_dat : out std_logic_vector(31 downto 0) ;
      sw_cs : out std_logic ;
      sw_ce : out std_logic ;
      sw_we : out std_logic ;
      sw_add : out std_logic_vector(4 downto 0) ;
      sw_wdat : out std_logic_vector(31 downto 0) ;
      sw_rdat : in std_logic_vector(31 downto 0) := (others => 'X') ;
      sw_match : in std_logic := 'X' ;
      sw_aindex : in std_logic_vector(3 downto 0) := (others => 'X') ;
      grant : in std_logic := 'X' ;
      yield : out std_logic ;
    reset : out std_logic ) ;
  end component ;

  component ixc_sample_logic
    generic (
      WIDTH : integer := 1 ;
      RD_TYPE : integer := 0 ;
      subtype StateType is std_logic ;
      type DUMMY2 is array(integer range <>) of std_logic
    ) ;
    port (
      sv : out DUMMY2((WIDTH - 1) downto 0) ;
    v : in DUMMY2((WIDTH - 1) downto 0) ) ;
  end component ;

  signal DUMMY1 : std_logic_vector(0 to 2) ;
  signal DUMMY2 : std_logic_vector(0 to 4) ;
  signal DUMMY3 : std_logic_vector(0 to 4) ;
  signal DUMMY4 : std_logic_vector(0 to 15) ;
  signal DUMMY5 : std_logic_vector(0 to 3) ;
  signal DUMMY6 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_cio_6 : std_logic ;
  signal DUMMY7 : std_logic_vector(0 to 2) ;
  signal DUMMY8 : std_logic_vector(0 to 4) ;
  signal DUMMY9 : std_logic_vector(0 to 4) ;
  signal _zy_simnet_dio_10 : std_logic ;
  signal DUMMY10 : std_logic_vector(0 to 15) ;
  signal DUMMY11 : std_logic_vector(0 to 3) ;
  signal _zy_simnet_dio_13 : std_logic ;
  signal DUMMY12 : std_logic_vector(0 to 4) ;
  signal DUMMY13 : std_logic_vector(0 to 31) ;
  signal DUMMY14 : std_logic ;
  signal _zy_simnet_dio_17 : std_logic ;
  signal DUMMY15 : std_logic ;
  signal DUMMY16 : std_logic_vector(0 to 4) ;
  signal DUMMY17 : std_logic_vector(0 to 31) ;
  signal DUMMY18 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_cio_22 : std_logic ;
  signal _zy_simnet_cio_23 : std_logic_vector(0 to 3) ;
  signal _zy_simnet_cio_24 : std_logic ;
  signal _zy_simnet_dio_25 : std_logic ;
  signal DUMMY19 : std_logic ;
  signal _zyixc_ctx_wdata_1 : std_logic_vector(1023 downto 0) ;
  signal _zzM132L132_bcMevClk0 : std_logic ;
  signal _zzM132L132_bcReq0 : std_logic ;
  signal _zzM132L132_bcBusy0 : std_logic ;
  signal _zzM132L132_bcWait0 : std_logic ;
  signal DUMMY20 : std_logic ;
  signal DUMMY21 : std_logic ;
  signal DUMMY22 : std_logic_vector(0 to 4) ;
  signal DUMMY23 : std_logic_vector(0 to 31) ;
  signal DUMMY24 : std_logic ;
  signal _zzM132_bcBehEvalClk : std_logic ;
  signal _zzM132_bcBehHalt : std_logic ;
  signal reset : std_logic ;
  signal sw_add : std_logic_vector(4 downto 0) ;
  signal sw_cs : std_logic ;
  signal sw_wdat : std_logic_vector(31 downto 0) ;
  signal sw_rdat : std_logic_vector(31 downto 0) ;
  signal sw_we : std_logic ;
  signal addr_limit : std_logic_vector(4 downto 0) ;
  signal _zzM132_bcBehEval : std_logic_vector(31 downto 0) ;
  signal DUMMY25 : std_logic_vector(1023 downto 0) ;
  signal DUMMY26 : std_logic_vector(1023 downto 0) ;
  signal DUMMY27 : std_logic_vector(1 downto 0) ;
  signal DUMMY28 : std_logic_vector(1 downto 0) ;
  type DUMMY30 is array(integer range <>) of std_logic_vector(4 downto 0) ;
  signal DUMMY29 : DUMMY30(0 downto 0) ; 
  -- quickturn keep_net _zzM132_bcBehEval

begin
  _zzqnt : Q_NOT_TOUCH
     ;
  addr_limit <= "11111" ;
  _zz_strnp_0 : ixc_assign
    generic map(W => 3)
    port map (
       DUMMY1
      ,stat_code
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY2
      ,stat_datawords
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY3
      ,stat_addr
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY4
      ,capability_lst
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY5
      ,capability_type
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY6
      ,rd_dat
    ) ;
  _zy_simnet_cio_6 <= '0' ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 3)
    port map (
       stat_code
      ,DUMMY7
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 5)
    port map (
       stat_datawords
      ,DUMMY8
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 5)
    port map (
       stat_addr
      ,DUMMY9
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 16)
    port map (
       capability_lst
      ,DUMMY10
    ) ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 4)
    port map (
       capability_type
      ,DUMMY11
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY12
      ,addr_limit
    ) ;
  _zz_strnp_12 : ixc_assign
    generic map(W => 32)
    port map (
       rd_dat
      ,DUMMY13
    ) ;
  _zz_strnp_13 : ixc_assign
    generic map(W => 1)
    port map (
       sw_cs
      ,DUMMY20
    ) ;
  _zz_strnp_14 : ixc_assign
    generic map(W => 1)
    port map (
       sw_we
      ,DUMMY21
    ) ;
  _zz_strnp_15 : ixc_assign
    generic map(W => 5)
    port map (
       sw_add
      ,DUMMY22
    ) ;
  _zz_strnp_16 : ixc_assign
    generic map(W => 32)
    port map (
       sw_wdat
      ,DUMMY23
    ) ;
  _zz_strnp_17 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY18
      ,sw_rdat
    ) ;
  _zy_simnet_cio_22 <= '0' ;
  _zy_simnet_cio_23 <= "0000" ;
  _zy_simnet_cio_24 <= '1' ;
  _zz_strnp_18 : ixc_assign
    generic map(W => 1)
    port map (
       reset
      ,DUMMY24
    ) ;
  _zzixc_ctxrd_0 : ixc_context_read
    generic map(WIDTH => integer_to_std(1024,32))
    port map (
       DUMMY25
    ) ;
  DUMMY25 <= std_logic_vector'(mem_a(0)(31 downto 0) & mem_a(1)(31 downto 0) &
   mem_a(2)(31 downto 0) & mem_a(3)(31 downto 0) & mem_a(4)(31 downto 0) & mem_a
  (5)(31 downto 0) & mem_a(6)(31 downto 0) & mem_a(7)(31 downto 0) & mem_a(8)(31
   downto 0) & mem_a(9)(31 downto 0) & mem_a(10)(31 downto 0) & mem_a(11)(31
   downto 0) & mem_a(12)(31 downto 0) & mem_a(13)(31 downto 0) & mem_a(14)(31
   downto 0) & mem_a(15)(31 downto 0) & mem_a(16)(31 downto 0) & mem_a(17)(31
   downto 0) & mem_a(18)(31 downto 0) & mem_a(19)(31 downto 0) & mem_a(20)(31
   downto 0) & mem_a(21)(31 downto 0) & mem_a(22)(31 downto 0) & mem_a(23)(31
   downto 0) & mem_a(24)(31 downto 0) & mem_a(25)(31 downto 0) & mem_a(26)(31
   downto 0) & mem_a(27)(31 downto 0) & mem_a(28)(31 downto 0) & mem_a(29)(31
   downto 0) & mem_a(30)(31 downto 0) & mem_a(31)(31 downto 0)) ;
  _zzixc_ctxwr_1 : ixc_context_write
    generic map(DWIDTH => integer_to_std(1024,32),NVEC => integer_to_std(1,32))
    port map (
       DUMMY26
    ) ;
  DUMMY26 <= std_logic_vector'(mem_a(0)(31 downto 0) & mem_a(1)(31 downto 0) &
   mem_a(2)(31 downto 0) & mem_a(3)(31 downto 0) & mem_a(4)(31 downto 0) & mem_a
  (5)(31 downto 0) & mem_a(6)(31 downto 0) & mem_a(7)(31 downto 0) & mem_a(8)(31
   downto 0) & mem_a(9)(31 downto 0) & mem_a(10)(31 downto 0) & mem_a(11)(31
   downto 0) & mem_a(12)(31 downto 0) & mem_a(13)(31 downto 0) & mem_a(14)(31
   downto 0) & mem_a(15)(31 downto 0) & mem_a(16)(31 downto 0) & mem_a(17)(31
   downto 0) & mem_a(18)(31 downto 0) & mem_a(19)(31 downto 0) & mem_a(20)(31
   downto 0) & mem_a(21)(31 downto 0) & mem_a(22)(31 downto 0) & mem_a(23)(31
   downto 0) & mem_a(24)(31 downto 0) & mem_a(25)(31 downto 0) & mem_a(26)(31
   downto 0) & mem_a(27)(31 downto 0) & mem_a(28)(31 downto 0) & mem_a(29)(31
   downto 0) & mem_a(30)(31 downto 0) & mem_a(31)(31 downto 0)) ;
  _zzM132L132_bcMevClkP0 : ixc_mevClk
    generic map(WIDTH => integer_to_std(2,32),DUMMY3 => integer_to_std(0,32
    ),HOLD => 0,IS_EDGED => std_logic_vector'("11"),POLARITY =>
     std_logic_vector'("01"),DS => std_logic_vector'("00"),DM =>
     std_logic_vector'("01"),EVOUT => std_logic_vector'("00"))
    port map (
       _zzM132L132_bcMevClk0
      ,DUMMY27
      ,DUMMY28
      ,std_logic'('0')
      ,std_logic'('0')
      ,_zzM132L132_bcReq0
      ,_zzM132L132_bcBusy0
      ,_zzM132L132_bcWait0
    ) ;
  DUMMY27 <= std_logic_vector'(clk & rst_n) ;
  DUMMY28 <= it_multiple_concat(std_logic'('1'),2) ;
  DUMMY31 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 0)
    port map (
       DUMMY20
      ,DUMMY14
    ) ;
  DUMMY32 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 0)
    port map (
       DUMMY21
      ,DUMMY15
    ) ;
  DUMMY33 : ixc_sample_logic
    generic map(WIDTH => 5,RD_TYPE => 0)
    port map (
       DUMMY22
      ,DUMMY16
    ) ;
  DUMMY34 : ixc_sample_logic
    generic map(WIDTH => 32,RD_TYPE => 0)
    port map (
       DUMMY23
      ,DUMMY17
    ) ;
  DUMMY35 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 0)
    port map (
       DUMMY24
      ,DUMMY19
    ) ;
  _zzM132L34_bcBehEvalP0 : ixc_capLoopXp
    port map (
       _zzM132_bcBehEvalClk
      ,std_logic'('0')
      ,open
      ,_zzM132_bcBehHalt
    ) ;
  u_cntrl : nx_indirect_access_cntrl_xcm111
    port map (
       clk
      ,rst_n
      ,wr_stb
      ,addr
      ,cmnd_op
      ,cmnd_addr
      ,_zy_simnet_cio_6
      ,DUMMY7
      ,DUMMY8
      ,DUMMY9
      ,_zy_simnet_dio_10
      ,DUMMY10
      ,DUMMY11
      ,_zy_simnet_dio_13
      ,DUMMY29
      ,wr_dat
      ,DUMMY13
      ,DUMMY14
      ,_zy_simnet_dio_17
      ,DUMMY15
      ,DUMMY16
      ,DUMMY17
      ,DUMMY18
      ,_zy_simnet_cio_22
      ,_zy_simnet_cio_23
      ,_zy_simnet_cio_24
      ,_zy_simnet_dio_25
      ,DUMMY19
    ) ;
  DUMMY29 <= $__unpack__(DUMMY12) ;

  mem_wr_rst :
  process --:o163
  (_zzM132L132_bcMevClk0)
    variable DUMMY36 : integer ;
    variable DUMMY37 : integer ;
  begin
    if (_zzM132L132_bcMevClk0'event and _zzM132L132_bcMevClk0 = '1') then
      if ((rst_n = '0')) then
        for DUMMY36 in 0 to 31 loop --:o176
          mem_a(DUMMY36) <= rst_dat(DUMMY36) ;
        end loop;
      elsif (reset = '1') then
        for DUMMY37 in 0 to 31 loop --:o189
          mem_a(DUMMY37) <= rst_dat(DUMMY37) ;
        end loop;
      elsif (((sw_cs)='1' and (sw_we)='1' and ext(sw_add,16) < std_logic_vector'
      ("0000000000100000"))) then
        mem_a(conv_integer(sw_add)) <= sw_wdat ;
      end if;
    end if ;
  end process ;

  mem_rd :
  process --:o202
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      sw_rdat <= "00000000000000000000000000000000" ;
    elsif (clk'event and clk = '1') then
      if (sw_cs = '1') then
        if (ext(sw_add,16) < std_logic_vector'("0000000000100000")) then
          if (sw_we = '1') then
            sw_rdat <= sw_wdat ;
          else
            sw_rdat <= mem_a(conv_integer(sw_add)) ;
          end if;
        else
          sw_rdat <= "00000000000000000000000000000000" ;
        end if;
      end if;
    end if ;
  end process ;

  process --:o232
  (_zzM132_bcBehEvalClk)
  begin
    if (_zzM132_bcBehEvalClk'event and _zzM132_bcBehEvalClk = '1') then
      if (_zzM132L132_bcWait0 = '1') then
        if (nand_reduce(_zzM132_bcBehEval(30 downto 0)) = '1') then
          _zzM132_bcBehEval(30 downto 0) <= (_zzM132_bcBehEval(30 downto 0) +
           std_logic_vector'("0000000000000000000000000000001")) ;
        end if;
        _zzM132_bcBehEval(31) <= _zzM132_bcBehHalt ;
      end if;
    end if ;
  end process ;
end module;
