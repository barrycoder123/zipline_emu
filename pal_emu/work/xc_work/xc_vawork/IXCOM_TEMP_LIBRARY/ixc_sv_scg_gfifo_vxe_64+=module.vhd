architecture module of IXC_SV_SCG_GFIFO_VXE_64 is
  type DUMMY3 is array(integer range <>) of std_logic_vector(63 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component Q_RDN
    port(Z : out std_logic) ;
  end component ;
  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic_vector(63 downto 0) ;
  signal GFreq : std_logic ;
  -- quickturn external_ref GFreq
  signal GFcbid : std_logic_vector(19 downto 0) ;
  -- quickturn external_ref GFcbid
  signal GFlen : std_logic_vector(11 downto 0) ;
  -- quickturn external_ref GFlen
  signal GFidata : std_logic_vector(511 downto 0) ;
  -- quickturn external_ref GFidata
  signal GFtsReq : std_logic ;
  -- quickturn external_ref GFtsReq
  signal DUMMY2 : std_logic ;
  signal timeStampPkt : std_logic_vector(63 downto 0) ;
  signal GFtsAdd : std_logic ;
  attribute _2_state_ of GFtsAdd: signal is 1 ;
  signal argLen : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of argLen: signal is 1 ;
  signal ixc_gfm_ofifo : DUMMY3(0 to 131071) ;
  attribute _2_state_ of ixc_gfm_ofifo: signal is 1 ;
  signal xdata : std_logic_vector(543 downto 0) ;
  attribute _2_state_ of xdata: signal is 1 ;
  signal wrtCnt : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of wrtCnt: signal is 1 ;
  signal wrtCntD : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of wrtCntD: signal is 1 ;
  signal ixc_gfm_ctl : DUMMY3(0 downto 0) ;
  attribute _2_state_ of ixc_gfm_ctl: signal is 1 ;
  signal ofifoAddr0 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr0: signal is 1 ;
  signal ofifoAddr0N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr0N: signal is 1 ;
  signal ofifoAddr1 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr1: signal is 1 ;
  signal ofifoAddr2 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr2: signal is 1 ;
  signal ofifoAddr3 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr3: signal is 1 ;
  signal ofifoAddr4 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr4: signal is 1 ;
  signal ofifoAddr5 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr5: signal is 1 ;
  signal ofifoAddr6 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr6: signal is 1 ;
  signal ofifoAddr7 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr7: signal is 1 ;
  signal ofifoAddr8 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr8: signal is 1 ;
  signal ofifoAddr1N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr1N: signal is 1 ;
  signal ofifoAddr2N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr2N: signal is 1 ;
  signal ofifoAddr3N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr3N: signal is 1 ;
  signal ofifoAddr4N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr4N: signal is 1 ;
  signal ofifoAddr5N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr5N: signal is 1 ;
  signal ofifoAddr6N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr6N: signal is 1 ;
  signal ofifoAddr7N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr7N: signal is 1 ;
  signal ofifoAddr8N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr8N: signal is 1 ;
  signal ofifoData : std_logic_vector(575 downto 0) ;
  attribute _2_state_ of ofifoData: signal is 1 ;
  signal ofifoDataN : std_logic_vector(575 downto 0) ;
  attribute _2_state_ of ofifoDataN: signal is 1 ;
  signal writeLen : std_logic_vector(5 downto 0) ;
  attribute _2_state_ of writeLen: signal is 1 ;
  signal reqD : std_logic ;
  attribute _2_state_ of reqD: signal is 1 ;
  signal oFill : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of oFill: signal is 1 ;
  signal oFillN : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of oFillN: signal is 1 ;
  signal ofifoWptr : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoWptr: signal is 1 ;
  signal ofifoWptrN : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoWptrN: signal is 1 ;
  signal index : std_logic_vector(9 downto 0) ;
  attribute _2_state_ of index: signal is 1 ;
  -- quickturn keep_net GFtsReq
  -- quickturn fast_clock fclk
  -- quickturn use_hardmacro_pack ixc_gfm_ofifo
  -- quickturn use_hardmacro_pack ixc_gfm_ctl

begin
  Generate1 : for GenerateIndex in 19 downto 0 generate
    _UnNamed_Inst_39 : Q_RDN port map (GFcbid(GenerateIndex)) ;
  end generate;
  Generate2 : for GenerateIndex in 11 downto 0 generate
    _UnNamed_Inst_40 : Q_RDN port map (GFlen(GenerateIndex)) ;
  end generate;
  Generate3 : for GenerateIndex in 511 downto 0 generate
    _UnNamed_Inst_41 : Q_RDN port map (GFidata(GenerateIndex)) ;
  end generate;
  _UnNamed_Inst_4 : Q_RDN port map (GFtsReq) ;
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       scgGFreq
      ,GFreq
    ) ;
  timeStampPkt <= std_logic_vector'(DUMMY1(55 downto 24) & std_logic'('1') &
   xor_reduce(DUMMY1(55 downto 48)) & xor_reduce(DUMMY1(47 downto 40)) &
   xor_reduce(DUMMY1(39 downto 32)) & xor_reduce(DUMMY1(31 downto 24)) &
   xor_reduce(DUMMY1(23 downto 16)) & xor_reduce(DUMMY1(15 downto 8)) &
   xor_reduce(DUMMY1(7 downto 0)) & DUMMY1(23 downto 0)) ;
  GFidata(31 downto 0) <= "00000000000000000000000000000000" when (GFtsAdd)='1'
   else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" ;
  GFcbid <= "11111111111111111110" when (GFtsAdd)='1' else std_logic_vector'
  ("ZZZZZZZZZZZZZZZZZZZZ") ;
  GFlen <= "000000000001" when (GFtsAdd)='1' else std_logic_vector'
  ("ZZZZZZZZZZZZ") ;

  process --:o62
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      wrtCntD <= wrtCnt ;
    end if ;
  end process ;

  process --:o65
  (*)
  begin
    ixc_gfm_ctl(0) <= wrtCntD ;
  end process ;

  process --:o68
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY0 = '1') then
        reqD <= '0' ;
      else
        reqD <= GFreq ;
      end if;
    end if ;
  end process ;

  process --:o80
  (fclk)
    variable argLen_DUMMY0 : std_logic_vector(11 downto 0) ;
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY0 = '1') then
        wrtCnt <= std_logic_vector'
        ("0000000000000000000000000000000000000000000000000000000000000000") ;
        xdata <= it_multiple_concat(std_logic'('0'),544) ;
        writeLen <= std_logic_vector'("000000") ;
      else
        if (((((reqD)='1' or (GFtsAdd)='1') and (DUMMY2 = '0')) and GFcbid /=
         std_logic_vector'("11111111111111111101"))) then
          if (GFcbid /= std_logic_vector'("11111111111111111111")) then
            xdata <= it_cond_op(GFcbid = std_logic_vector'
            ("11111111111111111110"),ext(timeStampPkt,544),std_logic_vector'
            (GFidata & GFlen & GFcbid)) ;
            argLen_DUMMY0 := GFlen ;
            writeLen <= ext((it_cond_op(ext(GFlen,32) > std_logic_vector'
            ("00000000000000000000000000010000"),std_logic_vector'
            ("00000000000000000000000000010000"),ext(GFlen,32)) +
             std_logic_vector'("00000000000000000000000000000001")),6) ;
          else
            xdata <= std_logic_vector'(std_logic_vector'
            ("00000000000000000000000000000000") & GFidata) ;
            writeLen <= ext(it_cond_op(ext(GFlen,32) > std_logic_vector'
            ("00000000000000000000000000010000"),std_logic_vector'
            ("00000000000000000000000000010000"),ext(GFlen,32)),6) ;
          end if;
          if (ext(GFlen,32) <= std_logic_vector'
          ("00000000000000000000000000010000")) then
            wrtCnt <= ((wrtCnt + ext(argLen_DUMMY0,64)) + std_logic_vector'
            ("0000000000000000000000000000000000000000000000000000000000000001")
            ) ;
          end if;
        else
          xdata <= it_multiple_concat(std_logic'('0'),544) ;
          writeLen <= std_logic_vector'("000000") ;
        end if;
      end if;
    end if ;
    argLen <= transport argLen_DUMMY0;
  end process ;

  process --:o116
  (*)
    variable index_DUMMY1 : std_logic_vector(9 downto 0) ;
    variable oFillN_DUMMY2 : std_logic_vector(4 downto 0) ;
  begin
    index_DUMMY1 := index;
    oFillN_DUMMY2 := oFillN;
    ofifoAddr0N <= ofifoWptr ;
    ofifoAddr1N <= ext((ext(ofifoWptr,32) + std_logic_vector'
    ("00000000000000000000000000000001")),17) ;
    ofifoAddr2N <= ext((ext(ofifoWptr,32) + std_logic_vector'
    ("00000000000000000000000000000010")),17) ;
    ofifoAddr3N <= ext((ext(ofifoWptr,32) + std_logic_vector'
    ("00000000000000000000000000000011")),17) ;
    ofifoAddr4N <= ext((ext(ofifoWptr,32) + std_logic_vector'
    ("00000000000000000000000000000100")),17) ;
    ofifoAddr5N <= ext((ext(ofifoWptr,32) + std_logic_vector'
    ("00000000000000000000000000000101")),17) ;
    ofifoAddr6N <= ext((ext(ofifoWptr,32) + std_logic_vector'
    ("00000000000000000000000000000110")),17) ;
    ofifoAddr7N <= ext((ext(ofifoWptr,32) + std_logic_vector'
    ("00000000000000000000000000000111")),17) ;
    ofifoAddr8N <= ext((ext(ofifoWptr,32) + std_logic_vector'
    ("00000000000000000000000000001000")),17) ;
    if (DUMMY0 = '1') then
      index_DUMMY1 := std_logic_vector'("0000000000") ;
      ofifoDataN <= it_multiple_concat(std_logic'('0'),576) ;
    elsif (oFill(0) = '1') then
      index_DUMMY1 := shl(ext(std_logic_vector'(oFill(4 downto 1) & std_logic'
      ('0')),10),integer_to_std(5,32)) ;
      ofifoDataN <= (shl(ext(xdata,576),integer_to_std(32,32)) or ext(ofifoData
      (conv_integer(index_DUMMY1)+(32-1) downto conv_integer(index_DUMMY1)),576)
      ) ;
    else
      index_DUMMY1 := std_logic_vector'("0000000000") ;
      ofifoDataN <= std_logic_vector'(std_logic_vector'
      ("00000000000000000000000000000000") & xdata) ;
    end if;
    oFillN_DUMMY2 := ext((ext(oFill(0),6) + writeLen),5) ;
    ofifoWptrN <= (ofifoWptr + ext(oFillN_DUMMY2(4 downto 1),17)) ;
    index <= transport index_DUMMY1;
    oFillN <= oFillN_DUMMY2;
  end process ;

  process --:o147
  (*)
  begin
    ixc_gfm_ofifo(conv_integer(ofifoAddr0N)) <= ofifoDataN(0+(64-1) downto 0) ;
    ixc_gfm_ofifo(conv_integer(ofifoAddr1N)) <= ofifoDataN(64+(64-1) downto 64)
     ;
    ixc_gfm_ofifo(conv_integer(ofifoAddr2N)) <= ofifoDataN(128+(64-1) downto 128
    ) ;
    ixc_gfm_ofifo(conv_integer(ofifoAddr3N)) <= ofifoDataN(192+(64-1) downto 192
    ) ;
    ixc_gfm_ofifo(conv_integer(ofifoAddr4N)) <= ofifoDataN(256+(64-1) downto 256
    ) ;
    ixc_gfm_ofifo(conv_integer(ofifoAddr5N)) <= ofifoDataN(320+(64-1) downto 320
    ) ;
    ixc_gfm_ofifo(conv_integer(ofifoAddr6N)) <= ofifoDataN(384+(64-1) downto 384
    ) ;
    ixc_gfm_ofifo(conv_integer(ofifoAddr7N)) <= ofifoDataN(448+(64-1) downto 448
    ) ;
    ixc_gfm_ofifo(conv_integer(ofifoAddr8N)) <= ofifoDataN(512+(64-1) downto 512
    ) ;
  end process ;

  process --:o160
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY0 = '1') then
        ofifoWptr <= std_logic_vector'("00000000000000000") ;
        ofifoAddr0 <= std_logic_vector'("00000000000000000") ;
        ofifoAddr1 <= std_logic_vector'("00000000000000001") ;
        ofifoAddr2 <= std_logic_vector'("00000000000000010") ;
        ofifoAddr3 <= std_logic_vector'("00000000000000011") ;
        ofifoAddr4 <= std_logic_vector'("00000000000000100") ;
        ofifoAddr5 <= std_logic_vector'("00000000000000101") ;
        ofifoAddr6 <= std_logic_vector'("00000000000000110") ;
        ofifoAddr7 <= std_logic_vector'("00000000000000111") ;
        ofifoAddr8 <= std_logic_vector'("00000000000001000") ;
        ofifoData <= it_multiple_concat(std_logic'('0'),576) ;
        oFill <= std_logic_vector'("00000") ;
      else
        ofifoWptr <= ofifoWptrN ;
        ofifoAddr0 <= ofifoAddr0N ;
        ofifoAddr1 <= ofifoAddr1N ;
        ofifoAddr2 <= ofifoAddr2N ;
        ofifoAddr3 <= ofifoAddr2N ;
        ofifoAddr4 <= ofifoAddr4N ;
        ofifoAddr5 <= ofifoAddr5N ;
        ofifoAddr6 <= ofifoAddr6N ;
        ofifoAddr7 <= ofifoAddr7N ;
        ofifoAddr8 <= ofifoAddr8N ;
        ofifoData <= ofifoDataN ;
        oFill <= oFillN ;
      end if;
    end if ;
  end process ;

  process --:o194
  (*)
  begin
    if (((GFreq)='1' and (not(reqD))='1')) then
      GFtsAdd <= GFtsReq ;
    else
      GFtsAdd <= '0' ;
    end if;
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
