architecture module of axi_channel_reg_slice is
  type DUMMY0 is array(integer range <>) of std_logic_vector(81 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[0]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[0].genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[1]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[1].genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[2]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[2].genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[3]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[3].genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[4]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[4].genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[5]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[5].genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[6]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[6].genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[7]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[7].genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[8]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[8].genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[9]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[9].genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[10]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[10].genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 full  "
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 genblk1 0 10 "
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_2 "1 genblk1  "
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;


begin
  Generate1 : if full : (TRUE) generate
    signal r_wptr : std_logic ;
    signal c_wptr : std_logic ;
    signal r_rptr : std_logic_vector(10 downto 0) ;
    signal c_rptr : std_logic_vector(10 downto 0) ;
    signal r_full : std_logic ;
    signal c_full : std_logic ;
    signal r_empty : std_logic ;
    signal c_empty : std_logic ;
    signal r_enable : std_logic ;
    signal r_payload : DUMMY0(1 downto 0) ;
  begin
    ready_src <= boolean_to_std(((r_enable)='1' and (r_full = '0'))) ;
    valid_dst <= not(r_empty) ;
    Generate2 : if genblk1_0_ : (TRUE) generate
      constant i : integer := 0 ;
    begin
      Generate3 : if genblk1 : (TRUE) generate
        signal DUMMY1 : std_logic_vector(7 downto 0) ;
      begin
        _zz_strnp_0 : ixc_assign
          generic map(W => 8)
          port map (
             payload_dst(0+(8-1) downto 0)
            ,DUMMY1
          ) ;
        DUMMY1 <= r_payload(conv_integer(ext(r_rptr(0),1)))(0+(8-1) downto 0) ;
      end generate ;
    end generate ;
    Generate4 : if genblk1_1_ : (TRUE) generate
      constant i : integer := 1 ;
    begin
      Generate5 : if genblk1 : (TRUE) generate
        signal DUMMY2 : std_logic_vector(7 downto 0) ;
      begin
        _zz_strnp_1 : ixc_assign
          generic map(W => 8)
          port map (
             payload_dst(8+(8-1) downto 8)
            ,DUMMY2
          ) ;
        DUMMY2 <= r_payload(conv_integer(ext(r_rptr(1),1)))(8+(8-1) downto 8) ;
      end generate ;
    end generate ;
    Generate6 : if genblk1_2_ : (TRUE) generate
      constant i : integer := 2 ;
    begin
      Generate7 : if genblk1 : (TRUE) generate
        signal DUMMY3 : std_logic_vector(7 downto 0) ;
      begin
        _zz_strnp_2 : ixc_assign
          generic map(W => 8)
          port map (
             payload_dst(16+(8-1) downto 16)
            ,DUMMY3
          ) ;
        DUMMY3 <= r_payload(conv_integer(ext(r_rptr(2),1)))(16+(8-1) downto 16)
         ;
      end generate ;
    end generate ;
    Generate8 : if genblk1_3_ : (TRUE) generate
      constant i : integer := 3 ;
    begin
      Generate9 : if genblk1 : (TRUE) generate
        signal DUMMY4 : std_logic_vector(7 downto 0) ;
      begin
        _zz_strnp_3 : ixc_assign
          generic map(W => 8)
          port map (
             payload_dst(24+(8-1) downto 24)
            ,DUMMY4
          ) ;
        DUMMY4 <= r_payload(conv_integer(ext(r_rptr(3),1)))(24+(8-1) downto 24)
         ;
      end generate ;
    end generate ;
    Generate10 : if genblk1_4_ : (TRUE) generate
      constant i : integer := 4 ;
    begin
      Generate11 : if genblk1 : (TRUE) generate
        signal DUMMY5 : std_logic_vector(7 downto 0) ;
      begin
        _zz_strnp_4 : ixc_assign
          generic map(W => 8)
          port map (
             payload_dst(32+(8-1) downto 32)
            ,DUMMY5
          ) ;
        DUMMY5 <= r_payload(conv_integer(ext(r_rptr(4),1)))(32+(8-1) downto 32)
         ;
      end generate ;
    end generate ;
    Generate12 : if genblk1_5_ : (TRUE) generate
      constant i : integer := 5 ;
    begin
      Generate13 : if genblk1 : (TRUE) generate
        signal DUMMY6 : std_logic_vector(7 downto 0) ;
      begin
        _zz_strnp_5 : ixc_assign
          generic map(W => 8)
          port map (
             payload_dst(40+(8-1) downto 40)
            ,DUMMY6
          ) ;
        DUMMY6 <= r_payload(conv_integer(ext(r_rptr(5),1)))(40+(8-1) downto 40)
         ;
      end generate ;
    end generate ;
    Generate14 : if genblk1_6_ : (TRUE) generate
      constant i : integer := 6 ;
    begin
      Generate15 : if genblk1 : (TRUE) generate
        signal DUMMY7 : std_logic_vector(7 downto 0) ;
      begin
        _zz_strnp_6 : ixc_assign
          generic map(W => 8)
          port map (
             payload_dst(48+(8-1) downto 48)
            ,DUMMY7
          ) ;
        DUMMY7 <= r_payload(conv_integer(ext(r_rptr(6),1)))(48+(8-1) downto 48)
         ;
      end generate ;
    end generate ;
    Generate16 : if genblk1_7_ : (TRUE) generate
      constant i : integer := 7 ;
    begin
      Generate17 : if genblk1 : (TRUE) generate
        signal DUMMY8 : std_logic_vector(7 downto 0) ;
      begin
        _zz_strnp_7 : ixc_assign
          generic map(W => 8)
          port map (
             payload_dst(56+(8-1) downto 56)
            ,DUMMY8
          ) ;
        DUMMY8 <= r_payload(conv_integer(ext(r_rptr(7),1)))(56+(8-1) downto 56)
         ;
      end generate ;
    end generate ;
    Generate18 : if genblk1_8_ : (TRUE) generate
      constant i : integer := 8 ;
    begin
      Generate19 : if genblk1 : (TRUE) generate
        signal DUMMY9 : std_logic_vector(7 downto 0) ;
      begin
        _zz_strnp_8 : ixc_assign
          generic map(W => 8)
          port map (
             payload_dst(64+(8-1) downto 64)
            ,DUMMY9
          ) ;
        DUMMY9 <= r_payload(conv_integer(ext(r_rptr(8),1)))(64+(8-1) downto 64)
         ;
      end generate ;
    end generate ;
    Generate20 : if genblk1_9_ : (TRUE) generate
      constant i : integer := 9 ;
    begin
      Generate21 : if genblk1 : (TRUE) generate
        signal DUMMY10 : std_logic_vector(7 downto 0) ;
      begin
        _zz_strnp_9 : ixc_assign
          generic map(W => 8)
          port map (
             payload_dst(72+(8-1) downto 72)
            ,DUMMY10
          ) ;
        DUMMY10 <= r_payload(conv_integer(ext(r_rptr(9),1)))(72+(8-1) downto 72)
         ;
      end generate ;
    end generate ;
    Generate22 : if genblk1_10_ : (TRUE) generate
      constant i : integer := 10 ;
    begin
      Generate23 : if genblk1 : (TRUE) generate
        signal DUMMY11 : std_logic_vector(1 downto 0) ;
      begin
        _zz_strnp_10 : ixc_assign
          generic map(W => 2)
          port map (
             payload_dst(80+(2-1) downto 80)
            ,DUMMY11
          ) ;
        DUMMY11 <= r_payload(conv_integer(ext(r_rptr(10),1)))(80+(2-1) downto 80
        ) ;
      end generate ;
    end generate ;

    process --:o144
    (**) -- always_comb
      variable c_empty_DUMMY0 : std_logic ;
    begin
      c_empty_DUMMY0 := c_empty;
      c_full <= r_full ;
      c_empty_DUMMY0 := r_empty ;
      c_rptr <= r_rptr ;
      c_wptr <= r_wptr ;
      if (((valid_dst)='1' and (ready_dst)='1')) then
        if ((r_full = '0')) then
          c_empty_DUMMY0 := '1' ;
        else
          c_rptr <= not(r_rptr) ;
        end if;
        c_full <= '0' ;
      end if;
      if (((valid_src)='1' and (ready_src)='1')) then
        if ((c_empty_DUMMY0 = '0')) then
          c_full <= '1' ;
        else
          c_rptr <= not(r_rptr) ;
        end if;
        c_empty_DUMMY0 := '0' ;
        c_wptr <= not(r_wptr) ;
      end if;
      c_empty <= transport c_empty_DUMMY0;
    end process ;

    process --:o168
    (aclk,aresetn)
    begin
      if (aresetn = '0') then
        r_empty <= '1' ;
        r_rptr <= "11111111111" ;
        r_enable <= '0' ;
        r_full <= '0' ;
        r_wptr <= '0' ;
      elsif (aclk'event and aclk = '1') then
        r_enable <= '1' ;
        r_full <= c_full ;
        r_empty <= c_empty ;
        r_rptr <= c_rptr ;
        r_wptr <= c_wptr ;
      end if ;
    end process ;

    process --:o188
    (aclk)
    begin
      if (aclk'event and aclk = '1') then
        if (((valid_src)='1' and (ready_src)='1')) then
          r_payload(conv_integer(ext(r_wptr,1))) <= payload_src ;
        end if;
      end if ;
    end process ;
  end generate ;
end module;
