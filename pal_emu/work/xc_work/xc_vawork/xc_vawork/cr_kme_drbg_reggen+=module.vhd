architecture module of cr_kme_drbg_reggen is
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic_vector(1 downto 0) ;
  signal DUMMY3 : std_logic_vector(255 downto 0) ;
  signal DUMMY4 : std_logic_vector(127 downto 0) ;
  signal DUMMY5 : std_logic_vector(47 downto 0) ;
  signal DUMMY6 : std_logic_vector(255 downto 0) ;
  signal DUMMY7 : std_logic_vector(127 downto 0) ;
  signal DUMMY8 : std_logic_vector(47 downto 0) ;

begin
  set_drbg_expired_int <= ((seed0_valid and seed0_invalidate) or (seed1_valid
   and seed1_invalidate)) ;
  _zz_strnp_0 : ixc_assign
    generic map(W => 2)
    port map (
       kdf_drbg_ctrl
      ,DUMMY2
    ) ;
  DUMMY2 <= std_logic_vector'(seed1_valid & seed0_valid) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 256)
    port map (
       seed0_internal_state_key
      ,DUMMY3
    ) ;
  DUMMY3 <= std_logic_vector'(o_kdf_drbg_seed_0_state_key_255_224 &
   o_kdf_drbg_seed_0_state_key_223_192 & o_kdf_drbg_seed_0_state_key_191_160 &
   o_kdf_drbg_seed_0_state_key_159_128 & o_kdf_drbg_seed_0_state_key_127_96 &
   o_kdf_drbg_seed_0_state_key_95_64 & o_kdf_drbg_seed_0_state_key_63_32 &
   o_kdf_drbg_seed_0_state_key_31_0) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 128)
    port map (
       seed0_internal_state_value
      ,DUMMY4
    ) ;
  DUMMY4 <= std_logic_vector'(o_kdf_drbg_seed_0_state_value_127_96 &
   o_kdf_drbg_seed_0_state_value_95_64 & o_kdf_drbg_seed_0_state_value_63_32 &
   o_kdf_drbg_seed_0_state_value_31_0) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 48)
    port map (
       seed0_reseed_interval
      ,DUMMY5
    ) ;
  DUMMY5 <= std_logic_vector'(o_kdf_drbg_seed_0_reseed_interval_1 &
   o_kdf_drbg_seed_0_reseed_interval_0) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 256)
    port map (
       seed1_internal_state_key
      ,DUMMY6
    ) ;
  DUMMY6 <= std_logic_vector'(o_kdf_drbg_seed_1_state_key_255_224 &
   o_kdf_drbg_seed_1_state_key_223_192 & o_kdf_drbg_seed_1_state_key_191_160 &
   o_kdf_drbg_seed_1_state_key_159_128 & o_kdf_drbg_seed_1_state_key_127_96 &
   o_kdf_drbg_seed_1_state_key_95_64 & o_kdf_drbg_seed_1_state_key_63_32 &
   o_kdf_drbg_seed_1_state_key_31_0) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 128)
    port map (
       seed1_internal_state_value
      ,DUMMY7
    ) ;
  DUMMY7 <= std_logic_vector'(o_kdf_drbg_seed_1_state_value_127_96 &
   o_kdf_drbg_seed_1_state_value_95_64 & o_kdf_drbg_seed_1_state_value_63_32 &
   o_kdf_drbg_seed_1_state_value_31_0) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 48)
    port map (
       seed1_reseed_interval
      ,DUMMY8
    ) ;
  DUMMY8 <= std_logic_vector'(o_kdf_drbg_seed_1_reseed_interval_1 &
   o_kdf_drbg_seed_1_reseed_interval_0) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY0
      ,seed0_valid
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY1
      ,seed1_valid
    ) ;

  process --:o71
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      seed0_valid <= '0' ;
    elsif (clk'event and clk = '1') then
      if (seed0_invalidate = '1') then
        seed0_valid <= '0' ;
      elsif (wr_stb = '1') then
        if (reg_addr = std_logic_vector'("01100001000")) then
          seed0_valid <= wr_data(0) ;
        end if;
      end if;
    end if ;
  end process ;

  process --:o92
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      seed1_valid <= '0' ;
    elsif (clk'event and clk = '1') then
      if (seed1_invalidate = '1') then
        seed1_valid <= '0' ;
      elsif (wr_stb = '1') then
        if (reg_addr = std_logic_vector'("01100001000")) then
          seed1_valid <= wr_data(1) ;
        end if;
      end if;
    end if ;
  end process ;
end module;
