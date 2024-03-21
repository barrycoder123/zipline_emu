architecture module of bimc_master is
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  signal bimc_eccpar_debug_eccpar_corrupt : std_logic_vector(1 downto 0) ;
  signal bimc_eccpar_debug_eccpar_disable : std_logic_vector(1 downto 0) ;
  signal bimc_eccpar_debug_jabber_off : std_logic_vector(3 downto 0) ;
  signal bimc_eccpar_debug_memaddr : std_logic_vector(11 downto 0) ;
  signal bimc_eccpar_debug_memtype : std_logic_vector(3 downto 0) ;
  signal bimc_eccpar_debug_write_notify_ev : std_logic ;
  signal bimc_global_config_poll_ecc_par_error : std_logic ;
  signal bimc_global_config_poll_ecc_par_timer : std_logic_vector(25 downto 0) ;
  signal bimc_global_config_mem_wr_init : std_logic ;
  signal bimc_cmd0_data : std_logic_vector(31 downto 0) ;
  signal bimc_cmd1_addr : std_logic_vector(15 downto 0) ;
  signal bimc_cmd1_mem : std_logic_vector(11 downto 0) ;
  signal bimc_cmd1_memtype : std_logic_vector(3 downto 0) ;
  signal bimc_cmd2_opcode : std_logic_vector(7 downto 0) ;
  signal bimc_cmd2_write_notify_ev : std_logic ;
  signal bimc_ecc_error_c : std_logic ;
  signal bimc_interrupt_c : std_logic ;
  signal bimc_global_config_soft_reset : std_logic ;
  signal rcv_dat : std_logic_vector(71 downto 0) ;
  signal rcv_resp : std_logic ;
  signal rcv_frm : std_logic ;
  signal rcv_chk : std_logic ;
  signal bm_type : std_logic_vector(3 downto 0) ;
  signal bm_op : std_logic_vector(7 downto 0) ;
  signal bm_mem : std_logic_vector(11 downto 0) ;
  signal bm_addr : std_logic_vector(15 downto 0) ;
  signal bm_dat : std_logic_vector(31 downto 0) ;
  signal new_frame : std_logic ;
  signal rstate_text : std_logic_vector(103 downto 0) ;
  signal cputx_frame : std_logic_vector(72 downto 0) ;
  signal tstate_text : std_logic_vector(95 downto 0) ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic ;
  signal DUMMY4 : std_logic ;
  signal bimc_monitor_uncorrectable_ecc_error_din : std_logic ;
  signal bimc_monitor_correctable_ecc_error_din : std_logic ;
  signal bimc_monitor_parity_error_din : std_logic ;
  signal bimc_monitor_bimc_chain_rcv_error_din : std_logic ;
  signal bimc_monitor_rcv_invalid_opcode_din : std_logic ;
  signal bimc_monitor_unanswered_read_din : std_logic ;
  signal bimc_ecc_uncorrectable_error_cnt_uncorrectable_ecc_en : std_logic ;
  signal bimc_ecc_correctable_error_cnt_correctable_ecc_en : std_logic ;
  signal bimc_parity_error_cnt_parity_errors_en : std_logic ;
  signal debug_write_en : std_logic ;
  signal number_of_memories : std_logic_vector(11 downto 0) ;
  signal bimc_eccpar_debug_send : std_logic ;
  signal r_bimc_eccpar_debug_write_notify_ev : std_logic_vector(2 downto 0) ;
  signal bimc_eccpar_debug_sent_din : std_logic ;
  signal bimc_eccpar_debug_sent : std_logic ;
  signal bimc_cmd2_send : std_logic ;
  signal r_bimc_cmd2_write_notify_ev : std_logic_vector(2 downto 0) ;
  signal bimc_cmd2_sent_din : std_logic ;
  signal bimc_rxrsp2_rxflag_din : std_logic ;
  signal bimc_rxrsp0_data_din : std_logic_vector(31 downto 0) ;
  signal bimc_rxrsp1_data_din : std_logic_vector(31 downto 0) ;
  signal bimc_rxrsp2_data_din : std_logic_vector(7 downto 0) ;
  signal bimc_pollrsp2_rxflag_din : std_logic ;
  signal bimc_pollrsp0_data_din : std_logic_vector(31 downto 0) ;
  signal bimc_pollrsp1_data_din : std_logic_vector(31 downto 0) ;
  signal bimc_pollrsp2_data_din : std_logic_vector(7 downto 0) ;
  signal bimc_rxcmd2_rxflag_din : std_logic ;
  signal bimc_rxcmd0_data_din : std_logic_vector(31 downto 0) ;
  signal bimc_rxcmd1_addr_din : std_logic_vector(15 downto 0) ;
  signal bimc_rxcmd1_mem_din : std_logic_vector(11 downto 0) ;
  signal bimc_rxcmd1_memtype_din : std_logic_vector(3 downto 0) ;
  signal bimc_rxcmd2_opcode_din : std_logic_vector(7 downto 0) ;
  signal bimc_dbgcmd2_rxflag_din : std_logic ;
  signal bimc_dbgcmd0_data_din : std_logic_vector(31 downto 0) ;
  signal bimc_dbgcmd1_addr_din : std_logic_vector(15 downto 0) ;
  signal bimc_dbgcmd1_mem_din : std_logic_vector(11 downto 0) ;
  signal bimc_dbgcmd1_memtype_din : std_logic_vector(3 downto 0) ;
  signal bimc_dbgcmd2_opcode_din : std_logic_vector(7 downto 0) ;
  signal bimc_cmd2_sent : std_logic ;
  signal bimc_ecc_uncorrectable_error_cnt : std_logic_vector(31 downto 0) ;
  signal bimc_ecc_correctable_error_cnt : std_logic_vector(31 downto 0) ;
  signal bimc_parity_error_cnt : std_logic_vector(31 downto 0) ;
  signal bimc_rdat : std_logic_vector(71 downto 0) ;
  signal bimc_dat : std_logic_vector(71 downto 0) ;
  signal bimc_frm : std_logic ;
  signal bimc_chk : std_logic ;
  signal rx_type : std_logic_vector(3 downto 0) ;
  signal rx_op : std_logic_vector(7 downto 0) ;
  signal rx_mem : std_logic_vector(11 downto 0) ;
  signal rx_addr : std_logic_vector(15 downto 0) ;
  signal rx_dat : std_logic_vector(31 downto 0) ;
  signal rx_resp : std_logic ;
  signal rx_frm : std_logic ;
  signal rx_chk : std_logic_vector(1 downto 0) ;
  signal bm_resp : std_logic ;
  signal bm_cnt : std_logic_vector(6 downto 0) ;
  signal rstate : std_logic_vector(3 downto 0) ;
  signal nxt_rstate : std_logic_vector(3 downto 0) ;
  signal tstate : std_logic_vector(3 downto 0) ;
  signal nxt_tstate : std_logic_vector(3 downto 0) ;
  signal bimc_global_config_bimc_mem_init_done_din : std_logic ;
  signal sync_cnt : std_logic_vector(6 downto 0) ;
  signal cmd_cnt : std_logic ;
  signal mem_wr_init_dly : std_logic ;
  signal mem_wr_init_ev : std_logic ;
  signal eccpar_debug_ev : std_logic ;
  signal cpu_transmit_ev : std_logic ;
  signal reg_send : std_logic_vector(72 downto 0) ;
  signal r_reg_send : std_logic_vector(72 downto 0) ;
  signal cputx_type : std_logic_vector(3 downto 0) ;
  signal cputx_op : std_logic_vector(7 downto 0) ;
  signal cputx_mem : std_logic_vector(11 downto 0) ;
  signal cputx_addr : std_logic_vector(15 downto 0) ;
  signal cputx_dat : std_logic_vector(31 downto 0) ;
  signal auto_poll_ecc_par_ev : std_logic ;
  signal poll_ecc_par_timer : std_logic_vector(25 downto 0) ;
  signal DUMMY5 : std_logic_vector(72 downto 0) ;

