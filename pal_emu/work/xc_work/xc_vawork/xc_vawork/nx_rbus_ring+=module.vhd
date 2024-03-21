architecture module of nx_rbus_ring is
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "sync_io"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 sync_io  "
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
  signal DUMMY4 : std_logic_vector(0 to 10) ;
  signal DUMMY5 : std_logic ;
  signal DUMMY6 : std_logic_vector(0 to 31) ;
  signal DUMMY7 : std_logic ;
  signal DUMMY8 : std_logic_vector(0 to 31) ;
  signal DUMMY9 : std_logic ;
  signal DUMMY10 : std_logic ;

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
    generic map(W => 11)
    port map (
       DUMMY4
      ,locl_addr_o
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY5
      ,locl_wr_strb_o
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY6
      ,locl_wr_data_o
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY7
      ,locl_rd_strb_o
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY8
      ,rbus_rd_data_o
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY9
      ,rbus_ack_o
    ) ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY10
      ,rbus_err_ack_o
    ) ;
  Generate1 : if sync_io : (TRUE) generate
    signal rbus_addr_i_reg : std_logic_vector(15 downto 0) ;
    signal rbus_wr_strb_i_reg : std_logic ;
    signal rbus_wr_data_i_reg : std_logic_vector(31 downto 0) ;
    signal rbus_rd_strb_i_reg : std_logic ;
    signal rbus_rd_data_i_reg : std_logic_vector(31 downto 0) ;
    signal rbus_ack_i_reg : std_logic ;
    signal rbus_err_ack_i_reg : std_logic ;
  begin

    process --:o45
    (clk,rst_n)
    begin
      if (rst_n = '0') then
        locl_addr_o <= "00000000000" ;
        locl_rd_strb_o <= '0' ;
        locl_wr_data_o <= "00000000000000000000000000000000" ;
        locl_wr_strb_o <= '0' ;
        rbus_ack_i_reg <= '0' ;
        rbus_ack_o <= '0' ;
        rbus_addr_i_reg <= "0000000000000000" ;
        rbus_addr_o <= "0000000000000000" ;
        rbus_err_ack_i_reg <= '0' ;
        rbus_err_ack_o <= '0' ;
        rbus_rd_data_i_reg <= "00000000000000000000000000000000" ;
        rbus_rd_data_o <= "00000000000000000000000000000000" ;
        rbus_rd_strb_i_reg <= '0' ;
        rbus_rd_strb_o <= '0' ;
        rbus_wr_data_i_reg <= "00000000000000000000000000000000" ;
        rbus_wr_data_o <= "00000000000000000000000000000000" ;
        rbus_wr_strb_i_reg <= '0' ;
        rbus_wr_strb_o <= '0' ;
      elsif (clk'event and clk = '1') then
        locl_wr_strb_o <= '0' ;
        locl_rd_strb_o <= '0' ;
        rbus_wr_strb_o <= '0' ;
        rbus_rd_strb_o <= '0' ;
        rbus_ack_o <= '0' ;
        rbus_err_ack_o <= '0' ;
        rbus_addr_i_reg <= rbus_addr_i ;
        rbus_wr_strb_i_reg <= rbus_wr_strb_i ;
        rbus_wr_data_i_reg <= rbus_wr_data_i ;
        rbus_rd_strb_i_reg <= rbus_rd_strb_i ;
        rbus_rd_data_i_reg <= rbus_rd_data_i ;
        rbus_ack_i_reg <= rbus_ack_i ;
        rbus_err_ack_i_reg <= rbus_err_ack_i ;
        if (((rbus_wr_strb_i_reg)='1' or (rbus_rd_strb_i_reg)='1')) then
          if ((rbus_addr_i_reg >= cfg_start_addr and rbus_addr_i_reg <=
           cfg_end_addr)) then
            locl_addr_o <= rbus_addr_i_reg(10 downto 0) ;
            locl_wr_strb_o <= rbus_wr_strb_i_reg ;
            locl_wr_data_o <= rbus_wr_data_i_reg ;
            locl_rd_strb_o <= rbus_rd_strb_i_reg ;
          else
            rbus_addr_o <= rbus_addr_i_reg ;
            rbus_wr_strb_o <= rbus_wr_strb_i_reg ;
            rbus_wr_data_o <= rbus_wr_data_i_reg ;
            rbus_rd_strb_o <= rbus_rd_strb_i_reg ;
          end if;
        end if;
        if (((locl_ack_i)='1' or (locl_err_ack_i)='1')) then
          rbus_rd_data_o <= locl_rd_data_i ;
          rbus_ack_o <= locl_ack_i ;
          rbus_err_ack_o <= locl_err_ack_i ;
        else
          rbus_rd_data_o <= rbus_rd_data_i_reg ;
          rbus_ack_o <= rbus_ack_i_reg ;
          rbus_err_ack_o <= rbus_err_ack_i_reg ;
        end if;
      end if ;
    end process ;
  end generate ;
end module;
