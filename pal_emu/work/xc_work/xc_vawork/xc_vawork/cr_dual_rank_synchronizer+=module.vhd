architecture module of cr_dual_rank_synchronizer is
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;


begin
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       dout
      ,rst_n
    ) ;
end module;
