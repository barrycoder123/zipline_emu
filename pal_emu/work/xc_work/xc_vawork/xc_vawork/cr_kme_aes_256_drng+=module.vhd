architecture module of cr_kme_aes_256_drng is
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component AesSecIStub
    port (
      AesCiphOutR : out std_logic_vector(127 downto 0) ;
      AesCiphOutVldR : out std_logic ;
      KeyInitStall : out std_logic ;
      CiphInStall : out std_logic ;
      Aes128 : in std_logic := 'X' ;
      Aes192 : in std_logic := 'X' ;
      Aes256 : in std_logic := 'X' ;
      CiphIn : in std_logic_vector(127 downto 0) := (others => 'X') ;
      CiphInVldR : in std_logic := 'X' ;
      CiphInLastR : in std_logic := 'X' ;
      EncryptEn : in std_logic := 'X' ;
      KeyIn : in std_logic_vector(255 downto 0) := (others => 'X') ;
      KeyInitVldR : in std_logic := 'X' ;
      AesCiphOutStall : in std_logic := 'X' ;
      clk : in std_logic := 'X' ;
    rst_n : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_fifo_xcm59
    generic (
      DATA_SIZE : integer := 128 ;
      FIFO_DEPTH : integer := 6 ;
      OVERRIDE_EN : integer := 0 ;
      STALL_AT : integer := 0
    ) ;
    port (
      fifo_in_stall : out std_logic ;
      fifo_out : out std_logic_vector(127 downto 0) ;
      fifo_out_valid : out std_logic ;
      fifo_overflow : out std_logic ;
      fifo_underflow : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      fifo_in : in std_logic_vector(127 downto 0) := (others => 'X') ;
      fifo_in_valid : in std_logic := 'X' ;
      fifo_out_ack : in std_logic := 'X' ;
    fifo_in_stall_override : in std_logic := 'X' ) ;
  end component ;

  signal CiphInStall : std_logic ;
  signal KeyInStall : std_logic ;
  signal fifo_in_stall : std_logic ;
  signal fifo_out : std_logic_vector(127 downto 0) ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic_vector(0 to 127) ;
  signal DUMMY4 : std_logic ;
  signal _zy_simnet_cio_4 : std_logic ;
  signal _zy_simnet_cio_5 : std_logic ;
  signal _zy_simnet_cio_6 : std_logic ;
  signal DUMMY5 : std_logic_vector(0 to 127) ;
  signal DUMMY6 : std_logic ;
  signal DUMMY7 : std_logic ;
  signal _zy_simnet_cio_10 : std_logic ;
  signal DUMMY8 : std_logic_vector(0 to 255) ;
  signal DUMMY9 : std_logic ;
  signal _zy_simnet_cio_13 : std_logic ;
  signal DUMMY10 : std_logic_vector(0 to 127) ;
  signal DUMMY11 : std_logic ;
  signal _zy_simnet_cio_16 : std_logic ;
  signal cur_state : drng_fsm ;
  signal nxt_state : drng_fsm ;
  signal CiphIn : std_logic_vector(127 downto 0) ;
  signal CiphInVldR : std_logic ;
  signal CiphInLastR : std_logic ;
  signal KeyInVld : std_logic ;
  signal KeyIn : std_logic_vector(255 downto 0) ;
  signal AesCiphOutR : std_logic_vector(127 downto 0) ;
  signal AesCiphOutVldR : std_logic ;
  signal fifo_in_valid : std_logic ;
  signal fifo_in : std_logic_vector(127 downto 0) ;
  signal reseed_counter : std_logic_vector(47 downto 0) ;
  signal reseed_counter_limit : std_logic_vector(47 downto 0) ;
  signal internal_state_key : std_logic_vector(255 downto 0) ;
  signal internal_state_value : std_logic_vector(127 downto 0) ;
  signal in_count : std_logic_vector(2 downto 0) ;
  signal out_count : std_logic_vector(2 downto 0) ;

begin
  _zz_strnp_0 : ixc_assign
    generic map(W => 128)
    port map (
       drng_256_out
      ,fifo_out
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY1
      ,seed_expired
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY2
      ,drng_idle
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 128)
    port map (
       AesCiphOutR
      ,DUMMY3
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 1)
    port map (
       AesCiphOutVldR
      ,DUMMY4
    ) ;
  _zy_simnet_cio_4 <= '0' ;
  _zy_simnet_cio_5 <= '0' ;
  _zy_simnet_cio_6 <= '1' ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 128)
    port map (
       DUMMY5
      ,CiphIn
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY6
      ,CiphInVldR
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY7
      ,CiphInLastR
    ) ;
  _zy_simnet_cio_10 <= '1' ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 256)
    port map (
       DUMMY8
      ,KeyIn
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY9
      ,KeyInVld
    ) ;
  _zy_simnet_cio_13 <= '0' ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 128)
    port map (
       DUMMY10
      ,fifo_in
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY11
      ,fifo_in_valid
    ) ;
  _zy_simnet_cio_16 <= '0' ;
  DUMMY12 : AesSecIStub
    port map (
       AesCiphOutR => DUMMY3
      ,AesCiphOutVldR => DUMMY4
      ,KeyInitStall => KeyInStall
      ,CiphInStall => CiphInStall
      ,Aes128 => _zy_simnet_cio_4
      ,Aes192 => _zy_simnet_cio_5
      ,Aes256 => _zy_simnet_cio_6
      ,CiphIn => DUMMY5
      ,CiphInVldR => DUMMY6
      ,CiphInLastR => DUMMY7
      ,EncryptEn => _zy_simnet_cio_10
      ,KeyIn => DUMMY8
      ,KeyInitVldR => DUMMY9
      ,AesCiphOutStall => _zy_simnet_cio_13
      ,clk => clk
      ,rst_n => rst_n
    ) ;
  rnd_fifo : cr_kme_fifo_xcm59
    port map (
       fifo_in_stall => fifo_in_stall
      ,fifo_out => fifo_out
      ,fifo_out_valid => drng_valid
      ,fifo_overflow => drng_fifo_overflow
      ,fifo_underflow => drng_fifo_underflow
      ,clk => clk
      ,rst_n => rst_n
      ,fifo_in => DUMMY10
      ,fifo_in_valid => DUMMY11
      ,fifo_out_ack => drng_ack
      ,fifo_in_stall_override => _zy_simnet_cio_16
    ) ;

  process --:o92
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      cur_state <= DUMMY0 ;
    elsif (clk'event and clk = '1') then
      cur_state <= nxt_state ;
    end if ;
  end process ;

  process --:o104
  (*)
  begin
    nxt_state <= cur_state ;

    case cur_state is
      when  "00"  =>
        if (start = '1') then
          nxt_state <= SET_KEY ;
        end if;
      when  "01"  =>
        if ((KeyInStall = '0')) then
          nxt_state <= SEND_BLKS ;
        end if;
      when  "10"  =>
        if (CiphInLastR = '1') then
          nxt_state <= RESULT ;
        end if;
      when  "11"  =>
        if (out_count = std_logic_vector'("100")) then
          if (reseed_counter_limit = reseed_counter) then
            nxt_state <= DUMMY0 ;
          else
            nxt_state <= SET_KEY ;
          end if;
        end if;
      when others => null ;
    end case;
  end process ;

  process --:o146
  (*)
  begin
    CiphIn <=
     "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
     ;
    CiphInVldR <= '0' ;
    CiphInLastR <= '0' ;
    KeyInVld <= '0' ;
    KeyIn <=
     "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
     ;
    fifo_in_valid <= '0' ;
    fifo_in <=
     "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
     ;
    seed_expired <= boolean_to_std(nxt_state = DUMMY0) ;
    drng_idle <= boolean_to_std(nxt_state = DUMMY0) ;
    if (cur_state = SET_KEY) then
      if ((KeyInStall = '0')) then
        KeyInVld <= '1' ;
        KeyIn <= internal_state_key ;
      end if;
    end if;
    if (cur_state = SEND_BLKS) then
      if ((CiphInStall = '0')) then
        if ((in_count = std_logic_vector'("000") or in_count = std_logic_vector'
        ("001"))) then
          if ((fifo_in_stall = '0')) then
            CiphInVldR <= '1' ;
            CiphInLastR <= '0' ;
            CiphIn <= (internal_state_value + ext(in_count,128)) ;
          else
            drng_idle <= '1' ;
          end if;
        else
          CiphInVldR <= '1' ;
          CiphInLastR <= boolean_to_std(in_count = std_logic_vector'("100")) ;
          CiphIn <= (internal_state_value + ext(in_count,128)) ;
        end if;
      end if;
    end if;
    if (cur_state = RESULT) then
      if (AesCiphOutVldR = '1') then
        if ((out_count = std_logic_vector'("000") or out_count =
         std_logic_vector'("001"))) then
          fifo_in_valid <= '1' ;
          fifo_in <= AesCiphOutR ;
        end if;
      end if;
    end if;
  end process ;

  process --:o203
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      reseed_counter <= "000000000000000000000000000000000000000000000000" ;
      reseed_counter_limit <= "000000000000000000000000000000000000000000000000"
       ;
    elsif (clk'event and clk = '1') then
      if (cur_state = DUMMY0) then
        reseed_counter <= "000000000000000000000000000000000000000000000000" ;
        reseed_counter_limit <= seed_life ;
      elsif (CiphInLastR = '1') then
        reseed_counter <= (reseed_counter + std_logic_vector'
        ("000000000000000000000000000000000000000000000001")) ;
      end if;
    end if ;
  end process ;

  process --:o223
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      internal_state_key <=
       "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
       ;
    elsif (clk'event and clk = '1') then
      if (cur_state = DUMMY0) then
        internal_state_key <= seed(383 downto 128) ;
      elsif (AesCiphOutVldR = '1') then
        if (out_count = std_logic_vector'("010")) then
          internal_state_key(255 downto 128) <= AesCiphOutR ;
        end if;
        if (out_count = std_logic_vector'("011")) then
          internal_state_key(127 downto 0) <= AesCiphOutR ;
        end if;
      end if;
    end if ;
  end process ;

  process --:o244
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      internal_state_value <=
       "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
       ;
    elsif (clk'event and clk = '1') then
      if (cur_state = DUMMY0) then
        internal_state_value <= seed(127 downto 0) ;
      elsif (KeyInVld = '1') then
        internal_state_value <= (internal_state_value + std_logic_vector'
        ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001"
        )) ;
      elsif (AesCiphOutVldR = '1') then
        if (out_count = std_logic_vector'("100")) then
          internal_state_value <= AesCiphOutR ;
        end if;
      end if;
    end if ;
  end process ;

  process --:o268
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      in_count <= "000" ;
      out_count <= "000" ;
    elsif (clk'event and clk = '1') then
      if (cur_state = SET_KEY) then
        in_count <= "000" ;
        out_count <= "000" ;
      else
        if (CiphInVldR = '1') then
          in_count <= it_cond_op(in_count = std_logic_vector'("100"
          ),std_logic_vector'("000"),(in_count + std_logic_vector'("001"))) ;
        end if;
        if (AesCiphOutVldR = '1') then
          out_count <= it_cond_op(out_count = std_logic_vector'("100"
          ),std_logic_vector'("000"),(out_count + std_logic_vector'("001"))) ;
        end if;
      end if;
    end if ;
  end process ;
end module;
