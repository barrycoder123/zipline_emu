architecture module of cr_kme_int_handler is
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic_vector(0 to 4) ;
  signal set_triggers : std_logic_vector(4 downto 0) ;
  signal i : integer ;
  signal DUMMY2 : std_logic_vector(0 downto 0) ;

begin
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       suppress_key_tlvs
      ,DUMMY2
    ) ;
  DUMMY2 <= ext(interrupt_status(1),1) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY0
      ,kme_interrupt
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY1
      ,interrupt_status
    ) ;

  process --:o48
  (*)
  begin
    set_triggers(0) <= set_drbg_expired_int ;
    set_triggers(2) <= set_txc_bp_int ;
    set_triggers(3) <= set_gcm_tag_fail_int ;
    set_triggers(1) <= ((((((((((((((cceip0_ism_mbe or cceip1_ism_mbe) or
     cceip2_ism_mbe) or cceip3_ism_mbe) or cddip0_ism_mbe) or cddip1_ism_mbe) or
     cddip2_ism_mbe) or cddip3_ism_mbe) or cceip_encrypt_mbe) or
     cceip_validate_mbe) or cddip_decrypt_mbe) or kim_mbe) or ckv_mbe) or
     axi_mbe) or set_tlv_bip2_error_int) ;
    set_triggers(4) <= set_key_tlv_miscmp_int ;
  end process ;

  process --:o57
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      for i in 0 to 4 loop --:o62
        interrupt_status <= "00000" ;
      end loop;
    elsif (clk'event and clk = '1') then
      for i in 0 to 4 loop --:o69
        if ((((wr_stb)='1' and reg_addr = std_logic_vector'("01101111100")) and 
        (wr_data(i))='1')) then
          interrupt_status(i) <= '0' ;
        elsif (set_triggers(i) = '1') then
          interrupt_status(i) <= '1' ;
        end if;
      end loop;
    end if ;
  end process ;

  process --:o83
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      kme_interrupt <= '0' ;
    elsif (clk'event and clk = '1') then
      kme_interrupt <= (or_reduce((interrupt_status and o_interrupt_mask)) or
       bimc_interrupt) ;
    end if ;
  end process ;
end module;
