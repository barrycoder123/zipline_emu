library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity AesSecIStub is
  port (
    AesCiphOutR : out std_logic_vector(127 downto 0) ;
    AesCiphOutVldR : out std_logic ;
    KeyInitStall : out std_logic ;
    CiphInStall : out std_logic ;
    Aes128 : in std_logic ;
    Aes192 : in std_logic ;
    Aes256 : in std_logic ;
    CiphIn : in std_logic_vector(127 downto 0) ;
    CiphInVldR : in std_logic ;
    CiphInLastR : in std_logic ;
    EncryptEn : in std_logic ;
    KeyIn : in std_logic_vector(255 downto 0) ;
    KeyInitVldR : in std_logic ;
    AesCiphOutStall : in std_logic ;
    clk : in std_logic ;
  rst_n : in std_logic ) ;
  attribute _2_state_: integer;
end AesSecIStub ;
