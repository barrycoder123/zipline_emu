architecture module of cr_crc is
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  signal DUMMY0 : std_logic_vector(0 to 31) ;
  signal crc_r : std_logic_vector(31 downto 0) ;
  signal data_vbits : std_logic_vector(7 downto 0) ;

  function mycrc (data : in std_logic_vector(63 downto 0); crc : in
   std_logic_vector(31 downto 0); bits : in std_logic_vector(6 downto 0)) return
   std_logic_vector(31 downto 0) is
    variable mycrc_DUMMY0 : std_logic_vector(31 downto 0) ;
    variable data_DUMMY1 : std_logic_vector(63 downto 0) ;
    variable shifted_poly : std_logic_vector(31 downto 0) ;
    variable ii : integer ;
  begin
    data_DUMMY1 := data ;
    shifted_poly := "10000010111101100011101101111000" ;
    data_DUMMY1 := (data_DUMMY1 xor ext(crc,64)) ;
    data_DUMMY1 := (ext(shr(it_multiple_concat(data_DUMMY1,2),bits),64) and not
    (shr(std_logic_vector'
    ("1111111111111111111111111111111111111111111111111111111111111111"),bits)))
     ;
    mycrc_DUMMY0 := (ext(shr(it_multiple_concat(crc,2),bits),32) and shr
    (std_logic_vector'("11111111111111111111111111111111"),bits)) ;
    for ii in 63 downto 0 loop --:o37
      mycrc_DUMMY0 := (mycrc_DUMMY0 xor (it_multiple_concat(data_DUMMY1(ii),32)
       and shifted_poly)) ;
      shifted_poly := (shr(shifted_poly,integer_to_std(1,32)) xor 
      (it_multiple_concat(shifted_poly(0),32) and std_logic_vector'
      ("10000010111101100011101101111000"))) ;
    end loop;
    return mycrc_DUMMY0 ;
  end mycrc;

begin
  _zz_strnp_0 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY0
      ,crc
    ) ;

  process --:o48
  (**) -- always_comb
  begin
    if (enable = '1') then
      crc <= not(crc_r) ;
    else
      crc <= "00000000000000000000000000000000" ;
    end if;
  end process ;

  process --:o59
  (**) -- always_comb
  begin

    case data_vbytes is
      when  "00000001"  =>
        data_vbits <= "00001000" ;
      when  "00000011"  =>
        data_vbits <= "00010000" ;
      when  "00000111"  =>
        data_vbits <= "00011000" ;
      when  "00001111"  =>
        data_vbits <= "00100000" ;
      when  "00011111"  =>
        data_vbits <= "00101000" ;
      when  "00111111"  =>
        data_vbits <= "00110000" ;
      when  "01111111"  =>
        data_vbits <= "00111000" ;
      when  "11111111"  =>
        data_vbits <= "01000000" ;
      when others =>
        data_vbits <= "00000000" ;
    end case;
  end process ;

  process --:o82
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      crc_r <= "00000000000000000000000000000000" ;
    elsif (clk'event and clk = '1') then
      if (init = '1') then
        crc_r <= init_value ;
      elsif (data_valid = '1') then
        crc_r <= mycrc(data_in,crc_r,ext(data_vbits,7)) ;
      end if;
    end if ;
  end process ;
end module;
