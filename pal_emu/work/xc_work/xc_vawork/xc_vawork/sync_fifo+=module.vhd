architecture module of sync_fifo is
  type DUMMY0 is array(integer range <>) of std_logic_vector(95 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "GEN_NO_RD_REG_MODE"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 genblk1  "
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_1 "-1 GEN_NO_RD_REG_MODE  "
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  signal wr_ptr_nxt : std_logic_vector(3 downto 0) ;
  signal rd_ptr_nxt : std_logic_vector(3 downto 0) ;
  signal full_i : std_logic ;
  signal empty_i : std_logic ;
  signal default_data : std_logic_vector(95 downto 0) ;
  signal wr_ptr_r : std_logic_vector(3 downto 0) ;
  signal rd_ptr_r : std_logic_vector(3 downto 0) ;
  signal i : integer ;
  signal mem_nxt : DUMMY0(7 downto 0) ;
  signal mem_r : DUMMY0(7 downto 0) ;
  signal dout_i : std_logic_vector(95 downto 0) ;
  signal dout_r : std_logic_vector(95 downto 0) ;
  signal hit_flag : std_logic ;

  function func_check_next_ptr_eq_depth (cur_ptr : in std_logic_vector(2 downto
   0)) return std_logic is
    variable func_check_next_ptr_eq_depth_DUMMY0 : std_logic ;
    variable cur_ptr_nxt : std_logic_vector(3 downto 0) ;
  begin
    cur_ptr_nxt := ext((ext(std_logic_vector'(std_logic'('0') & cur_ptr),32) +
     std_logic_vector'("00000000000000000000000000000001")),4) ;
    if (cur_ptr_nxt = std_logic_vector'("1000")) then
      func_check_next_ptr_eq_depth_DUMMY0 := '1' ;
    else
      func_check_next_ptr_eq_depth_DUMMY0 := '0' ;
    end if;
    return func_check_next_ptr_eq_depth_DUMMY0;
  end func_check_next_ptr_eq_depth;
  signal DUMMY1 : std_logic_vector(3 downto 0) ;

begin
  wr_ptr_nxt <= wr_ptr_r when not(((wr_en)='1' and ((not(full_i))='1' or (rd_en
  )='1'))) else std_logic_vector'(not(wr_ptr_r(3)) & std_logic_vector'("000"))
   when (func_check_next_ptr_eq_depth(wr_ptr_r(2 downto 0)))='1' else (wr_ptr_r
   + std_logic_vector'("0001")) ;
  rd_ptr_nxt <= rd_ptr_r when not(((rd_en)='1' and (not(empty_i))='1')) else
   std_logic_vector'(not(rd_ptr_r(3)) & std_logic_vector'("000")) when 
  (func_check_next_ptr_eq_depth(rd_ptr_r(2 downto 0)))='1' else (rd_ptr_r +
   std_logic_vector'("0001")) ;
  full_i <= (boolean_to_std(rd_ptr_r(2 downto 0) = wr_ptr_r(2 downto 0)) and
   boolean_to_std(rd_ptr_r(3) /= wr_ptr_r(3))) ;
  empty_i <= boolean_to_std(rd_ptr_r = wr_ptr_r) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 1)
    port map (
       full
      ,full_i
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 1)
    port map (
       empty
      ,empty_i
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 96)
    port map (
       dout
      ,dout_r
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 4)
    port map (
       space_avail
      ,DUMMY1
    ) ;
  DUMMY1 <= ext(it_cond_op(wr_ptr_r(3) = rd_ptr_r(3),(std_logic_vector'
  ("00000000000000000000000000001000") - (ext(wr_ptr_r(2 downto 0),32) - ext
  (rd_ptr_r(2 downto 0),32))),(ext(rd_ptr_r(2 downto 0),32) - ext(wr_ptr_r(2
   downto 0),32))),4) ;

  process --:o57
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      wr_ptr_r <= "0000" ;
      rd_ptr_r <= "0000" ;
    elsif (clk'event and clk = '1') then
      wr_ptr_r <= wr_ptr_nxt ;
      rd_ptr_r <= rd_ptr_nxt ;
    end if ;
  end process ;

  process --:o69
  (*)
  begin
    for i in 0 to 7 loop --:o72
      if ((((wr_en)='1' and ((not(full_i))='1' or (rd_en)='1')) and ext(wr_ptr_r
      (2 downto 0),32) = integer_to_std(i,32))) then
        mem_nxt(i) <= din ;
      else
        mem_nxt(i) <= mem_r(i) ;
      end if;
    end loop;
  end process ;

  process --:o80
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      for i in 0 to 7 loop --:o84
        mem_r(i) <=
         "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
         ;
      end loop;
    elsif (clk'event and clk = '1') then
      for i in 0 to 7 loop --:o91
        mem_r(i) <= mem_nxt(i) ;
      end loop;
    end if ;
  end process ;

  process --:o96
  (*)
    variable hit_flag_DUMMY1 : std_logic ;
  begin
    hit_flag_DUMMY1 := hit_flag;
    hit_flag_DUMMY1 := '0' ;
    dout_i <= default_data ;
    for i in 0 to 7 loop --:o101
      if ((ext(rd_ptr_r(2 downto 0),32) = integer_to_std(i,32) and
       hit_flag_DUMMY1 = '0')) then
        dout_i <= mem_r(i) ;
        hit_flag_DUMMY1 := '1' ;
      end if;
    end loop;
    hit_flag <= transport hit_flag_DUMMY1;
  end process ;
  Generate1 : if genblk1 : (TRUE) generate
  begin
    _zz_strnp_0 : ixc_assign
      generic map(W => 96)
      port map (
         default_data
        ,mem_r(0)
      ) ;
  end generate ;
  Generate2 : if GEN_NO_RD_REG_MODE : (TRUE) generate
  begin

    process --:o118
    (*)
    begin
      dout_r <= dout_i ;
    end process ;
  end generate ;
end module;
