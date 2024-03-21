architecture module of nx_rbus_apb is
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  signal DUMMY0 : std_logic_vector(0 to 15) ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic_vector(0 to 31) ;
  signal DUMMY3 : std_logic ;
  signal DUMMY4 : std_logic_vector(0 to 31) ;
  signal DUMMY5 : std_logic ;
  signal DUMMY6 : std_logic ;
  signal apb_paddr_reg : std_logic_vector(15 downto 0) ;
  signal apb_penable_reg : std_logic ;
  signal apb_psel_reg : std_logic ;
  signal apb_pwdata_reg : std_logic_vector(31 downto 0) ;
  signal apb_pwrite_reg : std_logic ;
  signal apb_active : std_logic ;
  signal apb_active_reg : std_logic ;

begin
  _zz_strnp_0 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY0
      ,rbus_addr_o
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY1
      ,rbus_wr_strb_o
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY2
      ,rbus_wr_data_o
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY3
      ,rbus_rd_strb_o
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY4
      ,apb_prdata
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY5
      ,apb_pready
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY6
      ,apb_pslverr
    ) ;

  process --:o50
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      apb_active <= '0' ;
      apb_active_reg <= '0' ;
      apb_paddr_reg <= "0000000000000000" ;
      apb_penable_reg <= '0' ;
      apb_prdata <= "00000000000000000000000000000000" ;
      apb_pready <= '0' ;
      apb_psel_reg <= '0' ;
      apb_pslverr <= '0' ;
      apb_pwdata_reg <= "00000000000000000000000000000000" ;
      apb_pwrite_reg <= '0' ;
      rbus_addr_o <= "0000000000000000" ;
      rbus_rd_strb_o <= '0' ;
      rbus_wr_data_o <= "00000000000000000000000000000000" ;
      rbus_wr_strb_o <= '0' ;
    elsif (clk'event and clk = '1') then
      rbus_wr_strb_o <= '0' ;
      rbus_rd_strb_o <= '0' ;
      apb_paddr_reg <= apb_paddr ;
      apb_psel_reg <= apb_psel ;
      apb_penable_reg <= apb_penable ;
      apb_pwrite_reg <= apb_pwrite ;
      apb_pwdata_reg <= apb_pwdata ;
      apb_pready <= '0' ;
      apb_pslverr <= '0' ;
      apb_active_reg <= apb_active ;
      if (((apb_psel_reg)='1' and (apb_penable_reg)='1' and (apb_active = '0')
       and (apb_active_reg = '0') and (apb_pready = '0'))) then
        apb_active <= '1' ;
        rbus_addr_o <= apb_paddr_reg ;
        rbus_wr_data_o <= apb_pwdata_reg ;
        rbus_wr_strb_o <= apb_pwrite_reg ;
        rbus_rd_strb_o <= not(apb_pwrite_reg) ;
      end if;
      if (((rbus_ack_i)='1' or (rbus_err_ack_i)='1' or (rbus_wr_strb_i)='1' or 
      (rbus_rd_strb_i)='1')) then
        apb_pready <= '1' ;
        apb_pslverr <= boolean_to_std(((rbus_err_ack_i)='1' or (rbus_wr_strb_i
        )='1' or (rbus_rd_strb_i)='1')) ;
        apb_prdata <= rbus_rd_data_i ;
      end if;
      if (apb_pready = '1') then
        apb_active <= '0' ;
      end if;
    end if ;
  end process ;
end module;
