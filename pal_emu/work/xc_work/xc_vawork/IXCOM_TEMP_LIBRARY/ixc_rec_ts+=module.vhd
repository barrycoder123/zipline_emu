architecture module of ixc_rec_ts is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal recTsP : std_logic ;
  attribute _2_state_ of recTsP: signal is 1 ;
  signal fCyc : std_logic_vector(39 downto 0) ;
  attribute _2_state_ of fCyc: signal is 1 ;
  signal fCycP : std_logic_vector(39 downto 0) ;
  attribute _2_state_ of fCycP: signal is 1 ;
  -- quickturn fast_clock fclk

begin

  process --:o2223
  (*)
    variable fCyc_DUMMY0 : std_logic_vector(39 downto 0) ;
    variable recAck_DUMMY1 : std_logic ;
  begin
    fCyc_DUMMY0 := fCyc;
    recAck_DUMMY1 := recAck;
    fCyc_DUMMY0 := it_cond_op((DUMMY0)='1',(fCycP +
     "0000000000000000000000000000000000000001"),fCycP) ;
    recAck_DUMMY1 := boolean_to_std(recTs /= recTsP) ;
    if (recAck_DUMMY1 = '1') then
      ecmTs <= fCyc_DUMMY0 ;
      tbSync <= not(DUMMY1) ;
    end if;
    fCyc <= transport fCyc_DUMMY0;
    recAck <= recAck_DUMMY1;
  end process ;

  process --:o2232
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      fCycP <= fCyc ;
      recTsP <= recTs ;
    end if ;
  end process ;
end module;
