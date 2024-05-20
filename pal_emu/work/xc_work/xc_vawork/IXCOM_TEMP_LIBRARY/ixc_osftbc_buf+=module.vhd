architecture module of ixc_osfTbc_buf is
  component buf
    port(Z : out std_logic ; A : in std_logic) ;
  end component ;

begin
  _UnNamed_Inst_27 : buf port map (osfTbcO,osfTbcI) ;
end module;