begin
  _zz_strnp_0 : ixc_assign
    generic map(W => 4)
    port map (
       bm_type
      ,bimc_dat(71 downto 68)
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 8)
    port map (
       bm_op
      ,bimc_dat(67 downto 60)
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 12)
    port map (
       bm_mem
      ,bimc_dat(59 downto 48)
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 16)
    port map (
       bm_addr
      ,bimc_dat(47 downto 32)
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 32)
    port map (
       bm_dat
      ,bimc_dat(31 downto 0)
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 1)
    port map (
       rcv_chk
      ,bimc_chk
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 1)
    port map (
       rcv_frm
      ,bimc_frm
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 1)
    port map (
       rcv_resp
      ,bm_resp
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 72)
    port map (
       rcv_dat
      ,bimc_dat
    ) ;
  new_frame <= boolean_to_std((rx_chk = std_logic_vector'("10") or rx_chk =
   std_logic_vector'("01"))) ;
  rstate_text <=
   "00100000001000000010000000100000001000000010000000100000001000000010000001101001011001000110110001100101"
   when rstate = std_logic_vector'("0010") else
   "00100000001000000010000000100000001000000010000001000011010011110100110101001101010000010100111001000100"
   when rstate = std_logic_vector'("0001") else
   "00100000001000000010000000100000001000000100001101001101010001000101111101000100010011110100111001000101"
   when rstate = std_logic_vector'("0000") else
   "00100000010100100100010101010011010100000100111101001110010100110100010101011111010000110100110101000100"
   when rstate = std_logic_vector'("0011") else
   "01010010010001010101001101010000010011110100111001010011010001010101111101001001010001000100110001000101"
   when rstate = std_logic_vector'("0100") else
   "00100000010100100100010101010011010100000100111101001110010100110100010101011111010011010100010101001101"
   when rstate = std_logic_vector'("0101") else
   "00100000001000000010000000100000001000000101001001010011010100000101111101000100010011110100111001000101"   when rstate = std_logic_vector'("0110") else
   "00100000010100000100111101001100010011000101111101000101010100100101001001011111010000110100110101000100"
   when rstate = std_logic_vector'("0111") else
   "01010000010011110100110001001100010111110100010101010010010100100101111101001001010001000100110001000101"
   when rstate = std_logic_vector'("1000") else
   "00100000010100000100111101001100010011000101111101000101010100100101001001011111010011010100010101001101"
   when rstate = std_logic_vector'("1001") else
   "01010000010011110100110001001100010111110100010101010010010100100101111101000100010011110100111001000101"
   when rstate = std_logic_vector'("1010") else
   "00100000001000000010000000100000001000000010000001110101011011100110101101101110011011110111011101101110"
   ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 73)
    port map (
       cputx_frame
      ,DUMMY5
    ) ;
  DUMMY5 <= std_logic_vector'(std_logic'('0') & cputx_type & cputx_op &
   cputx_mem & cputx_addr & cputx_dat) ;
  tstate_text <=
   "001000000010000000100000001000000010000000100000001000000101001001000101010100110100010101010100"
   when tstate = std_logic_vector'("0000") else
   "001000000010000000100000001000000010000000100000010000010101010101010100010011110100100101000100"
   when tstate = std_logic_vector'("1011") else
   "001000000010000000100000001000000010000000100000001000000010000000100000010000110101000001010101"
   when tstate = std_logic_vector'("0001") else
   "001000000010000000100000001000000010000000100000001000000010000001101001011001000110110001100101"
   when tstate = std_logic_vector'("0010") else
   "001000000010000000100000001000000100000101010101010101000100111101010000010011110100110001001100"
   when tstate = std_logic_vector'("0111") else
   "001000000010000000100000010011010100010101001101010101110101001001001001010011100100100101010100"
   when tstate = std_logic_vector'("1000") else
   "001000000010000000100000001000000101000001001001010000110100101101011111010011100101100001010100"
   when tstate = std_logic_vector'("0011") else
   "010001010100001101000011010100000100000101010010010111110100010001000101010000100101010101000111"
   when tstate = std_logic_vector'("0101") else
   "001000000010000000100000001000000010000001110101011011100110101101101110011011110111011101101110"
   ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 32)
    port map (
       bimc_cmd0_data
      ,o_bimc_cmd0
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 16)
    port map (
       bimc_cmd1_addr
      ,o_bimc_cmd1(15 downto 0)
    ) ;
  _zz_strnp_12 : ixc_assign
    generic map(W => 12)
    port map (
       bimc_cmd1_mem
      ,o_bimc_cmd1(27 downto 16)
    ) ;
  _zz_strnp_13 : ixc_assign
    generic map(W => 4)
    port map (
       bimc_cmd1_memtype
      ,o_bimc_cmd1(31 downto 28)
    ) ;
  _zz_strnp_14 : ixc_assign
    generic map(W => 8)
    port map (
       bimc_cmd2_opcode
      ,o_bimc_cmd2(7 downto 0)
    ) ;
  bimc_cmd2_write_notify_ev <= boolean_to_std(((o_bimc_cmd2(8 downto 8))/="0"
   and (bimc_cmd2_send = '0'))) ;
  _zz_strnp_15 : ixc_assign
    generic map(W => 2)
    port map (
       bimc_eccpar_debug_eccpar_corrupt
      ,o_bimc_eccpar_debug(17 downto 16)
    ) ;
  _zz_strnp_16 : ixc_assign
    generic map(W => 2)
    port map (
       bimc_eccpar_debug_eccpar_disable
      ,o_bimc_eccpar_debug(21 downto 20)
    ) ;
  _zz_strnp_17 : ixc_assign
    generic map(W => 4)
    port map (
       bimc_eccpar_debug_jabber_off
      ,o_bimc_eccpar_debug(27 downto 24)
    ) ;
  _zz_strnp_18 : ixc_assign
    generic map(W => 12)
    port map (
       bimc_eccpar_debug_memaddr
      ,o_bimc_eccpar_debug(11 downto 0)
    ) ;
  _zz_strnp_19 : ixc_assign
    generic map(W => 4)
    port map (
       bimc_eccpar_debug_memtype
      ,o_bimc_eccpar_debug(15 downto 12)
    ) ;
  bimc_eccpar_debug_write_notify_ev <= boolean_to_std(((o_bimc_eccpar_debug(22)
  )='1' and (bimc_eccpar_debug_send = '0'))) ;
  _zz_strnp_20 : ixc_assign
    generic map(W => 1)
    port map (
       bimc_global_config_mem_wr_init
      ,o_bimc_global_config(3 downto 3)
    ) ;
  _zz_strnp_21 : ixc_assign
    generic map(W => 1)
    port map (
       bimc_global_config_poll_ecc_par_error
      ,o_bimc_global_config(4 downto 4)
    ) ;
  _zz_strnp_22 : ixc_assign
    generic map(W => 26)
    port map (
       bimc_global_config_poll_ecc_par_timer
      ,o_bimc_global_config(31 downto 6)
    ) ;
  _zz_strnp_23 : ixc_assign
    generic map(W => 1)
    port map (
       bimc_global_config_soft_reset
      ,o_bimc_global_config(0 downto 0)
    ) ;
  bimc_ecc_error_c <= boolean_to_std(((bimc_monitor_uncorrectable_ecc_error_din
  )='1' or (bimc_monitor_correctable_ecc_error_din)='1' or 
  (bimc_monitor_parity_error_din)='1')) ;
  bimc_interrupt_c <= or_reduce(i_bimc_monitor) ;
  _zz_strnp_24 : ixc_assign
    generic map(W => 1)
    port map (
       debug_write_en
      ,o_bimc_global_config(5 downto 5)
    ) ;
  _zz_strnp_25 : ixc_assign
    generic map(W => 2)
    port map (
       i_bimc_global_config(1 downto 0)
      ,o_bimc_global_config(1 downto 0)
    ) ;
  _zz_strnp_26 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_global_config(2 downto 2)
      ,bimc_global_config_bimc_mem_init_done_din
    ) ;
  _zz_strnp_27 : ixc_assign
    generic map(W => 2)
    port map (
       i_bimc_global_config(4 downto 3)
      ,o_bimc_global_config(4 downto 3)
    ) ;
  _zz_strnp_28 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_global_config(5 downto 5)
      ,debug_write_en
    ) ;
  _zz_strnp_29 : ixc_assign
    generic map(W => 26)
    port map (
       i_bimc_global_config(31 downto 6)
      ,o_bimc_global_config(31 downto 6)
    ) ;
  _zz_strnp_30 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_cmd2(9 downto 9)
      ,bimc_cmd2_sent
    ) ;
  _zz_strnp_31 : ixc_assign
    generic map(W => 8)
    port map (
       i_bimc_cmd2(7 downto 0)
      ,o_bimc_cmd2(7 downto 0)
    ) ;
  _zz_strnp_32 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_cmd2(8 downto 8)
      ,o_bimc_cmd2(8 downto 8)
    ) ;
  _zz_strnp_33 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_cmd2(10 downto 10)
      ,o_bimc_cmd2(10 downto 10)
    ) ;
  _zz_strnp_34 : ixc_assign
    generic map(W => 23)
    port map (
       i_bimc_eccpar_debug(22 downto 0)
      ,o_bimc_eccpar_debug(22 downto 0)
    ) ;
  _zz_strnp_35 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_eccpar_debug(23 downto 23)
      ,bimc_eccpar_debug_sent
    ) ;
  _zz_strnp_36 : ixc_assign
    generic map(W => 5)
    port map (
       i_bimc_eccpar_debug(28 downto 24)
      ,o_bimc_eccpar_debug(28 downto 24)
    ) ;
  _zz_strnp_37 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_monitor(0 downto 0)
      ,bimc_monitor_uncorrectable_ecc_error_din
    ) ;
  _zz_strnp_38 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_monitor(1 downto 1)
      ,bimc_monitor_correctable_ecc_error_din
    ) ;
  _zz_strnp_39 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_monitor(2 downto 2)
      ,bimc_monitor_parity_error_din
    ) ;
  _zz_strnp_40 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_monitor(4 downto 4)
      ,bimc_monitor_bimc_chain_rcv_error_din
    ) ;
  _zz_strnp_41 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_monitor(5 downto 5)
      ,bimc_monitor_rcv_invalid_opcode_din
    ) ;
  _zz_strnp_42 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_monitor(6 downto 6)
      ,bimc_monitor_unanswered_read_din
    ) ;
  i_bimc_monitor(3 downto 3) <= "0" ;
  _zz_strnp_43 : ixc_assign
    generic map(W => 32)
    port map (
       i_bimc_ecc_uncorrectable_error_cnt
      ,bimc_ecc_uncorrectable_error_cnt
    ) ;
  _zz_strnp_44 : ixc_assign
    generic map(W => 32)
    port map (
       i_bimc_ecc_correctable_error_cnt
      ,bimc_ecc_correctable_error_cnt
    ) ;
  _zz_strnp_45 : ixc_assign
    generic map(W => 32)
    port map (
       i_bimc_parity_error_cnt
      ,bimc_parity_error_cnt
    ) ;
  _zz_strnp_46 : ixc_assign
    generic map(W => 12)
    port map (
       i_bimc_memid
      ,number_of_memories
    ) ;
  _zz_strnp_47 : ixc_assign
    generic map(W => 32)
    port map (
       i_bimc_rxcmd0
      ,bimc_rxcmd0_data_din
    ) ;
  _zz_strnp_48 : ixc_assign
    generic map(W => 16)
    port map (
       i_bimc_rxcmd1(15 downto 0)
      ,bimc_rxcmd1_addr_din
    ) ;
  _zz_strnp_49 : ixc_assign
    generic map(W => 12)
    port map (
       i_bimc_rxcmd1(27 downto 16)
      ,bimc_rxcmd1_mem_din
    ) ;
  _zz_strnp_50 : ixc_assign
    generic map(W => 4)
    port map (
       i_bimc_rxcmd1(31 downto 28)
      ,bimc_rxcmd1_memtype_din
    ) ;
  _zz_strnp_51 : ixc_assign
    generic map(W => 8)
    port map (
       i_bimc_rxcmd2(7 downto 0)
      ,bimc_rxcmd2_opcode_din
    ) ;
  _zz_strnp_52 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_rxcmd2(8 downto 8)
      ,bimc_rxcmd2_rxflag_din
    ) ;
  _zz_strnp_53 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_rxcmd2(9 downto 9)
      ,o_bimc_rxcmd2(9 downto 9)
    ) ;
  _zz_strnp_54 : ixc_assign
    generic map(W => 32)
    port map (
       i_bimc_dbgcmd0
      ,bimc_dbgcmd0_data_din
    ) ;
  _zz_strnp_55 : ixc_assign
    generic map(W => 16)
    port map (
       i_bimc_dbgcmd1(15 downto 0)
      ,bimc_dbgcmd1_addr_din
    ) ;
  _zz_strnp_56 : ixc_assign
    generic map(W => 12)
    port map (
       i_bimc_dbgcmd1(27 downto 16)
      ,bimc_dbgcmd1_mem_din
    ) ;
  _zz_strnp_57 : ixc_assign
    generic map(W => 4)
    port map (
       i_bimc_dbgcmd1(31 downto 28)
      ,bimc_dbgcmd1_memtype_din
    ) ;
  _zz_strnp_58 : ixc_assign
    generic map(W => 8)
    port map (
       i_bimc_dbgcmd2(7 downto 0)
      ,bimc_dbgcmd2_opcode_din
    ) ;
  _zz_strnp_59 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_dbgcmd2(8 downto 8)
      ,bimc_dbgcmd2_rxflag_din
    ) ;
  _zz_strnp_60 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_dbgcmd2(9 downto 9)
      ,o_bimc_dbgcmd2(9 downto 9)
    ) ;
  _zz_strnp_61 : ixc_assign
    generic map(W => 32)
    port map (
       i_bimc_rxrsp0
      ,bimc_rxrsp0_data_din
    ) ;
  _zz_strnp_62 : ixc_assign
    generic map(W => 32)
    port map (
       i_bimc_rxrsp1
      ,bimc_rxrsp1_data_din
    ) ;
  _zz_strnp_63 : ixc_assign
    generic map(W => 8)
    port map (
       i_bimc_rxrsp2(7 downto 0)
      ,bimc_rxrsp2_data_din
    ) ;
  _zz_strnp_64 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_rxrsp2(8 downto 8)
      ,bimc_rxrsp2_rxflag_din
    ) ;
  _zz_strnp_65 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_rxrsp2(9 downto 9)
      ,o_bimc_rxrsp2(9 downto 9)
    ) ;
  _zz_strnp_66 : ixc_assign
    generic map(W => 32)
    port map (
       i_bimc_pollrsp0
      ,bimc_pollrsp0_data_din
    ) ;
  _zz_strnp_67 : ixc_assign
    generic map(W => 32)
    port map (
       i_bimc_pollrsp1
      ,bimc_pollrsp1_data_din
    ) ;
  _zz_strnp_68 : ixc_assign
    generic map(W => 8)
    port map (
       i_bimc_pollrsp2(7 downto 0)
      ,bimc_pollrsp2_data_din
    ) ;
  _zz_strnp_69 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_pollrsp2(8 downto 8)
      ,bimc_pollrsp2_rxflag_din
    ) ;
  _zz_strnp_70 : ixc_assign
    generic map(W => 1)
    port map (
       i_bimc_pollrsp2(9 downto 9)
      ,o_bimc_pollrsp2(9 downto 9)
    ) ;
  _zz_strnp_71 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY0
      ,bimc_ecc_error
    ) ;
  _zz_strnp_72 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY1
      ,bimc_interrupt
    ) ;
  _zz_strnp_73 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY2
      ,bimc_odat
    ) ;
  _zz_strnp_74 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY3
      ,bimc_osync
    ) ;
  _zz_strnp_75 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY4
      ,bimc_rst_n
    ) ;

  process --:o285
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      bimc_rdat <=
       "000000000000000000000000000000000000000000000000000000000000000000000000"
       ;
      bimc_dat <=
       "000000000000000000000000000000000000000000000000000000000000000000000000"
       ;
      bm_resp <= '0' ;
      bimc_frm <= '0' ;
      bimc_chk <= '0' ;
      bm_cnt <= "1111100" ;
    elsif (clk'event and clk = '1') then
      bimc_rdat <= std_logic_vector'(bimc_rdat(70 downto 0) & bimc_idat) ;
      bimc_dat <= it_cond_op((bimc_isync)='1',bimc_rdat,bimc_dat) ;
      bm_resp <= it_cond_op((bimc_isync)='1',bimc_idat,bm_resp) ;
      bimc_frm <= it_cond_op((bimc_isync)='1',boolean_to_std(ext(bm_cnt,32) =
       std_logic_vector'("00000000000000000000000001001000")),bimc_frm) ;
      bimc_chk <= it_cond_op((bimc_isync)='1',not(bimc_chk),bimc_chk) ;
      bm_cnt <= it_cond_op((bimc_isync)='1',std_logic_vector'("0000000"
      ),it_cond_op(bm_cnt = std_logic_vector'("1111111"),std_logic_vector'
      ("1111111"),(bm_cnt + std_logic_vector'("0000001")))) ;
    end if ;
  end process ;

  process --:o307
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      rx_type <= "0000" ;
      rx_op <= "00000000" ;
      rx_mem <= "000000000000" ;
      rx_addr <= "0000000000000000" ;
      rx_dat <= "00000000000000000000000000000000" ;
      rx_resp <= '0' ;
      rx_frm <= '0' ;
      rx_chk <= "00" ;
      rstate <= "0010" ;
      number_of_memories <= "000000000000" ;
      bimc_global_config_bimc_mem_init_done_din <= '0' ;
      bimc_dbgcmd2_rxflag_din <= '0' ;
      bimc_dbgcmd2_opcode_din <= "00000000" ;
      bimc_dbgcmd1_memtype_din <= "0000" ;
      bimc_dbgcmd1_mem_din <= "000000000000" ;
      bimc_dbgcmd1_addr_din <= "0000000000000000" ;
      bimc_dbgcmd0_data_din <= "00000000000000000000000000000000" ;
      bimc_rxcmd2_rxflag_din <= '0' ;
      bimc_rxcmd2_opcode_din <= "00000000" ;
      bimc_rxcmd1_memtype_din <= "0000" ;
      bimc_rxcmd1_mem_din <= "000000000000" ;
      bimc_rxcmd1_addr_din <= "0000000000000000" ;
      bimc_rxcmd0_data_din <= "00000000000000000000000000000000" ;
      bimc_rxrsp2_rxflag_din <= '0' ;
      bimc_rxrsp0_data_din <= "00000000000000000000000000000000" ;
      bimc_rxrsp1_data_din <= "00000000000000000000000000000000" ;
      bimc_rxrsp2_data_din <= "00000000" ;
      bimc_pollrsp2_rxflag_din <= '0' ;
      bimc_pollrsp0_data_din <= "00000000000000000000000000000000" ;
      bimc_pollrsp1_data_din <= "00000000000000000000000000000000" ;
      bimc_pollrsp2_data_din <= "00000000" ;
      bimc_monitor_bimc_chain_rcv_error_din <= '0' ;
      bimc_monitor_correctable_ecc_error_din <= '0' ;
      bimc_monitor_parity_error_din <= '0' ;
      bimc_monitor_uncorrectable_ecc_error_din <= '0' ;
      bimc_monitor_rcv_invalid_opcode_din <= '0' ;
      bimc_monitor_unanswered_read_din <= '0' ;
      bimc_ecc_uncorrectable_error_cnt_uncorrectable_ecc_en <= '0' ;
      bimc_ecc_correctable_error_cnt_correctable_ecc_en <= '0' ;
      bimc_parity_error_cnt_parity_errors_en <= '0' ;
    elsif (clk'event and clk = '1') then
      rx_type <= rcv_dat(71 downto 68) ;
      rx_op <= rcv_dat(67 downto 60) ;
      rx_mem <= rcv_dat(59 downto 48) ;
      rx_addr <= rcv_dat(47 downto 32) ;
      rx_dat <= rcv_dat(31 downto 0) ;
      rx_resp <= rcv_resp ;
      rx_frm <= rcv_frm ;
      rx_chk <= std_logic_vector'(rx_chk(0) & rcv_chk) ;
      rstate <= nxt_rstate ;
      number_of_memories <= ext(it_cond_op((rstate = std_logic_vector'("0001")
       and std_logic_vector'(rx_type & rx_op & rx_mem & rx_addr) =
       std_logic_vector'("1111000000101111111111110000000000000001")),(ext
      (rx_dat(11 downto 0),32) - std_logic_vector'
      ("00000000000000000000000000000001")),ext(number_of_memories,32)),12) ;
      bimc_global_config_bimc_mem_init_done_din <= it_cond_op(tstate =
       std_logic_vector'("0000"),std_logic'('0'),it_cond_op((rstate =
       std_logic_vector'("0001") and rx_op = std_logic_vector'("00000010") and
       rx_addr = std_logic_vector'("0000000000000001")),std_logic'('1'
      ),bimc_global_config_bimc_mem_init_done_din)) ;
      bimc_dbgcmd2_rxflag_din <= it_cond_op(it_conv_std_logic(o_bimc_dbgcmd2(9
       downto 9)) = '1',std_logic'('0'),it_cond_op((rstate = std_logic_vector'
      ("0000") and rx_op /= std_logic_vector'("00000000")),std_logic'('1'
      ),bimc_dbgcmd2_rxflag_din)) ;
      bimc_dbgcmd2_opcode_din <= it_cond_op((rstate = std_logic_vector'("0001")
       and rx_op /= std_logic_vector'("00000000") and (bimc_dbgcmd2_rxflag_din =
       '0')),rx_op,bimc_dbgcmd2_opcode_din) ;
      bimc_dbgcmd1_memtype_din <= it_cond_op((rstate = std_logic_vector'("0001")
       and rx_op /= std_logic_vector'("00000000") and (bimc_dbgcmd2_rxflag_din =
       '0')),rx_type,bimc_dbgcmd1_memtype_din) ;
      bimc_dbgcmd1_mem_din <= it_cond_op((rstate = std_logic_vector'("0001") and
       rx_op /= std_logic_vector'("00000000") and (bimc_dbgcmd2_rxflag_din = '0'
      )),rx_mem,bimc_dbgcmd1_mem_din) ;
      bimc_dbgcmd1_addr_din <= it_cond_op((rstate = std_logic_vector'("0001")
       and rx_op /= std_logic_vector'("00000000") and (bimc_dbgcmd2_rxflag_din =
       '0')),rx_addr,bimc_dbgcmd1_addr_din) ;
      bimc_dbgcmd0_data_din <= it_cond_op((rstate = std_logic_vector'("0001")
       and rx_op /= std_logic_vector'("00000000") and (bimc_dbgcmd2_rxflag_din =
       '0')),rx_dat,bimc_dbgcmd0_data_din) ;
      bimc_rxcmd2_rxflag_din <= it_cond_op(it_conv_std_logic(o_bimc_rxcmd2(9
       downto 9)) = '1',std_logic'('0'),it_cond_op(rstate = std_logic_vector'
      ("0100"),std_logic'('1'),bimc_rxcmd2_rxflag_din)) ;
      bimc_rxcmd2_opcode_din <= it_cond_op((rstate = std_logic_vector'("0011")
       and (bimc_rxcmd2_rxflag_din = '0')),rx_op,bimc_rxcmd2_opcode_din) ;
      bimc_rxcmd1_memtype_din <= it_cond_op((rstate = std_logic_vector'("0011")
       and (bimc_rxcmd2_rxflag_din = '0')),rx_type,bimc_rxcmd1_memtype_din) ;
      bimc_rxcmd1_mem_din <= it_cond_op((rstate = std_logic_vector'("0011") and 
      (bimc_rxcmd2_rxflag_din = '0')),rx_mem,bimc_rxcmd1_mem_din) ;
      bimc_rxcmd1_addr_din <= it_cond_op((rstate = std_logic_vector'("0011") and
       (bimc_rxcmd2_rxflag_din = '0')),rx_addr,bimc_rxcmd1_addr_din) ;
      bimc_rxcmd0_data_din <= it_cond_op((rstate = std_logic_vector'("0011") and
       (bimc_rxcmd2_rxflag_din = '0')),rx_dat,bimc_rxcmd0_data_din) ;
      bimc_rxrsp2_rxflag_din <= it_cond_op(it_conv_std_logic(o_bimc_rxrsp2(9
       downto 9)) = '1',std_logic'('0'),it_cond_op((rstate = std_logic_vector'
      ("0110") and rx_op /= std_logic_vector'("00000000")),std_logic'('1'
      ),bimc_rxrsp2_rxflag_din)) ;
      bimc_rxrsp2_data_din <= it_cond_op((rstate = std_logic_vector'("0101") and
       rx_op /= std_logic_vector'("00000000") and (bimc_rxrsp2_rxflag_din = '0')
      ),rx_op,bimc_rxrsp2_data_din) ;
      bimc_rxrsp1_data_din <= it_cond_op((rstate = std_logic_vector'("0101") and
       rx_op /= std_logic_vector'("00000000") and (bimc_rxrsp2_rxflag_din = '0')
      ),std_logic_vector'(rx_type & rx_mem & rx_addr),bimc_rxrsp1_data_din) ;
      bimc_rxrsp0_data_din <= it_cond_op((rstate = std_logic_vector'("0101") and
       rx_op /= std_logic_vector'("00000000") and (bimc_rxrsp2_rxflag_din = '0')
      ),rx_dat,bimc_rxrsp0_data_din) ;
      bimc_monitor_bimc_chain_rcv_error_din <= it_cond_op(it_conv_std_logic
      (o_bimc_monitor_mask(4 downto 4)) = '1',std_logic'('0'),it_cond_op((
      (rstate = std_logic_vector'("0100") or rstate = std_logic_vector'("1000")
       or rstate = std_logic_vector'("0010")) and (rx_frm = '0') and (new_frame
      )='1'),std_logic'('1'),bimc_monitor_bimc_chain_rcv_error_din)) ;
      bimc_pollrsp2_rxflag_din <= it_cond_op(it_conv_std_logic(o_bimc_pollrsp2(9
       downto 9)) = '1',std_logic'('0'),it_cond_op((rstate = std_logic_vector'
      ("1010") and rx_op /= std_logic_vector'("00000000")),std_logic'('1'
      ),bimc_pollrsp2_rxflag_din)) ;
      bimc_pollrsp2_data_din <= it_cond_op((rstate = std_logic_vector'("1001")
       and rx_op /= std_logic_vector'("00000000") and (bimc_pollrsp2_rxflag_din
       = '0')),rx_op,bimc_pollrsp2_data_din) ;
      bimc_pollrsp1_data_din <= it_cond_op((rstate = std_logic_vector'("1001")
       and rx_op /= std_logic_vector'("00000000") and (bimc_pollrsp2_rxflag_din
       = '0')),std_logic_vector'(rx_type & rx_mem & rx_addr
      ),bimc_pollrsp1_data_din) ;
      bimc_pollrsp0_data_din <= it_cond_op((rstate = std_logic_vector'("1001")
       and rx_op /= std_logic_vector'("00000000") and (bimc_pollrsp2_rxflag_din
       = '0')),rx_dat,bimc_pollrsp0_data_din) ;
      bimc_monitor_correctable_ecc_error_din <= it_cond_op((o_bimc_monitor_mask
      (1 downto 1))/="0",std_logic'('0'),it_cond_op((rstate = std_logic_vector'
      ("1001") and rx_op = std_logic_vector'("00000011") and rx_addr =
       std_logic_vector'("0000111011001100") and rx_dat(1 downto 0) =
       std_logic_vector'("11")),std_logic'('1'
      ),bimc_monitor_correctable_ecc_error_din)) ;
      bimc_monitor_parity_error_din <= it_cond_op((o_bimc_monitor_mask(2 downto
       2))/="0",std_logic'('0'),it_cond_op((rstate = std_logic_vector'("1001")
       and rx_op = std_logic_vector'("00000011") and rx_addr = std_logic_vector'
      ("0000100110100100") and rx_dat /= std_logic_vector'
      ("00000000000000000000000000000000")),std_logic'('1'
      ),bimc_monitor_parity_error_din)) ;
      bimc_monitor_uncorrectable_ecc_error_din <= it_cond_op(
      (o_bimc_monitor_mask(0 downto 0))/="0",std_logic'('0'),it_cond_op((rstate
       = std_logic_vector'("1001") and rx_op = std_logic_vector'("00000011") and
       rx_addr = std_logic_vector'("0000111011001100") and (rx_dat(2) and rx_dat
      (0)) = '1'),std_logic'('1'),bimc_monitor_uncorrectable_ecc_error_din)) ;
      bimc_monitor_rcv_invalid_opcode_din <= it_cond_op((o_bimc_monitor_mask(5
       downto 5))/="0",std_logic'('0'),it_cond_op(((rstate = std_logic_vector'
      ("0011") and rx_op /= std_logic_vector'("00000001")) or (rstate =
       std_logic_vector'("0111") and rx_op /= std_logic_vector'("00000011"))
      ),std_logic'('1'),bimc_monitor_rcv_invalid_opcode_din)) ;
      bimc_monitor_unanswered_read_din <= it_cond_op((o_bimc_monitor_mask(6
       downto 6))/="0",std_logic'('0'),it_cond_op((rstate = std_logic_vector'
      ("0001") and rx_op = std_logic_vector'("00000001")),std_logic'('1'
      ),bimc_monitor_unanswered_read_din)) ;
      bimc_ecc_uncorrectable_error_cnt_uncorrectable_ecc_en <= boolean_to_std(
      (rstate = std_logic_vector'("1001") and rx_op = std_logic_vector'
      ("00000011") and rx_addr = std_logic_vector'("0000111011001100") and 
      (rx_dat(2) and rx_dat(0)) = '1')) ;
      bimc_ecc_correctable_error_cnt_correctable_ecc_en <= boolean_to_std(
      (rstate = std_logic_vector'("1001") and rx_op = std_logic_vector'
      ("00000011") and rx_addr = std_logic_vector'("0000111011001100") and
       rx_dat(1 downto 0) = std_logic_vector'("11"))) ;
      bimc_parity_error_cnt_parity_errors_en <= boolean_to_std((rstate =
       std_logic_vector'("1001") and rx_op = std_logic_vector'("00000011") and
       rx_addr = std_logic_vector'("0000100110100100") and rx_dat /=
       std_logic_vector'("00000000000000000000000000000000"))) ;
    end if ;
  end process ;

  process --:o397
  (*)
  begin

    case rstate is
      when  "0010"  =>
        if (((rx_frm)='1' and (rx_resp = '0') and (new_frame)='1')) then
          nxt_rstate <= "0001" ;
        elsif (((rx_frm)='1' and (rx_resp)='1' and (new_frame)='1' and rx_op /=
         std_logic_vector'("00000011"))) then
          nxt_rstate <= "0011" ;
        elsif (((rx_frm)='1' and (rx_resp)='1' and (new_frame)='1' and rx_op =
         std_logic_vector'("00000011"))) then
          nxt_rstate <= "0111" ;
        elsif (((rx_frm = '0') and (new_frame)='1')) then
          nxt_rstate <= "0010" ;
        else
          nxt_rstate <= rstate ;
        end if;
      when  "0001"  =>
        if (rx_op = std_logic_vector'("00000001")) then
          nxt_rstate <= "0000" ;
        elsif (rx_op = std_logic_vector'("00000011")) then
          nxt_rstate <= "0000" ;
        else
          nxt_rstate <= "0000" ;
        end if;
      when  "0000"  =>
        nxt_rstate <= "0010" ;
      when  "0011"  =>
        if (rx_op = std_logic_vector'("00000001")) then
          nxt_rstate <= "0100" ;
        elsif (rx_op = std_logic_vector'("00000011")) then
          nxt_rstate <= "0100" ;
        else
          nxt_rstate <= "0000" ;
        end if;
      when  "0100"  =>
        if (((rx_frm)='1' and (rx_resp)='1' and (rx_chk = std_logic_vector'("10"
        ) or rx_chk = std_logic_vector'("01")))) then
          nxt_rstate <= "0101" ;
        elsif (((rx_frm)='1' and (rx_resp = '0') and (rx_chk = std_logic_vector'
        ("10") or rx_chk = std_logic_vector'("01")))) then
          nxt_rstate <= "0110" ;
        elsif (((rx_frm = '0') and (rx_chk = std_logic_vector'("10") or rx_chk =
         std_logic_vector'("01")))) then
          nxt_rstate <= "0110" ;
        else
          nxt_rstate <= rstate ;
        end if;
      when  "0101"  =>
        nxt_rstate <= "0110" ;
      when  "0110"  =>
        nxt_rstate <= "0010" ;
      when  "0111"  =>
        if (rx_op = std_logic_vector'("00000011")) then
          nxt_rstate <= "1000" ;
        else
          nxt_rstate <= "0000" ;
        end if;
      when  "1000"  =>
        if (((rx_frm)='1' and (rx_resp)='1' and (rx_chk = std_logic_vector'("10"
        ) or rx_chk = std_logic_vector'("01")))) then
          nxt_rstate <= "1001" ;
        elsif (((rx_frm)='1' and (rx_resp = '0') and (rx_chk = std_logic_vector'
        ("10") or rx_chk = std_logic_vector'("01")))) then
          nxt_rstate <= "1010" ;
        elsif (((rx_frm = '0') and (rx_chk = std_logic_vector'("10") or rx_chk =
         std_logic_vector'("01")))) then
          nxt_rstate <= "1010" ;
        else
          nxt_rstate <= rstate ;
        end if;
      when  "1001"  =>
        nxt_rstate <= "1010" ;
      when  "1010"  =>
        nxt_rstate <= "0010" ;
      when others =>
        nxt_rstate <= "0010" ;
    end case;
  end process ;

  process --:o526
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      bimc_ecc_error <= '0' ;
      bimc_interrupt <= '0' ;
      bimc_rst_n <= '0' ;
      bimc_osync <= '0' ;
      bimc_odat <= '0' ;
      r_reg_send <=
       "0000000000000000000000000000000000000000000000000000000000000000000000000"
       ;
      tstate <= "0000" ;
      sync_cnt <= "0000001" ;
      cmd_cnt <= '1' ;
      auto_poll_ecc_par_ev <= '0' ;
      poll_ecc_par_timer <= "00000000000000000000000000" ;
      mem_wr_init_dly <= '0' ;
      mem_wr_init_ev <= '0' ;
      r_bimc_eccpar_debug_write_notify_ev <= "000" ;
      eccpar_debug_ev <= '0' ;
      bimc_eccpar_debug_sent_din <= '0' ;
      bimc_cmd2_send <= '0' ;
      bimc_eccpar_debug_send <= '0' ;
      r_bimc_cmd2_write_notify_ev <= "000" ;
      cpu_transmit_ev <= '0' ;
      bimc_cmd2_sent_din <= '0' ;
      cputx_type <= "0000" ;
      cputx_op <= "00000000" ;
      cputx_mem <= "000000000000" ;
      cputx_addr <= "0000000000000000" ;
      cputx_dat <= "00000000000000000000000000000000" ;
    elsif (clk'event and clk = '1') then
      bimc_ecc_error <= bimc_ecc_error_c ;
      bimc_interrupt <= bimc_interrupt_c ;
      bimc_rst_n <= not(bimc_global_config_soft_reset) ;
      bimc_osync <= it_cond_op(ext(sync_cnt,32) = std_logic_vector'
      ("00000000000000000000000001001000"),std_logic'('1'),std_logic'('0')) ;
      bimc_odat <= reg_send(conv_integer(sync_cnt)) ;
      r_reg_send <= reg_send ;
      tstate <= nxt_tstate ;
      sync_cnt <= ext(it_cond_op(sync_cnt = std_logic_vector'("0000000"
      ),std_logic_vector'("00000000000000000000000001001000"),(ext(sync_cnt,32)
       - std_logic_vector'("00000000000000000000000000000001"))),7) ;
      cmd_cnt <= it_cond_op(sync_cnt = std_logic_vector'("0000000"),not(cmd_cnt
      ),cmd_cnt) ;
      auto_poll_ecc_par_ev <= it_cond_op(poll_ecc_par_timer = std_logic_vector'
      ("00000000000000000000000010"),std_logic'('1'),it_cond_op(tstate =
       std_logic_vector'("0111"),std_logic'('0'),auto_poll_ecc_par_ev)) ;
      poll_ecc_par_timer <= it_cond_op((poll_ecc_par_timer =
       bimc_global_config_poll_ecc_par_timer or 
      (bimc_global_config_poll_ecc_par_error = '0')),std_logic_vector'
      ("00000000000000000000000000"),(poll_ecc_par_timer + std_logic_vector'
      ("00000000000000000000000001"))) ;
      mem_wr_init_dly <= bimc_global_config_mem_wr_init ;
      mem_wr_init_ev <= it_cond_op(((mem_wr_init_dly = '0') and 
      (bimc_global_config_mem_wr_init)='1'),std_logic'('1'),it_cond_op((sync_cnt
       = std_logic_vector'("0000001") and tstate = std_logic_vector'("1000")
      ),std_logic'('0'),mem_wr_init_ev)) ;
      r_bimc_eccpar_debug_write_notify_ev <= std_logic_vector'
      (r_bimc_eccpar_debug_write_notify_ev(1 downto 0) &
       bimc_eccpar_debug_write_notify_ev) ;
      eccpar_debug_ev <= it_cond_op(((r_bimc_eccpar_debug_write_notify_ev(2)
      )='1' and (bimc_eccpar_debug_send)='1'),std_logic'('1'),it_cond_op(
      (sync_cnt = std_logic_vector'("0000001") and tstate = std_logic_vector'
      ("0101")),std_logic'('0'),eccpar_debug_ev)) ;
      bimc_eccpar_debug_sent_din <= it_cond_op((sync_cnt = std_logic_vector'
      ("0000001") and tstate = std_logic_vector'("0101")),std_logic'('1'
      ),std_logic'('0')) ;
      bimc_eccpar_debug_send <= it_conv_std_logic(o_bimc_eccpar_debug(22 downto
       22)) ;
      bimc_cmd2_send <= it_conv_std_logic(o_bimc_cmd2(8 downto 8)) ;
      r_bimc_cmd2_write_notify_ev <= std_logic_vector'
      (r_bimc_cmd2_write_notify_ev(1 downto 0) & bimc_cmd2_write_notify_ev) ;
      cpu_transmit_ev <= it_cond_op(((r_bimc_cmd2_write_notify_ev(2))='1' and 
      (bimc_cmd2_send)='1'),std_logic'('1'),it_cond_op((sync_cnt =
       std_logic_vector'("0000001") and tstate = std_logic_vector'("0001")
      ),std_logic'('0'),cpu_transmit_ev)) ;
      bimc_cmd2_sent_din <= it_cond_op((sync_cnt = std_logic_vector'("0000001")
       and tstate = std_logic_vector'("0001")),std_logic'('1'),std_logic'('0'))
       ;
      cputx_op <= it_cond_op(((r_bimc_cmd2_write_notify_ev(2))='1' and 
      (bimc_cmd2_send)='1'),bimc_cmd2_opcode,cputx_op) ;
      cputx_type <= it_cond_op(((r_bimc_cmd2_write_notify_ev(2))='1' and 
      (bimc_cmd2_send)='1'),bimc_cmd1_memtype,cputx_type) ;
      cputx_mem <= it_cond_op(((r_bimc_cmd2_write_notify_ev(2))='1' and 
      (bimc_cmd2_send)='1'),bimc_cmd1_mem,cputx_mem) ;
      cputx_addr <= it_cond_op(((r_bimc_cmd2_write_notify_ev(2))='1' and 
      (bimc_cmd2_send)='1'),bimc_cmd1_addr,cputx_addr) ;
      cputx_dat <= it_cond_op(((r_bimc_cmd2_write_notify_ev(2))='1' and 
      (bimc_cmd2_send)='1'),bimc_cmd0_data,cputx_dat) ;
    end if ;
  end process ;

  process --:o588
  (*)
  begin

    case tstate is
      when  "0000"  =>
        if (((bimc_rst_n)='1' and ext(sync_cnt,32) = std_logic_vector'
        ("00000000000000000000000001001000"))) then
          reg_send <=
           "0000000000000000000000000000000000000000000000000000000000000000000000000"
           ;
          nxt_tstate <= "1011" ;
        else
          reg_send <=
           "0000000000000000000000000000000000000000000000000000000000000000000000000"
           ;
          nxt_tstate <= tstate ;
        end if;
      when  "1011"  =>
        if (sync_cnt = std_logic_vector'("0000001")) then
          reg_send <= r_reg_send ;
          nxt_tstate <= "0011" ;
        else
          reg_send <=
           "0111100000010111111111111000000000000000100000000000000000000000000000001"
           ;
          nxt_tstate <= tstate ;
        end if;
      when  "0011"  =>
        if ((sync_cnt = std_logic_vector'("0000000") and cmd_cnt = '1')) then
          reg_send <= r_reg_send ;
          if ((bimc_rst_n = '0')) then
            nxt_tstate <= "0000" ;
          elsif (cpu_transmit_ev = '1') then
            nxt_tstate <= "0001" ;
          elsif (auto_poll_ecc_par_ev = '1') then
            nxt_tstate <= "0111" ;
          elsif (mem_wr_init_ev = '1') then
            nxt_tstate <= "1000" ;
          elsif (eccpar_debug_ev = '1') then
            nxt_tstate <= "0101" ;
          else
            nxt_tstate <= "0010" ;
          end if;
        else
          reg_send <= r_reg_send ;
          nxt_tstate <= "0010" ;
        end if;
      when  "0001"  =>
        if (sync_cnt = std_logic_vector'("0000001")) then
          reg_send <= r_reg_send ;
          nxt_tstate <= "0011" ;
        else
          reg_send <= cputx_frame ;
          nxt_tstate <= tstate ;
        end if;
      when  "0010"  =>
        if (sync_cnt = std_logic_vector'("0000001")) then
          reg_send <= r_reg_send ;
          nxt_tstate <= "0011" ;
        else
          reg_send <=
           "0000000000000000000000000000000000000000000000000000000000000000000000000"
           ;
          nxt_tstate <= tstate ;
        end if;
      when  "0111"  =>
        if (sync_cnt = std_logic_vector'("0000001")) then
          reg_send <= r_reg_send ;
          nxt_tstate <= "0011" ;
        else
          reg_send <=
           "0111100000011111111111111111111111111111100000000000000000000000000000000"
           ;
          nxt_tstate <= tstate ;
        end if;
      when  "1000"  =>
        if (sync_cnt = std_logic_vector'("0000001")) then
          reg_send <= r_reg_send ;
          nxt_tstate <= "0011" ;
        else
          reg_send <=
           "0111111111111111111111111000000000000100000000000000000000000000000000001"
           ;
          nxt_tstate <= tstate ;
        end if;
      when  "0101"  =>
        if (sync_cnt = std_logic_vector'("0000001")) then
          reg_send <= r_reg_send ;
          nxt_tstate <= "0011" ;
        else
          if (ext(bimc_eccpar_debug_memtype,32) = std_logic_vector'
          ("00000000000000000000000000001111")) then
            reg_send <= std_logic_vector'(std_logic'('0') &
             bimc_eccpar_debug_memtype & std_logic_vector'("00000010") &
             std_logic_vector'("0000000000000000") & bimc_eccpar_debug_memaddr &
             std_logic_vector'(std_logic_vector'("0000") &
             bimc_eccpar_debug_jabber_off(3 downto 0) & std_logic_vector'
            ("00000000000000000000") & bimc_eccpar_debug_eccpar_corrupt(1 downto
             0) & bimc_eccpar_debug_eccpar_disable(1 downto 0))) ;
          else
            reg_send <= std_logic_vector'(std_logic'('0') &
             bimc_eccpar_debug_memtype & std_logic_vector'("00000010") &
             bimc_eccpar_debug_memaddr & std_logic_vector'("0000000000001010") &
             std_logic_vector'(std_logic_vector'("0000") &
             bimc_eccpar_debug_jabber_off(3 downto 0) & std_logic_vector'
            ("00000000000000000000") & bimc_eccpar_debug_eccpar_corrupt(1 downto
             0) & bimc_eccpar_debug_eccpar_disable(1 downto 0))) ;
          end if;
          nxt_tstate <= tstate ;
        end if;
      when others =>
        reg_send <= r_reg_send ;
        nxt_tstate <= tstate ;
    end case;
  end process ;

  process --:o721
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      bimc_cmd2_sent <= '0' ;
      bimc_eccpar_debug_sent <= '0' ;
      bimc_ecc_uncorrectable_error_cnt <= "00000000000000000000000000000000" ;
      bimc_ecc_correctable_error_cnt <= "00000000000000000000000000000000" ;
      bimc_parity_error_cnt <= "00000000000000000000000000000000" ;
    elsif (clk'event and clk = '1') then
      bimc_cmd2_sent <= it_cond_op((o_bimc_cmd2(10 downto 10))/="0",std_logic'
      ('0'),it_cond_op(bimc_cmd2_sent_din = '1',std_logic'('1'
      ),it_conv_std_logic(i_bimc_cmd2(9 downto 9)))) ;
      bimc_eccpar_debug_sent <= it_cond_op(it_conv_std_logic(o_bimc_eccpar_debug
      (28 downto 28)) = '1',std_logic'('0'),it_cond_op
      (bimc_eccpar_debug_sent_din = '1',std_logic'('1'),it_conv_std_logic
      (i_bimc_eccpar_debug(23 downto 23)))) ;
      bimc_ecc_uncorrectable_error_cnt <= it_cond_op((o_bimc_monitor_mask(0)
      )='1',std_logic_vector'("00000000000000000000000000000000"),it_cond_op(
      (debug_write_en)='1',o_bimc_ecc_uncorrectable_error_cnt,it_cond_op
      (i_bimc_ecc_uncorrectable_error_cnt = std_logic_vector'
      ("11111111111111111111111111111111"),std_logic_vector'
      ("11111111111111111111111111111111"),(i_bimc_ecc_uncorrectable_error_cnt +
       std_logic_vector'(std_logic_vector'("0000000000000000000000000000000") &
       bimc_ecc_uncorrectable_error_cnt_uncorrectable_ecc_en))))) ;
      bimc_ecc_correctable_error_cnt <= it_cond_op((o_bimc_monitor_mask(1 downto
       1))/="0",std_logic_vector'("00000000000000000000000000000000"),it_cond_op
      ((debug_write_en)='1',o_bimc_ecc_correctable_error_cnt,it_cond_op
      (i_bimc_ecc_uncorrectable_error_cnt = std_logic_vector'
      ("11111111111111111111111111111111"),std_logic_vector'
      ("11111111111111111111111111111111"),(i_bimc_ecc_correctable_error_cnt +
       std_logic_vector'(std_logic_vector'("0000000000000000000000000000000") &
       bimc_ecc_correctable_error_cnt_correctable_ecc_en))))) ;
      bimc_parity_error_cnt <= it_cond_op((o_bimc_monitor_mask(2 downto 2)
      )/="0",std_logic_vector'("00000000000000000000000000000000"),it_cond_op(
      (debug_write_en)='1',o_bimc_parity_error_cnt,it_cond_op
      (i_bimc_parity_error_cnt = std_logic_vector'
      ("11111111111111111111111111111111"),std_logic_vector'
      ("11111111111111111111111111111111"),(i_bimc_parity_error_cnt +
       std_logic_vector'(std_logic_vector'("0000000000000000000000000000000") &
       bimc_parity_error_cnt_parity_errors_en))))) ;
    end if ;
  end process ;
end module;
