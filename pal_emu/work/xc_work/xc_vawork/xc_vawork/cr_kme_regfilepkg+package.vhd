library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
package cr_kme_regfilePKG is
  attribute _2_state_: integer;
  subtype pkt_hdr_e is std_logic_vector(1 downto 0) ;
  constant ENET : pkt_hdr_e := std_logic_vector'("00") ;
  constant IPV4 : pkt_hdr_e := std_logic_vector'("01") ;
  constant IPV6 : pkt_hdr_e := std_logic_vector'("10") ;
  constant MPLS : pkt_hdr_e := std_logic_vector'("11") ;
  -- next() function DUMMY0 for enum type pkt_hdr_e
  function DUMMY0 (__v : pkt_hdr_e ; __n : integer) return pkt_hdr_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when ENET => posn := 0 ;
    when IPV4 => posn := 1 ;
    when IPV6 => posn := 2 ;
    when MPLS => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- prev() function DUMMY1 for enum type pkt_hdr_e
  function DUMMY1 (__v : pkt_hdr_e ; __n : integer) return pkt_hdr_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when ENET => posn := 0 ;
    when IPV4 => posn := 1 ;
    when IPV6 => posn := 2 ;
    when MPLS => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- name() function DUMMY2 for enum type pkt_hdr_e
  function DUMMY2 (__v : pkt_hdr_e) return std_logic_vector is
  begin
  case __v is
    when ENET => return ext(X"454E4554", 32) ;
    when IPV4 => return ext(X"49505634", 32) ;
    when IPV6 => return ext(X"49505636", 32) ;
    when MPLS => return ext(X"4D504C53", 32) ;
    when others => return ext(X"00", 32) ;
  end case ;
  end ;
  subtype cmd_compound_cmd_frm_size_e is std_logic_vector(3 downto 0) ;
  constant CMD_SIMPLE : cmd_compound_cmd_frm_size_e := std_logic_vector'("0000")
   ;
  constant COMPND_4K : cmd_compound_cmd_frm_size_e := std_logic_vector'("0101")
   ;
  constant COMPND_8K : cmd_compound_cmd_frm_size_e := std_logic_vector'("0110")
   ;
  constant COMPND_RSV : cmd_compound_cmd_frm_size_e := std_logic_vector'("1111")
   ;
  -- next() function DUMMY3 for enum type cmd_compound_cmd_frm_size_e
  function DUMMY3 (__v : cmd_compound_cmd_frm_size_e ; __n : integer) return
   cmd_compound_cmd_frm_size_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when CMD_SIMPLE => posn := 0 ;
    when COMPND_4K => posn := 1 ;
    when COMPND_8K => posn := 2 ;
    when COMPND_RSV => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  case __m is
    when 0 => return CMD_SIMPLE ;
    when 1 => return COMPND_4K ;
    when 2 => return COMPND_8K ;
    when 3 => return COMPND_RSV ;
    when others => return COMPND_4K ;
  end case;
  end;
  -- prev() function DUMMY4 for enum type cmd_compound_cmd_frm_size_e
  function DUMMY4 (__v : cmd_compound_cmd_frm_size_e ; __n : integer) return
   cmd_compound_cmd_frm_size_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when COMPND_RSV => posn := 0 ;
    when COMPND_8K => posn := 1 ;
    when COMPND_4K => posn := 2 ;
    when CMD_SIMPLE => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  case __m is
    when 0 => return COMPND_RSV ;
    when 1 => return COMPND_8K ;
    when 2 => return COMPND_4K ;
    when 3 => return CMD_SIMPLE ;
    when others => return COMPND_RSV ;
  end case;
  end;
  -- name() function DUMMY5 for enum type cmd_compound_cmd_frm_size_e
  function DUMMY5 (__v : cmd_compound_cmd_frm_size_e) return std_logic_vector is
  begin
  case __v is
    when CMD_SIMPLE => return ext(X"434D445F53494D504C45", 80) ;
    when COMPND_4K => return ext(X"434F4D504E445F344B", 80) ;
    when COMPND_8K => return ext(X"434F4D504E445F384B", 80) ;
    when COMPND_RSV => return ext(X"434F4D504E445F525356", 80) ;
    when others => return ext(X"00", 80) ;
  end case ;
  end ;
  subtype cmd_guid_present_e is std_logic ;
  constant GUID_NOT_PRESENT : cmd_guid_present_e := std_logic'('0') ;
  constant GUID_PRESENT : cmd_guid_present_e := std_logic'('1') ;
  -- next() function DUMMY6 for enum type cmd_guid_present_e
  function DUMMY6 (__v : cmd_guid_present_e ; __n : integer) return
   cmd_guid_present_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when GUID_NOT_PRESENT => posn := 0 ;
    when GUID_PRESENT => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY7 for enum type cmd_guid_present_e
  function DUMMY7 (__v : cmd_guid_present_e ; __n : integer) return
   cmd_guid_present_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when GUID_NOT_PRESENT => posn := 0 ;
    when GUID_PRESENT => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY8 for enum type cmd_guid_present_e
  function DUMMY8 (__v : cmd_guid_present_e) return std_logic_vector is
  begin
  case __v is
    when GUID_NOT_PRESENT => return ext(X"475549445F4E4F545F50524553454E54", 128
    ) ;
    when GUID_PRESENT => return ext(X"475549445F50524553454E54", 128) ;
    when others => return ext(X"00", 128) ;
  end case ;
  end ;
  subtype cmd_frmd_crc_in_e is std_logic ;
  constant CRC_NOT_PRESENT : cmd_frmd_crc_in_e := std_logic'('0') ;
  constant CRC_PRESENT : cmd_frmd_crc_in_e := std_logic'('1') ;
  -- next() function DUMMY9 for enum type cmd_frmd_crc_in_e
  function DUMMY9 (__v : cmd_frmd_crc_in_e ; __n : integer) return
   cmd_frmd_crc_in_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when CRC_NOT_PRESENT => posn := 0 ;
    when CRC_PRESENT => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY10 for enum type cmd_frmd_crc_in_e
  function DUMMY10 (__v : cmd_frmd_crc_in_e ; __n : integer) return
   cmd_frmd_crc_in_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when CRC_NOT_PRESENT => posn := 0 ;
    when CRC_PRESENT => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY11 for enum type cmd_frmd_crc_in_e
  function DUMMY11 (__v : cmd_frmd_crc_in_e) return std_logic_vector is
  begin
  case __v is
    when CRC_NOT_PRESENT => return ext(X"4352435F4E4F545F50524553454E54", 120) ;
    when CRC_PRESENT => return ext(X"4352435F50524553454E54", 120) ;
    when others => return ext(X"00", 120) ;
  end case ;
  end ;
  subtype cceip_cmd_frmd_in_type_e is std_logic_vector(6 downto 0) ;
  constant CCEIP_FRMD_USER_NULL : cceip_cmd_frmd_in_type_e := std_logic_vector'
  ("0001011") ;
  constant CCEIP_FRMD_USER_PI16 : cceip_cmd_frmd_in_type_e := std_logic_vector'
  ("0001100") ;
  constant CCEIP_FRMD_USER_PI64 : cceip_cmd_frmd_in_type_e := std_logic_vector'
  ("0001101") ;
  constant CCEIP_FRMD_USER_VM : cceip_cmd_frmd_in_type_e := std_logic_vector'
  ("0001110") ;
  constant CCEIP_TYPE_IN_RSV : cceip_cmd_frmd_in_type_e := std_logic_vector'
  ("1111111") ;
  -- next() function DUMMY12 for enum type cceip_cmd_frmd_in_type_e
  function DUMMY12 (__v : cceip_cmd_frmd_in_type_e ; __n : integer) return
   cceip_cmd_frmd_in_type_e is
  variable posn : integer range 0 to 4 := 0;
  variable __m : integer range 0 to 4 := 0;
  begin
  case __v is
    when CCEIP_FRMD_USER_NULL => posn := 0 ;
    when CCEIP_FRMD_USER_PI16 => posn := 1 ;
    when CCEIP_FRMD_USER_PI64 => posn := 2 ;
    when CCEIP_FRMD_USER_VM => posn := 3 ;
    when CCEIP_TYPE_IN_RSV => posn := 4 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 5 ;
  case __m is
    when 0 => return CCEIP_FRMD_USER_NULL ;
    when 1 => return CCEIP_FRMD_USER_PI16 ;
    when 2 => return CCEIP_FRMD_USER_PI64 ;
    when 3 => return CCEIP_FRMD_USER_VM ;
    when 4 => return CCEIP_TYPE_IN_RSV ;
    when others => return CCEIP_FRMD_USER_PI16 ;
  end case;
  end;
  -- prev() function DUMMY13 for enum type cceip_cmd_frmd_in_type_e
  function DUMMY13 (__v : cceip_cmd_frmd_in_type_e ; __n : integer) return
   cceip_cmd_frmd_in_type_e is
  variable posn : integer range 0 to 4 := 0;
  variable __m : integer range 0 to 4 := 0;
  begin
  case __v is
    when CCEIP_TYPE_IN_RSV => posn := 0 ;
    when CCEIP_FRMD_USER_VM => posn := 1 ;
    when CCEIP_FRMD_USER_PI64 => posn := 2 ;
    when CCEIP_FRMD_USER_PI16 => posn := 3 ;
    when CCEIP_FRMD_USER_NULL => posn := 4 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 5 ;
  case __m is
    when 0 => return CCEIP_TYPE_IN_RSV ;
    when 1 => return CCEIP_FRMD_USER_VM ;
    when 2 => return CCEIP_FRMD_USER_PI64 ;
    when 3 => return CCEIP_FRMD_USER_PI16 ;
    when 4 => return CCEIP_FRMD_USER_NULL ;
    when others => return CCEIP_TYPE_IN_RSV ;
  end case;
  end;
  -- name() function DUMMY14 for enum type cceip_cmd_frmd_in_type_e
  function DUMMY14 (__v : cceip_cmd_frmd_in_type_e) return std_logic_vector is
  begin
  case __v is
    when CCEIP_FRMD_USER_NULL => return ext
    (X"43434549505F46524D445F555345525F4E554C4C", 160) ;
    when CCEIP_FRMD_USER_PI16 => return ext
    (X"43434549505F46524D445F555345525F50493136", 160) ;
    when CCEIP_FRMD_USER_PI64 => return ext
    (X"43434549505F46524D445F555345525F50493634", 160) ;
    when CCEIP_FRMD_USER_VM => return ext
    (X"43434549505F46524D445F555345525F564D", 160) ;
    when CCEIP_TYPE_IN_RSV => return ext(X"43434549505F545950455F494E5F525356",
     160) ;
    when others => return ext(X"00", 160) ;
  end case ;
  end ;
  subtype cddip_cmd_frmd_in_type_e is std_logic_vector(6 downto 0) ;
  constant CDDIP_FRMD_INT_APP : cddip_cmd_frmd_in_type_e := std_logic_vector'
  ("0001111") ;
  constant CDDIP_FRMD_INT_SIP : cddip_cmd_frmd_in_type_e := std_logic_vector'
  ("0010000") ;
  constant CDDIP_FRMD_INT_LIP : cddip_cmd_frmd_in_type_e := std_logic_vector'
  ("0010001") ;
  constant CDDIP_FRMD_INT_VM : cddip_cmd_frmd_in_type_e := std_logic_vector'
  ("0010010") ;
  constant CDDIP_FRMD_INT_VM_SHORT : cddip_cmd_frmd_in_type_e :=
   std_logic_vector'("0010110") ;
  constant CDDIP_TYPE_IN_RSV : cddip_cmd_frmd_in_type_e := std_logic_vector'
  ("1111111") ;
  -- next() function DUMMY15 for enum type cddip_cmd_frmd_in_type_e
  function DUMMY15 (__v : cddip_cmd_frmd_in_type_e ; __n : integer) return
   cddip_cmd_frmd_in_type_e is
  variable posn : integer range 0 to 5 := 0;
  variable __m : integer range 0 to 5 := 0;
  begin
  case __v is
    when CDDIP_FRMD_INT_APP => posn := 0 ;
    when CDDIP_FRMD_INT_SIP => posn := 1 ;
    when CDDIP_FRMD_INT_LIP => posn := 2 ;
    when CDDIP_FRMD_INT_VM => posn := 3 ;
    when CDDIP_FRMD_INT_VM_SHORT => posn := 4 ;
    when CDDIP_TYPE_IN_RSV => posn := 5 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 6 ;
  case __m is
    when 0 => return CDDIP_FRMD_INT_APP ;
    when 1 => return CDDIP_FRMD_INT_SIP ;
    when 2 => return CDDIP_FRMD_INT_LIP ;
    when 3 => return CDDIP_FRMD_INT_VM ;
    when 4 => return CDDIP_FRMD_INT_VM_SHORT ;
    when 5 => return CDDIP_TYPE_IN_RSV ;
    when others => return CDDIP_FRMD_INT_SIP ;
  end case;
  end;
  -- prev() function DUMMY16 for enum type cddip_cmd_frmd_in_type_e
  function DUMMY16 (__v : cddip_cmd_frmd_in_type_e ; __n : integer) return
   cddip_cmd_frmd_in_type_e is
  variable posn : integer range 0 to 5 := 0;
  variable __m : integer range 0 to 5 := 0;
  begin
  case __v is
    when CDDIP_TYPE_IN_RSV => posn := 0 ;
    when CDDIP_FRMD_INT_VM_SHORT => posn := 1 ;
    when CDDIP_FRMD_INT_VM => posn := 2 ;
    when CDDIP_FRMD_INT_LIP => posn := 3 ;
    when CDDIP_FRMD_INT_SIP => posn := 4 ;
    when CDDIP_FRMD_INT_APP => posn := 5 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 6 ;
  case __m is
    when 0 => return CDDIP_TYPE_IN_RSV ;
    when 1 => return CDDIP_FRMD_INT_VM_SHORT ;
    when 2 => return CDDIP_FRMD_INT_VM ;
    when 3 => return CDDIP_FRMD_INT_LIP ;
    when 4 => return CDDIP_FRMD_INT_SIP ;
    when 5 => return CDDIP_FRMD_INT_APP ;
    when others => return CDDIP_TYPE_IN_RSV ;
  end case;
  end;
  -- name() function DUMMY17 for enum type cddip_cmd_frmd_in_type_e
  function DUMMY17 (__v : cddip_cmd_frmd_in_type_e) return std_logic_vector is
  begin
  case __v is
    when CDDIP_FRMD_INT_APP => return ext
    (X"43444449505F46524D445F494E545F415050", 184) ;
    when CDDIP_FRMD_INT_SIP => return ext
    (X"43444449505F46524D445F494E545F534950", 184) ;
    when CDDIP_FRMD_INT_LIP => return ext
    (X"43444449505F46524D445F494E545F4C4950", 184) ;
    when CDDIP_FRMD_INT_VM => return ext(X"43444449505F46524D445F494E545F564D",
     184) ;
    when CDDIP_FRMD_INT_VM_SHORT => return ext
    (X"43444449505F46524D445F494E545F564D5F53484F5254", 184) ;
    when CDDIP_TYPE_IN_RSV => return ext(X"43444449505F545950455F494E5F525356",
     184) ;
    when others => return ext(X"00", 184) ;
  end case ;
  end ;
  subtype cceip_cmd_frmd_out_type_e is std_logic_vector(6 downto 0) ;
  constant CCEIP_FRMD_INT_APP : cceip_cmd_frmd_out_type_e := std_logic_vector'
  ("0001111") ;
  constant CCEIP_FRMD_INT_SIP : cceip_cmd_frmd_out_type_e := std_logic_vector'
  ("0010000") ;
  constant CCEIP_FRMD_INT_LIP : cceip_cmd_frmd_out_type_e := std_logic_vector'
  ("0010001") ;
  constant CCEIP_FRMD_INT_VM : cceip_cmd_frmd_out_type_e := std_logic_vector'
  ("0010010") ;
  constant CCEIP_FRMD_INT_VM_SHORT : cceip_cmd_frmd_out_type_e :=
   std_logic_vector'("0010110") ;
  constant CCEIP_TYPE_OUT_RSV : cceip_cmd_frmd_out_type_e := std_logic_vector'
  ("1111111") ;
  -- next() function DUMMY18 for enum type cceip_cmd_frmd_out_type_e
  function DUMMY18 (__v : cceip_cmd_frmd_out_type_e ; __n : integer) return
   cceip_cmd_frmd_out_type_e is
  variable posn : integer range 0 to 5 := 0;
  variable __m : integer range 0 to 5 := 0;
  begin
  case __v is
    when CCEIP_FRMD_INT_APP => posn := 0 ;
    when CCEIP_FRMD_INT_SIP => posn := 1 ;
    when CCEIP_FRMD_INT_LIP => posn := 2 ;
    when CCEIP_FRMD_INT_VM => posn := 3 ;
    when CCEIP_FRMD_INT_VM_SHORT => posn := 4 ;
    when CCEIP_TYPE_OUT_RSV => posn := 5 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 6 ;
  case __m is
    when 0 => return CCEIP_FRMD_INT_APP ;
    when 1 => return CCEIP_FRMD_INT_SIP ;
    when 2 => return CCEIP_FRMD_INT_LIP ;
    when 3 => return CCEIP_FRMD_INT_VM ;
    when 4 => return CCEIP_FRMD_INT_VM_SHORT ;
    when 5 => return CCEIP_TYPE_OUT_RSV ;
    when others => return CCEIP_FRMD_INT_SIP ;
  end case;
  end;
  -- prev() function DUMMY19 for enum type cceip_cmd_frmd_out_type_e
  function DUMMY19 (__v : cceip_cmd_frmd_out_type_e ; __n : integer) return
   cceip_cmd_frmd_out_type_e is
  variable posn : integer range 0 to 5 := 0;
  variable __m : integer range 0 to 5 := 0;
  begin
  case __v is
    when CCEIP_TYPE_OUT_RSV => posn := 0 ;
    when CCEIP_FRMD_INT_VM_SHORT => posn := 1 ;
    when CCEIP_FRMD_INT_VM => posn := 2 ;
    when CCEIP_FRMD_INT_LIP => posn := 3 ;
    when CCEIP_FRMD_INT_SIP => posn := 4 ;
    when CCEIP_FRMD_INT_APP => posn := 5 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 6 ;
  case __m is
    when 0 => return CCEIP_TYPE_OUT_RSV ;
    when 1 => return CCEIP_FRMD_INT_VM_SHORT ;
    when 2 => return CCEIP_FRMD_INT_VM ;
    when 3 => return CCEIP_FRMD_INT_LIP ;
    when 4 => return CCEIP_FRMD_INT_SIP ;
    when 5 => return CCEIP_FRMD_INT_APP ;
    when others => return CCEIP_TYPE_OUT_RSV ;
  end case;
  end;
  -- name() function DUMMY20 for enum type cceip_cmd_frmd_out_type_e
  function DUMMY20 (__v : cceip_cmd_frmd_out_type_e) return std_logic_vector is
  begin
  case __v is
    when CCEIP_FRMD_INT_APP => return ext
    (X"43434549505F46524D445F494E545F415050", 184) ;
    when CCEIP_FRMD_INT_SIP => return ext
    (X"43434549505F46524D445F494E545F534950", 184) ;
    when CCEIP_FRMD_INT_LIP => return ext
    (X"43434549505F46524D445F494E545F4C4950", 184) ;
    when CCEIP_FRMD_INT_VM => return ext(X"43434549505F46524D445F494E545F564D",
     184) ;
    when CCEIP_FRMD_INT_VM_SHORT => return ext
    (X"43434549505F46524D445F494E545F564D5F53484F5254", 184) ;
    when CCEIP_TYPE_OUT_RSV => return ext
    (X"43434549505F545950455F4F55545F525356", 184) ;
    when others => return ext(X"00", 184) ;
  end case ;
  end ;
  subtype cddip_cmd_frmd_out_type_e is std_logic_vector(6 downto 0) ;
  constant CDDIP_FRMD_USER_NULL : cddip_cmd_frmd_out_type_e := std_logic_vector'
  ("0001011") ;
  constant CDDIP_FRMD_USER_PI16 : cddip_cmd_frmd_out_type_e := std_logic_vector'
  ("0001100") ;
  constant CDDIP_FRMD_USER_PI64 : cddip_cmd_frmd_out_type_e := std_logic_vector'
  ("0001101") ;
  constant CDDIP_FRMD_USER_VM : cddip_cmd_frmd_out_type_e := std_logic_vector'
  ("0001110") ;
  constant CDDIP_TYPE_OUT_RSV : cddip_cmd_frmd_out_type_e := std_logic_vector'
  ("1111111") ;
  -- next() function DUMMY21 for enum type cddip_cmd_frmd_out_type_e
  function DUMMY21 (__v : cddip_cmd_frmd_out_type_e ; __n : integer) return
   cddip_cmd_frmd_out_type_e is
  variable posn : integer range 0 to 4 := 0;
  variable __m : integer range 0 to 4 := 0;
  begin
  case __v is
    when CDDIP_FRMD_USER_NULL => posn := 0 ;
    when CDDIP_FRMD_USER_PI16 => posn := 1 ;
    when CDDIP_FRMD_USER_PI64 => posn := 2 ;
    when CDDIP_FRMD_USER_VM => posn := 3 ;
    when CDDIP_TYPE_OUT_RSV => posn := 4 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 5 ;
  case __m is
    when 0 => return CDDIP_FRMD_USER_NULL ;
    when 1 => return CDDIP_FRMD_USER_PI16 ;
    when 2 => return CDDIP_FRMD_USER_PI64 ;
    when 3 => return CDDIP_FRMD_USER_VM ;
    when 4 => return CDDIP_TYPE_OUT_RSV ;
    when others => return CDDIP_FRMD_USER_PI16 ;
  end case;
  end;
  -- prev() function DUMMY22 for enum type cddip_cmd_frmd_out_type_e
  function DUMMY22 (__v : cddip_cmd_frmd_out_type_e ; __n : integer) return
   cddip_cmd_frmd_out_type_e is
  variable posn : integer range 0 to 4 := 0;
  variable __m : integer range 0 to 4 := 0;
  begin
  case __v is
    when CDDIP_TYPE_OUT_RSV => posn := 0 ;
    when CDDIP_FRMD_USER_VM => posn := 1 ;
    when CDDIP_FRMD_USER_PI64 => posn := 2 ;
    when CDDIP_FRMD_USER_PI16 => posn := 3 ;
    when CDDIP_FRMD_USER_NULL => posn := 4 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 5 ;
  case __m is
    when 0 => return CDDIP_TYPE_OUT_RSV ;
    when 1 => return CDDIP_FRMD_USER_VM ;
    when 2 => return CDDIP_FRMD_USER_PI64 ;
    when 3 => return CDDIP_FRMD_USER_PI16 ;
    when 4 => return CDDIP_FRMD_USER_NULL ;
    when others => return CDDIP_TYPE_OUT_RSV ;
  end case;
  end;
  -- name() function DUMMY23 for enum type cddip_cmd_frmd_out_type_e
  function DUMMY23 (__v : cddip_cmd_frmd_out_type_e) return std_logic_vector is
  begin
  case __v is
    when CDDIP_FRMD_USER_NULL => return ext
    (X"43444449505F46524D445F555345525F4E554C4C", 160) ;
    when CDDIP_FRMD_USER_PI16 => return ext
    (X"43444449505F46524D445F555345525F50493136", 160) ;
    when CDDIP_FRMD_USER_PI64 => return ext
    (X"43444449505F46524D445F555345525F50493634", 160) ;
    when CDDIP_FRMD_USER_VM => return ext
    (X"43444449505F46524D445F555345525F564D", 160) ;
    when CDDIP_TYPE_OUT_RSV => return ext
    (X"43444449505F545950455F4F55545F525356", 160) ;
    when others => return ext(X"00", 160) ;
  end case ;
  end ;
  subtype cmd_frmd_out_crc_e is std_logic ;
  constant NOT_GEN : cmd_frmd_out_crc_e := std_logic'('0') ;
  constant GEN : cmd_frmd_out_crc_e := std_logic'('1') ;
  -- next() function DUMMY24 for enum type cmd_frmd_out_crc_e
  function DUMMY24 (__v : cmd_frmd_out_crc_e ; __n : integer) return
   cmd_frmd_out_crc_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when NOT_GEN => posn := 0 ;
    when GEN => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY25 for enum type cmd_frmd_out_crc_e
  function DUMMY25 (__v : cmd_frmd_out_crc_e ; __n : integer) return
   cmd_frmd_out_crc_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when NOT_GEN => posn := 0 ;
    when GEN => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY26 for enum type cmd_frmd_out_crc_e
  function DUMMY26 (__v : cmd_frmd_out_crc_e) return std_logic_vector is
  begin
  case __v is
    when NOT_GEN => return ext(X"4E4F545F47454E", 56) ;
    when GEN => return ext(X"47454E", 56) ;
    when others => return ext(X"00", 56) ;
  end case ;
  end ;
  subtype cmd_frmd_out_crc_type_e is std_logic_vector(1 downto 0) ;
  constant FRMD_T10_DIX : cmd_frmd_out_crc_type_e := std_logic_vector'("00") ;
  constant FRMD_CRC64 : cmd_frmd_out_crc_type_e := std_logic_vector'("01") ;
  constant FRMD_CRC64E : cmd_frmd_out_crc_type_e := std_logic_vector'("10") ;
  constant FRMD_CRC_RSV : cmd_frmd_out_crc_type_e := std_logic_vector'("11") ;
  -- next() function DUMMY27 for enum type cmd_frmd_out_crc_type_e
  function DUMMY27 (__v : cmd_frmd_out_crc_type_e ; __n : integer) return
   cmd_frmd_out_crc_type_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when FRMD_T10_DIX => posn := 0 ;
    when FRMD_CRC64 => posn := 1 ;
    when FRMD_CRC64E => posn := 2 ;
    when FRMD_CRC_RSV => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- prev() function DUMMY28 for enum type cmd_frmd_out_crc_type_e
  function DUMMY28 (__v : cmd_frmd_out_crc_type_e ; __n : integer) return
   cmd_frmd_out_crc_type_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when FRMD_T10_DIX => posn := 0 ;
    when FRMD_CRC64 => posn := 1 ;
    when FRMD_CRC64E => posn := 2 ;
    when FRMD_CRC_RSV => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- name() function DUMMY29 for enum type cmd_frmd_out_crc_type_e
  function DUMMY29 (__v : cmd_frmd_out_crc_type_e) return std_logic_vector is
  begin
  case __v is
    when FRMD_T10_DIX => return ext(X"46524D445F5431305F444958", 96) ;
    when FRMD_CRC64 => return ext(X"46524D445F4352433634", 96) ;
    when FRMD_CRC64E => return ext(X"46524D445F435243363445", 96) ;
    when FRMD_CRC_RSV => return ext(X"46524D445F4352435F525356", 96) ;
    when others => return ext(X"00", 96) ;
  end case ;
  end ;
  subtype cmd_md_type_e is std_logic_vector(1 downto 0) ;
  constant NO_CRC : cmd_md_type_e := std_logic_vector'("00") ;
  constant CRC_8B_CRC64 : cmd_md_type_e := std_logic_vector'("01") ;
  constant CRC_8B_CRC64E : cmd_md_type_e := std_logic_vector'("10") ;
  constant MD_TYPE_RSV : cmd_md_type_e := std_logic_vector'("11") ;
  -- next() function DUMMY30 for enum type cmd_md_type_e
  function DUMMY30 (__v : cmd_md_type_e ; __n : integer) return cmd_md_type_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when NO_CRC => posn := 0 ;
    when CRC_8B_CRC64 => posn := 1 ;
    when CRC_8B_CRC64E => posn := 2 ;
    when MD_TYPE_RSV => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- prev() function DUMMY31 for enum type cmd_md_type_e
  function DUMMY31 (__v : cmd_md_type_e ; __n : integer) return cmd_md_type_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when NO_CRC => posn := 0 ;
    when CRC_8B_CRC64 => posn := 1 ;
    when CRC_8B_CRC64E => posn := 2 ;
    when MD_TYPE_RSV => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- name() function DUMMY32 for enum type cmd_md_type_e
  function DUMMY32 (__v : cmd_md_type_e) return std_logic_vector is
  begin
  case __v is
    when NO_CRC => return ext(X"4E4F5F435243", 104) ;
    when CRC_8B_CRC64 => return ext(X"4352435F38425F4352433634", 104) ;
    when CRC_8B_CRC64E => return ext(X"4352435F38425F435243363445", 104) ;
    when MD_TYPE_RSV => return ext(X"4D445F545950455F525356", 104) ;
    when others => return ext(X"00", 104) ;
  end case ;
  end ;
  subtype cmd_md_op_e is std_logic_vector(1 downto 0) ;
  constant CRC_GEN_VERIFY : cmd_md_op_e := std_logic_vector'("00") ;
  constant CRC_RSV1 : cmd_md_op_e := std_logic_vector'("01") ;
  constant CRC_RSV2 : cmd_md_op_e := std_logic_vector'("10") ;
  constant CRC_RSV3 : cmd_md_op_e := std_logic_vector'("11") ;
  -- next() function DUMMY33 for enum type cmd_md_op_e
  function DUMMY33 (__v : cmd_md_op_e ; __n : integer) return cmd_md_op_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when CRC_GEN_VERIFY => posn := 0 ;
    when CRC_RSV1 => posn := 1 ;
    when CRC_RSV2 => posn := 2 ;
    when CRC_RSV3 => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- prev() function DUMMY34 for enum type cmd_md_op_e
  function DUMMY34 (__v : cmd_md_op_e ; __n : integer) return cmd_md_op_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when CRC_GEN_VERIFY => posn := 0 ;
    when CRC_RSV1 => posn := 1 ;
    when CRC_RSV2 => posn := 2 ;
    when CRC_RSV3 => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- name() function DUMMY35 for enum type cmd_md_op_e
  function DUMMY35 (__v : cmd_md_op_e) return std_logic_vector is
  begin
  case __v is
    when CRC_GEN_VERIFY => return ext(X"4352435F47454E5F564552494659", 112) ;
    when CRC_RSV1 => return ext(X"4352435F52535631", 112) ;
    when CRC_RSV2 => return ext(X"4352435F52535632", 112) ;
    when CRC_RSV3 => return ext(X"4352435F52535633", 112) ;
    when others => return ext(X"00", 112) ;
  end case ;
  end ;
  subtype cmd_frmd_raw_mac_sel_e is std_logic ;
  constant FRMD_MAC_NOP : cmd_frmd_raw_mac_sel_e := std_logic'('0') ;
  constant FRMD_MAC_CAL : cmd_frmd_raw_mac_sel_e := std_logic'('1') ;
  -- next() function DUMMY36 for enum type cmd_frmd_raw_mac_sel_e
  function DUMMY36 (__v : cmd_frmd_raw_mac_sel_e ; __n : integer) return
   cmd_frmd_raw_mac_sel_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when FRMD_MAC_NOP => posn := 0 ;
    when FRMD_MAC_CAL => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY37 for enum type cmd_frmd_raw_mac_sel_e
  function DUMMY37 (__v : cmd_frmd_raw_mac_sel_e ; __n : integer) return
   cmd_frmd_raw_mac_sel_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when FRMD_MAC_NOP => posn := 0 ;
    when FRMD_MAC_CAL => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY38 for enum type cmd_frmd_raw_mac_sel_e
  function DUMMY38 (__v : cmd_frmd_raw_mac_sel_e) return std_logic_vector is
  begin
  case __v is
    when FRMD_MAC_NOP => return ext(X"46524D445F4D41435F4E4F50", 96) ;
    when FRMD_MAC_CAL => return ext(X"46524D445F4D41435F43414C", 96) ;
    when others => return ext(X"00", 96) ;
  end case ;
  end ;
  subtype cmd_chu_append_e is std_logic ;
  constant CHU_NORMAL : cmd_chu_append_e := std_logic'('0') ;
  constant CHU_APPEND : cmd_chu_append_e := std_logic'('1') ;
  -- next() function DUMMY39 for enum type cmd_chu_append_e
  function DUMMY39 (__v : cmd_chu_append_e ; __n : integer) return
   cmd_chu_append_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when CHU_NORMAL => posn := 0 ;
    when CHU_APPEND => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY40 for enum type cmd_chu_append_e
  function DUMMY40 (__v : cmd_chu_append_e ; __n : integer) return
   cmd_chu_append_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when CHU_NORMAL => posn := 0 ;
    when CHU_APPEND => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY41 for enum type cmd_chu_append_e
  function DUMMY41 (__v : cmd_chu_append_e) return std_logic_vector is
  begin
  case __v is
    when CHU_NORMAL => return ext(X"4348555F4E4F524D414C", 80) ;
    when CHU_APPEND => return ext(X"4348555F415050454E44", 80) ;
    when others => return ext(X"00", 80) ;
  end case ;
  end ;
  subtype cmd_comp_mode_e is std_logic_vector(3 downto 0) ;
  constant NONE : cmd_comp_mode_e := std_logic_vector'("0000") ;
  constant ZLIB : cmd_comp_mode_e := std_logic_vector'("0001") ;
  constant GZIP : cmd_comp_mode_e := std_logic_vector'("0010") ;
  constant XP9 : cmd_comp_mode_e := std_logic_vector'("0011") ;
  constant XP10 : cmd_comp_mode_e := std_logic_vector'("0100") ;
  constant CHU4K : cmd_comp_mode_e := std_logic_vector'("0101") ;
  constant CHU8K : cmd_comp_mode_e := std_logic_vector'("0110") ;
  constant RSV_MODE : cmd_comp_mode_e := std_logic_vector'("1111") ;
  -- next() function DUMMY42 for enum type cmd_comp_mode_e
  function DUMMY42 (__v : cmd_comp_mode_e ; __n : integer) return
   cmd_comp_mode_e is
  variable posn : integer range 0 to 7 := 0;
  variable __m : integer range 0 to 7 := 0;
  begin
  case __v is
    when NONE => posn := 0 ;
    when ZLIB => posn := 1 ;
    when GZIP => posn := 2 ;
    when XP9 => posn := 3 ;
    when XP10 => posn := 4 ;
    when CHU4K => posn := 5 ;
    when CHU8K => posn := 6 ;
    when RSV_MODE => posn := 7 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 8 ;
  case __m is
    when 0 => return NONE ;
    when 1 => return ZLIB ;
    when 2 => return GZIP ;
    when 3 => return XP9 ;
    when 4 => return XP10 ;
    when 5 => return CHU4K ;
    when 6 => return CHU8K ;
    when 7 => return RSV_MODE ;
    when others => return ZLIB ;
  end case;
  end;
  -- prev() function DUMMY43 for enum type cmd_comp_mode_e
  function DUMMY43 (__v : cmd_comp_mode_e ; __n : integer) return
   cmd_comp_mode_e is
  variable posn : integer range 0 to 7 := 0;
  variable __m : integer range 0 to 7 := 0;
  begin
  case __v is
    when RSV_MODE => posn := 0 ;
    when CHU8K => posn := 1 ;
    when CHU4K => posn := 2 ;
    when XP10 => posn := 3 ;
    when XP9 => posn := 4 ;
    when GZIP => posn := 5 ;
    when ZLIB => posn := 6 ;
    when NONE => posn := 7 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 8 ;
  case __m is
    when 0 => return RSV_MODE ;
    when 1 => return CHU8K ;
    when 2 => return CHU4K ;
    when 3 => return XP10 ;
    when 4 => return XP9 ;
    when 5 => return GZIP ;
    when 6 => return ZLIB ;
    when 7 => return NONE ;
    when others => return RSV_MODE ;
  end case;
  end;
  -- name() function DUMMY44 for enum type cmd_comp_mode_e
  function DUMMY44 (__v : cmd_comp_mode_e) return std_logic_vector is
  begin
  case __v is
    when NONE => return ext(X"4E4F4E45", 64) ;
    when ZLIB => return ext(X"5A4C4942", 64) ;
    when GZIP => return ext(X"475A4950", 64) ;
    when XP9 => return ext(X"585039", 64) ;
    when XP10 => return ext(X"58503130", 64) ;
    when CHU4K => return ext(X"434855344B", 64) ;
    when CHU8K => return ext(X"434855384B", 64) ;
    when RSV_MODE => return ext(X"5253565F4D4F4445", 64) ;
    when others => return ext(X"00", 64) ;
  end case ;
  end ;
  subtype cmd_lz77_win_size_e is std_logic_vector(3 downto 0) ;
  constant WIN_32B : cmd_lz77_win_size_e := std_logic_vector'("0000") ;
  constant WIN_4K : cmd_lz77_win_size_e := std_logic_vector'("0001") ;
  constant WIN_8K : cmd_lz77_win_size_e := std_logic_vector'("0010") ;
  constant WIN_16K : cmd_lz77_win_size_e := std_logic_vector'("0011") ;
  constant WIN_32K : cmd_lz77_win_size_e := std_logic_vector'("0100") ;
  constant WIN_64K : cmd_lz77_win_size_e := std_logic_vector'("0101") ;
  constant RSV_WIN : cmd_lz77_win_size_e := std_logic_vector'("1111") ;
  -- next() function DUMMY45 for enum type cmd_lz77_win_size_e
  function DUMMY45 (__v : cmd_lz77_win_size_e ; __n : integer) return
   cmd_lz77_win_size_e is
  variable posn : integer range 0 to 6 := 0;
  variable __m : integer range 0 to 6 := 0;
  begin
  case __v is
    when WIN_32B => posn := 0 ;
    when WIN_4K => posn := 1 ;
    when WIN_8K => posn := 2 ;
    when WIN_16K => posn := 3 ;
    when WIN_32K => posn := 4 ;
    when WIN_64K => posn := 5 ;
    when RSV_WIN => posn := 6 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 7 ;
  case __m is
    when 0 => return WIN_32B ;
    when 1 => return WIN_4K ;
    when 2 => return WIN_8K ;
    when 3 => return WIN_16K ;
    when 4 => return WIN_32K ;
    when 5 => return WIN_64K ;
    when 6 => return RSV_WIN ;
    when others => return WIN_4K ;
  end case;
  end;
  -- prev() function DUMMY46 for enum type cmd_lz77_win_size_e
  function DUMMY46 (__v : cmd_lz77_win_size_e ; __n : integer) return
   cmd_lz77_win_size_e is
  variable posn : integer range 0 to 6 := 0;
  variable __m : integer range 0 to 6 := 0;
  begin
  case __v is
    when RSV_WIN => posn := 0 ;
    when WIN_64K => posn := 1 ;
    when WIN_32K => posn := 2 ;
    when WIN_16K => posn := 3 ;
    when WIN_8K => posn := 4 ;
    when WIN_4K => posn := 5 ;
    when WIN_32B => posn := 6 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 7 ;
  case __m is
    when 0 => return RSV_WIN ;
    when 1 => return WIN_64K ;
    when 2 => return WIN_32K ;
    when 3 => return WIN_16K ;
    when 4 => return WIN_8K ;
    when 5 => return WIN_4K ;
    when 6 => return WIN_32B ;
    when others => return RSV_WIN ;
  end case;
  end;
  -- name() function DUMMY47 for enum type cmd_lz77_win_size_e
  function DUMMY47 (__v : cmd_lz77_win_size_e) return std_logic_vector is
  begin
  case __v is
    when WIN_32B => return ext(X"57494E5F333242", 56) ;
    when WIN_4K => return ext(X"57494E5F344B", 56) ;
    when WIN_8K => return ext(X"57494E5F384B", 56) ;
    when WIN_16K => return ext(X"57494E5F31364B", 56) ;
    when WIN_32K => return ext(X"57494E5F33324B", 56) ;
    when WIN_64K => return ext(X"57494E5F36344B", 56) ;
    when RSV_WIN => return ext(X"5253565F57494E", 56) ;
    when others => return ext(X"00", 56) ;
  end case ;
  end ;
  subtype cmd_lz77_dly_match_win_e is std_logic_vector(1 downto 0) ;
  constant NO_MATCH : cmd_lz77_dly_match_win_e := std_logic_vector'("00") ;
  constant CHAR_1 : cmd_lz77_dly_match_win_e := std_logic_vector'("01") ;
  constant CHAR_2 : cmd_lz77_dly_match_win_e := std_logic_vector'("10") ;
  constant RSV_DLY : cmd_lz77_dly_match_win_e := std_logic_vector'("11") ;
  -- next() function DUMMY48 for enum type cmd_lz77_dly_match_win_e
  function DUMMY48 (__v : cmd_lz77_dly_match_win_e ; __n : integer) return
   cmd_lz77_dly_match_win_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when NO_MATCH => posn := 0 ;
    when CHAR_1 => posn := 1 ;
    when CHAR_2 => posn := 2 ;
    when RSV_DLY => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- prev() function DUMMY49 for enum type cmd_lz77_dly_match_win_e
  function DUMMY49 (__v : cmd_lz77_dly_match_win_e ; __n : integer) return
   cmd_lz77_dly_match_win_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when NO_MATCH => posn := 0 ;
    when CHAR_1 => posn := 1 ;
    when CHAR_2 => posn := 2 ;
    when RSV_DLY => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- name() function DUMMY50 for enum type cmd_lz77_dly_match_win_e
  function DUMMY50 (__v : cmd_lz77_dly_match_win_e) return std_logic_vector is
  begin
  case __v is
    when NO_MATCH => return ext(X"4E4F5F4D41544348", 64) ;
    when CHAR_1 => return ext(X"434841525F31", 64) ;
    when CHAR_2 => return ext(X"434841525F32", 64) ;
    when RSV_DLY => return ext(X"5253565F444C59", 64) ;
    when others => return ext(X"00", 64) ;
  end case ;
  end ;
  subtype cmd_lz77_min_match_len_e is std_logic ;
  constant CHAR_3 : cmd_lz77_min_match_len_e := std_logic'('0') ;
  constant CHAR_4 : cmd_lz77_min_match_len_e := std_logic'('1') ;
  -- next() function DUMMY51 for enum type cmd_lz77_min_match_len_e
  function DUMMY51 (__v : cmd_lz77_min_match_len_e ; __n : integer) return
   cmd_lz77_min_match_len_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when CHAR_3 => posn := 0 ;
    when CHAR_4 => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY52 for enum type cmd_lz77_min_match_len_e
  function DUMMY52 (__v : cmd_lz77_min_match_len_e ; __n : integer) return
   cmd_lz77_min_match_len_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when CHAR_3 => posn := 0 ;
    when CHAR_4 => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY53 for enum type cmd_lz77_min_match_len_e
  function DUMMY53 (__v : cmd_lz77_min_match_len_e) return std_logic_vector is
  begin
  case __v is
    when CHAR_3 => return ext(X"434841525F33", 48) ;
    when CHAR_4 => return ext(X"434841525F34", 48) ;
    when others => return ext(X"00", 48) ;
  end case ;
  end ;
  subtype cmd_lz77_max_symb_len_e is std_logic_vector(1 downto 0) ;
  constant LEN_LZ77_WIN : cmd_lz77_max_symb_len_e := std_logic_vector'("00") ;
  constant LEN_256B : cmd_lz77_max_symb_len_e := std_logic_vector'("01") ;
  constant MIN_MTCH_14 : cmd_lz77_max_symb_len_e := std_logic_vector'("10") ;
  constant LEN_64B : cmd_lz77_max_symb_len_e := std_logic_vector'("11") ;
  -- next() function DUMMY54 for enum type cmd_lz77_max_symb_len_e
  function DUMMY54 (__v : cmd_lz77_max_symb_len_e ; __n : integer) return
   cmd_lz77_max_symb_len_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when LEN_LZ77_WIN => posn := 0 ;
    when LEN_256B => posn := 1 ;
    when MIN_MTCH_14 => posn := 2 ;
    when LEN_64B => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- prev() function DUMMY55 for enum type cmd_lz77_max_symb_len_e
  function DUMMY55 (__v : cmd_lz77_max_symb_len_e ; __n : integer) return
   cmd_lz77_max_symb_len_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when LEN_LZ77_WIN => posn := 0 ;
    when LEN_256B => posn := 1 ;
    when MIN_MTCH_14 => posn := 2 ;
    when LEN_64B => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- name() function DUMMY56 for enum type cmd_lz77_max_symb_len_e
  function DUMMY56 (__v : cmd_lz77_max_symb_len_e) return std_logic_vector is
  begin
  case __v is
    when LEN_LZ77_WIN => return ext(X"4C454E5F4C5A37375F57494E", 96) ;
    when LEN_256B => return ext(X"4C454E5F32353642", 96) ;
    when MIN_MTCH_14 => return ext(X"4D494E5F4D5443485F3134", 96) ;
    when LEN_64B => return ext(X"4C454E5F363442", 96) ;
    when others => return ext(X"00", 96) ;
  end case ;
  end ;
  subtype cmd_xp10_prefix_mode_e is std_logic_vector(1 downto 0) ;
  constant NO_PREFIX : cmd_xp10_prefix_mode_e := std_logic_vector'("00") ;
  constant USER_PREFIX : cmd_xp10_prefix_mode_e := std_logic_vector'("01") ;
  constant PREDEF_PREFIX : cmd_xp10_prefix_mode_e := std_logic_vector'("10") ;
  constant PREDET_HUFF : cmd_xp10_prefix_mode_e := std_logic_vector'("11") ;
  -- next() function DUMMY57 for enum type cmd_xp10_prefix_mode_e
  function DUMMY57 (__v : cmd_xp10_prefix_mode_e ; __n : integer) return
   cmd_xp10_prefix_mode_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when NO_PREFIX => posn := 0 ;
    when USER_PREFIX => posn := 1 ;
    when PREDEF_PREFIX => posn := 2 ;
    when PREDET_HUFF => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- prev() function DUMMY58 for enum type cmd_xp10_prefix_mode_e
  function DUMMY58 (__v : cmd_xp10_prefix_mode_e ; __n : integer) return
   cmd_xp10_prefix_mode_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when NO_PREFIX => posn := 0 ;
    when USER_PREFIX => posn := 1 ;
    when PREDEF_PREFIX => posn := 2 ;
    when PREDET_HUFF => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- name() function DUMMY59 for enum type cmd_xp10_prefix_mode_e
  function DUMMY59 (__v : cmd_xp10_prefix_mode_e) return std_logic_vector is
  begin
  case __v is
    when NO_PREFIX => return ext(X"4E4F5F505245464958", 104) ;
    when USER_PREFIX => return ext(X"555345525F505245464958", 104) ;
    when PREDEF_PREFIX => return ext(X"5052454445465F505245464958", 104) ;
    when PREDET_HUFF => return ext(X"5052454445545F48554646", 104) ;
    when others => return ext(X"00", 104) ;
  end case ;
  end ;
  subtype cmd_xp10_crc_mode_e is std_logic ;
  constant CRC32 : cmd_xp10_crc_mode_e := std_logic'('0') ;
  constant CRC64 : cmd_xp10_crc_mode_e := std_logic'('1') ;
  -- next() function DUMMY60 for enum type cmd_xp10_crc_mode_e
  function DUMMY60 (__v : cmd_xp10_crc_mode_e ; __n : integer) return
   cmd_xp10_crc_mode_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when CRC32 => posn := 0 ;
    when CRC64 => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY61 for enum type cmd_xp10_crc_mode_e
  function DUMMY61 (__v : cmd_xp10_crc_mode_e ; __n : integer) return
   cmd_xp10_crc_mode_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when CRC32 => posn := 0 ;
    when CRC64 => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY62 for enum type cmd_xp10_crc_mode_e
  function DUMMY62 (__v : cmd_xp10_crc_mode_e) return std_logic_vector is
  begin
  case __v is
    when CRC32 => return ext(X"4352433332", 40) ;
    when CRC64 => return ext(X"4352433634", 40) ;
    when others => return ext(X"00", 40) ;
  end case ;
  end ;
  subtype cmd_chu_comp_thrsh_e is std_logic_vector(1 downto 0) ;
  constant FRM : cmd_chu_comp_thrsh_e := std_logic_vector'("00") ;
  constant FRM_LESS_16 : cmd_chu_comp_thrsh_e := std_logic_vector'("01") ;
  constant INF : cmd_chu_comp_thrsh_e := std_logic_vector'("10") ;
  constant RSV_THRSH : cmd_chu_comp_thrsh_e := std_logic_vector'("11") ;
  -- next() function DUMMY63 for enum type cmd_chu_comp_thrsh_e
  function DUMMY63 (__v : cmd_chu_comp_thrsh_e ; __n : integer) return
   cmd_chu_comp_thrsh_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when FRM => posn := 0 ;
    when FRM_LESS_16 => posn := 1 ;
    when INF => posn := 2 ;
    when RSV_THRSH => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- prev() function DUMMY64 for enum type cmd_chu_comp_thrsh_e
  function DUMMY64 (__v : cmd_chu_comp_thrsh_e ; __n : integer) return
   cmd_chu_comp_thrsh_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when FRM => posn := 0 ;
    when FRM_LESS_16 => posn := 1 ;
    when INF => posn := 2 ;
    when RSV_THRSH => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- name() function DUMMY65 for enum type cmd_chu_comp_thrsh_e
  function DUMMY65 (__v : cmd_chu_comp_thrsh_e) return std_logic_vector is
  begin
  case __v is
    when FRM => return ext(X"46524D", 88) ;
    when FRM_LESS_16 => return ext(X"46524D5F4C4553535F3136", 88) ;
    when INF => return ext(X"494E46", 88) ;
    when RSV_THRSH => return ext(X"5253565F5448525348", 88) ;
    when others => return ext(X"00", 88) ;
  end case ;
  end ;
  subtype cmd_cipher_mode_e is std_logic ;
  constant NO_CIPHER : cmd_cipher_mode_e := std_logic'('0') ;
  constant CIPHER : cmd_cipher_mode_e := std_logic'('1') ;
  -- next() function DUMMY66 for enum type cmd_cipher_mode_e
  function DUMMY66 (__v : cmd_cipher_mode_e ; __n : integer) return
   cmd_cipher_mode_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when NO_CIPHER => posn := 0 ;
    when CIPHER => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY67 for enum type cmd_cipher_mode_e
  function DUMMY67 (__v : cmd_cipher_mode_e ; __n : integer) return
   cmd_cipher_mode_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when NO_CIPHER => posn := 0 ;
    when CIPHER => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY68 for enum type cmd_cipher_mode_e
  function DUMMY68 (__v : cmd_cipher_mode_e) return std_logic_vector is
  begin
  case __v is
    when NO_CIPHER => return ext(X"4E4F5F434950484552", 72) ;
    when CIPHER => return ext(X"434950484552", 72) ;
    when others => return ext(X"00", 72) ;
  end case ;
  end ;
  subtype cmd_auth_op_e is std_logic_vector(3 downto 0) ;
  constant AUTH_NULL : cmd_auth_op_e := std_logic_vector'("0000") ;
  constant SHA2 : cmd_auth_op_e := std_logic_vector'("0001") ;
  constant HMAC_SHA2 : cmd_auth_op_e := std_logic_vector'("0010") ;
  constant AUTH_RSVD : cmd_auth_op_e := std_logic_vector'("1111") ;
  -- next() function DUMMY69 for enum type cmd_auth_op_e
  function DUMMY69 (__v : cmd_auth_op_e ; __n : integer) return cmd_auth_op_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when AUTH_NULL => posn := 0 ;
    when SHA2 => posn := 1 ;
    when HMAC_SHA2 => posn := 2 ;
    when AUTH_RSVD => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  case __m is
    when 0 => return AUTH_NULL ;
    when 1 => return SHA2 ;
    when 2 => return HMAC_SHA2 ;
    when 3 => return AUTH_RSVD ;
    when others => return SHA2 ;
  end case;
  end;
  -- prev() function DUMMY70 for enum type cmd_auth_op_e
  function DUMMY70 (__v : cmd_auth_op_e ; __n : integer) return cmd_auth_op_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when AUTH_RSVD => posn := 0 ;
    when HMAC_SHA2 => posn := 1 ;
    when SHA2 => posn := 2 ;
    when AUTH_NULL => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  case __m is
    when 0 => return AUTH_RSVD ;
    when 1 => return HMAC_SHA2 ;
    when 2 => return SHA2 ;
    when 3 => return AUTH_NULL ;
    when others => return AUTH_RSVD ;
  end case;
  end;
  -- name() function DUMMY71 for enum type cmd_auth_op_e
  function DUMMY71 (__v : cmd_auth_op_e) return std_logic_vector is
  begin
  case __v is
    when AUTH_NULL => return ext(X"415554485F4E554C4C", 72) ;
    when SHA2 => return ext(X"53484132", 72) ;
    when HMAC_SHA2 => return ext(X"484D41435F53484132", 72) ;
    when AUTH_RSVD => return ext(X"415554485F52535644", 72) ;
    when others => return ext(X"00", 72) ;
  end case ;
  end ;
  subtype cmd_cipher_op_e is std_logic_vector(3 downto 0) ;
  constant CPH_NULL : cmd_cipher_op_e := std_logic_vector'("0000") ;
  constant AES_GCM : cmd_cipher_op_e := std_logic_vector'("0001") ;
  constant AES_XTS_XEX : cmd_cipher_op_e := std_logic_vector'("0010") ;
  constant AES_GMAC : cmd_cipher_op_e := std_logic_vector'("0011") ;
  constant CPH_RSVD : cmd_cipher_op_e := std_logic_vector'("1111") ;
  -- next() function DUMMY72 for enum type cmd_cipher_op_e
  function DUMMY72 (__v : cmd_cipher_op_e ; __n : integer) return
   cmd_cipher_op_e is
  variable posn : integer range 0 to 4 := 0;
  variable __m : integer range 0 to 4 := 0;
  begin
  case __v is
    when CPH_NULL => posn := 0 ;
    when AES_GCM => posn := 1 ;
    when AES_XTS_XEX => posn := 2 ;
    when AES_GMAC => posn := 3 ;
    when CPH_RSVD => posn := 4 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 5 ;
  case __m is
    when 0 => return CPH_NULL ;
    when 1 => return AES_GCM ;
    when 2 => return AES_XTS_XEX ;
    when 3 => return AES_GMAC ;
    when 4 => return CPH_RSVD ;
    when others => return AES_GCM ;
  end case;
  end;
  -- prev() function DUMMY73 for enum type cmd_cipher_op_e
  function DUMMY73 (__v : cmd_cipher_op_e ; __n : integer) return
   cmd_cipher_op_e is
  variable posn : integer range 0 to 4 := 0;
  variable __m : integer range 0 to 4 := 0;
  begin
  case __v is
    when CPH_RSVD => posn := 0 ;
    when AES_GMAC => posn := 1 ;
    when AES_XTS_XEX => posn := 2 ;
    when AES_GCM => posn := 3 ;
    when CPH_NULL => posn := 4 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 5 ;
  case __m is
    when 0 => return CPH_RSVD ;
    when 1 => return AES_GMAC ;
    when 2 => return AES_XTS_XEX ;
    when 3 => return AES_GCM ;
    when 4 => return CPH_NULL ;
    when others => return CPH_RSVD ;
  end case;
  end;
  -- name() function DUMMY74 for enum type cmd_cipher_op_e
  function DUMMY74 (__v : cmd_cipher_op_e) return std_logic_vector is
  begin
  case __v is
    when CPH_NULL => return ext(X"4350485F4E554C4C", 88) ;
    when AES_GCM => return ext(X"4145535F47434D", 88) ;
    when AES_XTS_XEX => return ext(X"4145535F5854535F584558", 88) ;
    when AES_GMAC => return ext(X"4145535F474D4143", 88) ;
    when CPH_RSVD => return ext(X"4350485F52535644", 88) ;
    when others => return ext(X"00", 88) ;
  end case ;
  end ;
  subtype cmd_iv_src_e is std_logic_vector(1 downto 0) ;
  constant IV_NONE : cmd_iv_src_e := std_logic_vector'("00") ;
  constant IV_AUX_CMD : cmd_iv_src_e := std_logic_vector'("01") ;
  constant IV_KEYS : cmd_iv_src_e := std_logic_vector'("10") ;
  constant IV_AUX_FRMD : cmd_iv_src_e := std_logic_vector'("11") ;
  -- next() function DUMMY75 for enum type cmd_iv_src_e
  function DUMMY75 (__v : cmd_iv_src_e ; __n : integer) return cmd_iv_src_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when IV_NONE => posn := 0 ;
    when IV_AUX_CMD => posn := 1 ;
    when IV_KEYS => posn := 2 ;
    when IV_AUX_FRMD => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- prev() function DUMMY76 for enum type cmd_iv_src_e
  function DUMMY76 (__v : cmd_iv_src_e ; __n : integer) return cmd_iv_src_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when IV_NONE => posn := 0 ;
    when IV_AUX_CMD => posn := 1 ;
    when IV_KEYS => posn := 2 ;
    when IV_AUX_FRMD => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- name() function DUMMY77 for enum type cmd_iv_src_e
  function DUMMY77 (__v : cmd_iv_src_e) return std_logic_vector is
  begin
  case __v is
    when IV_NONE => return ext(X"49565F4E4F4E45", 88) ;
    when IV_AUX_CMD => return ext(X"49565F4155585F434D44", 88) ;
    when IV_KEYS => return ext(X"49565F4B455953", 88) ;
    when IV_AUX_FRMD => return ext(X"49565F4155585F46524D44", 88) ;
    when others => return ext(X"00", 88) ;
  end case ;
  end ;
  subtype cmd_iv_op_e is std_logic_vector(1 downto 0) ;
  constant IV_SRC : cmd_iv_op_e := std_logic_vector'("00") ;
  constant IV_RND : cmd_iv_op_e := std_logic_vector'("01") ;
  constant IV_INC : cmd_iv_op_e := std_logic_vector'("10") ;
  constant IV_RSV : cmd_iv_op_e := std_logic_vector'("11") ;
  -- next() function DUMMY78 for enum type cmd_iv_op_e
  function DUMMY78 (__v : cmd_iv_op_e ; __n : integer) return cmd_iv_op_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when IV_SRC => posn := 0 ;
    when IV_RND => posn := 1 ;
    when IV_INC => posn := 2 ;
    when IV_RSV => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- prev() function DUMMY79 for enum type cmd_iv_op_e
  function DUMMY79 (__v : cmd_iv_op_e ; __n : integer) return cmd_iv_op_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when IV_SRC => posn := 0 ;
    when IV_RND => posn := 1 ;
    when IV_INC => posn := 2 ;
    when IV_RSV => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- name() function DUMMY80 for enum type cmd_iv_op_e
  function DUMMY80 (__v : cmd_iv_op_e) return std_logic_vector is
  begin
  case __v is
    when IV_SRC => return ext(X"49565F535243", 48) ;
    when IV_RND => return ext(X"49565F524E44", 48) ;
    when IV_INC => return ext(X"49565F494E43", 48) ;
    when IV_RSV => return ext(X"49565F525356", 48) ;
    when others => return ext(X"00", 48) ;
  end case ;
  end ;
  subtype cmd_cipher_pad_e is std_logic ;
  constant NO_PAD : cmd_cipher_pad_e := std_logic'('0') ;
  constant PAD_16B : cmd_cipher_pad_e := std_logic'('1') ;
  -- next() function DUMMY81 for enum type cmd_cipher_pad_e
  function DUMMY81 (__v : cmd_cipher_pad_e ; __n : integer) return
   cmd_cipher_pad_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when NO_PAD => posn := 0 ;
    when PAD_16B => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY82 for enum type cmd_cipher_pad_e
  function DUMMY82 (__v : cmd_cipher_pad_e ; __n : integer) return
   cmd_cipher_pad_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when NO_PAD => posn := 0 ;
    when PAD_16B => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY83 for enum type cmd_cipher_pad_e
  function DUMMY83 (__v : cmd_cipher_pad_e) return std_logic_vector is
  begin
  case __v is
    when NO_PAD => return ext(X"4E4F5F504144", 56) ;
    when PAD_16B => return ext(X"5041445F313642", 56) ;
    when others => return ext(X"00", 56) ;
  end case ;
  end ;
  subtype cmd_digest_size_e is std_logic ;
  constant DGST_256 : cmd_digest_size_e := std_logic'('0') ;
  constant DGST_64 : cmd_digest_size_e := std_logic'('1') ;
  -- next() function DUMMY84 for enum type cmd_digest_size_e
  function DUMMY84 (__v : cmd_digest_size_e ; __n : integer) return
   cmd_digest_size_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when DGST_256 => posn := 0 ;
    when DGST_64 => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY85 for enum type cmd_digest_size_e
  function DUMMY85 (__v : cmd_digest_size_e ; __n : integer) return
   cmd_digest_size_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when DGST_256 => posn := 0 ;
    when DGST_64 => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY86 for enum type cmd_digest_size_e
  function DUMMY86 (__v : cmd_digest_size_e) return std_logic_vector is
  begin
  case __v is
    when DGST_256 => return ext(X"444753545F323536", 64) ;
    when DGST_64 => return ext(X"444753545F3634", 64) ;
    when others => return ext(X"00", 64) ;
  end case ;
  end ;
  subtype rqe_frame_type_e is std_logic ;
  constant SIMPLE : rqe_frame_type_e := std_logic'('0') ;
  constant COMPOUND : rqe_frame_type_e := std_logic'('1') ;
  -- next() function DUMMY87 for enum type rqe_frame_type_e
  function DUMMY87 (__v : rqe_frame_type_e ; __n : integer) return
   rqe_frame_type_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when SIMPLE => posn := 0 ;
    when COMPOUND => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY88 for enum type rqe_frame_type_e
  function DUMMY88 (__v : rqe_frame_type_e ; __n : integer) return
   rqe_frame_type_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when SIMPLE => posn := 0 ;
    when COMPOUND => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY89 for enum type rqe_frame_type_e
  function DUMMY89 (__v : rqe_frame_type_e) return std_logic_vector is
  begin
  case __v is
    when SIMPLE => return ext(X"53494D504C45", 64) ;
    when COMPOUND => return ext(X"434F4D504F554E44", 64) ;
    when others => return ext(X"00", 64) ;
  end case ;
  end ;
  subtype rqe_trace_e is std_logic ;
  constant TRACE_OFF : rqe_trace_e := std_logic'('0') ;
  constant TRACE_ON : rqe_trace_e := std_logic'('1') ;
  -- next() function DUMMY90 for enum type rqe_trace_e
  function DUMMY90 (__v : rqe_trace_e ; __n : integer) return rqe_trace_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when TRACE_OFF => posn := 0 ;
    when TRACE_ON => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY91 for enum type rqe_trace_e
  function DUMMY91 (__v : rqe_trace_e ; __n : integer) return rqe_trace_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when TRACE_OFF => posn := 0 ;
    when TRACE_ON => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY92 for enum type rqe_trace_e
  function DUMMY92 (__v : rqe_trace_e) return std_logic_vector is
  begin
  case __v is
    when TRACE_OFF => return ext(X"54524143455F4F4646", 72) ;
    when TRACE_ON => return ext(X"54524143455F4F4E", 72) ;
    when others => return ext(X"00", 72) ;
  end case ;
  end ;
  subtype rqe_frame_size_e is std_logic_vector(3 downto 0) ;
  constant RQE_SIMPLE : rqe_frame_size_e := std_logic_vector'("0000") ;
  constant RQE_COMPOUND_4K : rqe_frame_size_e := std_logic_vector'("0101") ;
  constant RQE_COMPOUND_8K : rqe_frame_size_e := std_logic_vector'("0110") ;
  constant RQE_RSV_FRAME_SIZE : rqe_frame_size_e := std_logic_vector'("1111") ;
  -- next() function DUMMY93 for enum type rqe_frame_size_e
  function DUMMY93 (__v : rqe_frame_size_e ; __n : integer) return
   rqe_frame_size_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when RQE_SIMPLE => posn := 0 ;
    when RQE_COMPOUND_4K => posn := 1 ;
    when RQE_COMPOUND_8K => posn := 2 ;
    when RQE_RSV_FRAME_SIZE => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  case __m is
    when 0 => return RQE_SIMPLE ;
    when 1 => return RQE_COMPOUND_4K ;
    when 2 => return RQE_COMPOUND_8K ;
    when 3 => return RQE_RSV_FRAME_SIZE ;
    when others => return RQE_COMPOUND_4K ;
  end case;
  end;
  -- prev() function DUMMY94 for enum type rqe_frame_size_e
  function DUMMY94 (__v : rqe_frame_size_e ; __n : integer) return
   rqe_frame_size_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when RQE_RSV_FRAME_SIZE => posn := 0 ;
    when RQE_COMPOUND_8K => posn := 1 ;
    when RQE_COMPOUND_4K => posn := 2 ;
    when RQE_SIMPLE => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  case __m is
    when 0 => return RQE_RSV_FRAME_SIZE ;
    when 1 => return RQE_COMPOUND_8K ;
    when 2 => return RQE_COMPOUND_4K ;
    when 3 => return RQE_SIMPLE ;
    when others => return RQE_RSV_FRAME_SIZE ;
  end case;
  end;
  -- name() function DUMMY95 for enum type rqe_frame_size_e
  function DUMMY95 (__v : rqe_frame_size_e) return std_logic_vector is
  begin
  case __v is
    when RQE_SIMPLE => return ext(X"5251455F53494D504C45", 144) ;
    when RQE_COMPOUND_4K => return ext(X"5251455F434F4D504F554E445F344B", 144) ;
    when RQE_COMPOUND_8K => return ext(X"5251455F434F4D504F554E445F384B", 144) ;
    when RQE_RSV_FRAME_SIZE => return ext
    (X"5251455F5253565F4652414D455F53495A45", 144) ;
    when others => return ext(X"00", 144) ;
  end case ;
  end ;
  subtype frmd_coding_e is std_logic_vector(1 downto 0) ;
  constant RAW : frmd_coding_e := std_logic_vector'("01") ;
  constant PARSEABLE : frmd_coding_e := std_logic_vector'("00") ;
  constant XP10CFH4K : frmd_coding_e := std_logic_vector'("10") ;
  constant XP10CFH8K : frmd_coding_e := std_logic_vector'("11") ;
  -- next() function DUMMY96 for enum type frmd_coding_e
  function DUMMY96 (__v : frmd_coding_e ; __n : integer) return frmd_coding_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when RAW => posn := 0 ;
    when PARSEABLE => posn := 1 ;
    when XP10CFH4K => posn := 2 ;
    when XP10CFH8K => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  case __m is
    when 0 => return RAW ;
    when 1 => return PARSEABLE ;
    when 2 => return XP10CFH4K ;
    when 3 => return XP10CFH8K ;
    when others => return PARSEABLE ;
  end case;
  end;
  -- prev() function DUMMY97 for enum type frmd_coding_e
  function DUMMY97 (__v : frmd_coding_e ; __n : integer) return frmd_coding_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when XP10CFH8K => posn := 0 ;
    when XP10CFH4K => posn := 1 ;
    when PARSEABLE => posn := 2 ;
    when RAW => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  case __m is
    when 0 => return XP10CFH8K ;
    when 1 => return XP10CFH4K ;
    when 2 => return PARSEABLE ;
    when 3 => return RAW ;
    when others => return XP10CFH8K ;
  end case;
  end;
  -- name() function DUMMY98 for enum type frmd_coding_e
  function DUMMY98 (__v : frmd_coding_e) return std_logic_vector is
  begin
  case __v is
    when RAW => return ext(X"524157", 72) ;
    when PARSEABLE => return ext(X"504152534541424C45", 72) ;
    when XP10CFH4K => return ext(X"58503130434648344B", 72) ;
    when XP10CFH8K => return ext(X"58503130434648384B", 72) ;
    when others => return ext(X"00", 72) ;
  end case ;
  end ;
  subtype frmd_mac_size_e is std_logic_vector(1 downto 0) ;
  constant DIGEST_64B : frmd_mac_size_e := std_logic_vector'("00") ;
  constant DIGEST_128B : frmd_mac_size_e := std_logic_vector'("01") ;
  constant DIGEST_256B : frmd_mac_size_e := std_logic_vector'("10") ;
  constant DIGEST_0B : frmd_mac_size_e := std_logic_vector'("11") ;
  -- next() function DUMMY99 for enum type frmd_mac_size_e
  function DUMMY99 (__v : frmd_mac_size_e ; __n : integer) return
   frmd_mac_size_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when DIGEST_64B => posn := 0 ;
    when DIGEST_128B => posn := 1 ;
    when DIGEST_256B => posn := 2 ;
    when DIGEST_0B => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- prev() function DUMMY100 for enum type frmd_mac_size_e
  function DUMMY100 (__v : frmd_mac_size_e ; __n : integer) return
   frmd_mac_size_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when DIGEST_64B => posn := 0 ;
    when DIGEST_128B => posn := 1 ;
    when DIGEST_256B => posn := 2 ;
    when DIGEST_0B => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- name() function DUMMY101 for enum type frmd_mac_size_e
  function DUMMY101 (__v : frmd_mac_size_e) return std_logic_vector is
  begin
  case __v is
    when DIGEST_64B => return ext(X"4449474553545F363442", 88) ;
    when DIGEST_128B => return ext(X"4449474553545F31323842", 88) ;
    when DIGEST_256B => return ext(X"4449474553545F32353642", 88) ;
    when DIGEST_0B => return ext(X"4449474553545F3042", 88) ;
    when others => return ext(X"00", 88) ;
  end case ;
  end ;
  subtype tlv_parse_action_e is std_logic_vector(1 downto 0) ;
  constant REP : tlv_parse_action_e := std_logic_vector'("00") ;
  constant PASS : tlv_parse_action_e := std_logic_vector'("01") ;
  constant MODIFY : tlv_parse_action_e := std_logic_vector'("10") ;
  constant DELETE : tlv_parse_action_e := std_logic_vector'("11") ;
  -- next() function DUMMY102 for enum type tlv_parse_action_e
  function DUMMY102 (__v : tlv_parse_action_e ; __n : integer) return
   tlv_parse_action_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when REP => posn := 0 ;
    when PASS => posn := 1 ;
    when MODIFY => posn := 2 ;
    when DELETE => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- prev() function DUMMY103 for enum type tlv_parse_action_e
  function DUMMY103 (__v : tlv_parse_action_e ; __n : integer) return
   tlv_parse_action_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when REP => posn := 0 ;
    when PASS => posn := 1 ;
    when MODIFY => posn := 2 ;
    when DELETE => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- name() function DUMMY104 for enum type tlv_parse_action_e
  function DUMMY104 (__v : tlv_parse_action_e) return std_logic_vector is
  begin
  case __v is
    when REP => return ext(X"524550", 48) ;
    when PASS => return ext(X"50415353", 48) ;
    when MODIFY => return ext(X"4D4F44494659", 48) ;
    when DELETE => return ext(X"44454C455445", 48) ;
    when others => return ext(X"00", 48) ;
  end case ;
  end ;
  subtype tlvp_corrupt_e is std_logic ;
  constant USER : tlvp_corrupt_e := std_logic'('0') ;
  constant TLVP : tlvp_corrupt_e := std_logic'('1') ;
  -- next() function DUMMY105 for enum type tlvp_corrupt_e
  function DUMMY105 (__v : tlvp_corrupt_e ; __n : integer) return tlvp_corrupt_e
   is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when USER => posn := 0 ;
    when TLVP => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY106 for enum type tlvp_corrupt_e
  function DUMMY106 (__v : tlvp_corrupt_e ; __n : integer) return tlvp_corrupt_e
   is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when USER => posn := 0 ;
    when TLVP => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY107 for enum type tlvp_corrupt_e
  function DUMMY107 (__v : tlvp_corrupt_e) return std_logic_vector is
  begin
  case __v is
    when USER => return ext(X"55534552", 32) ;
    when TLVP => return ext(X"544C5650", 32) ;
    when others => return ext(X"00", 32) ;
  end case ;
  end ;
  subtype cmd_type_e is std_logic ;
  constant DATAPATH_CORRUPT : cmd_type_e := std_logic'('0') ;
  constant FUNCTIONAL_ERROR : cmd_type_e := std_logic'('1') ;
  -- next() function DUMMY108 for enum type cmd_type_e
  function DUMMY108 (__v : cmd_type_e ; __n : integer) return cmd_type_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when DATAPATH_CORRUPT => posn := 0 ;
    when FUNCTIONAL_ERROR => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY109 for enum type cmd_type_e
  function DUMMY109 (__v : cmd_type_e ; __n : integer) return cmd_type_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when DATAPATH_CORRUPT => posn := 0 ;
    when FUNCTIONAL_ERROR => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY110 for enum type cmd_type_e
  function DUMMY110 (__v : cmd_type_e) return std_logic_vector is
  begin
  case __v is
    when DATAPATH_CORRUPT => return ext(X"44415441504154485F434F5252555054", 128
    ) ;
    when FUNCTIONAL_ERROR => return ext(X"46554E4354494F4E414C5F4552524F52", 128
    ) ;
    when others => return ext(X"00", 128) ;
  end case ;
  end ;
  subtype cmd_mode_e is std_logic_vector(1 downto 0) ;
  constant SINGLE_ERR : cmd_mode_e := std_logic_vector'("00") ;
  constant CONTINUOUS_ERROR : cmd_mode_e := std_logic_vector'("01") ;
  constant STOP : cmd_mode_e := std_logic_vector'("10") ;
  constant EOT : cmd_mode_e := std_logic_vector'("11") ;
  -- next() function DUMMY111 for enum type cmd_mode_e
  function DUMMY111 (__v : cmd_mode_e ; __n : integer) return cmd_mode_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when SINGLE_ERR => posn := 0 ;
    when CONTINUOUS_ERROR => posn := 1 ;
    when STOP => posn := 2 ;
    when EOT => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- prev() function DUMMY112 for enum type cmd_mode_e
  function DUMMY112 (__v : cmd_mode_e ; __n : integer) return cmd_mode_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when SINGLE_ERR => posn := 0 ;
    when CONTINUOUS_ERROR => posn := 1 ;
    when STOP => posn := 2 ;
    when EOT => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- name() function DUMMY113 for enum type cmd_mode_e
  function DUMMY113 (__v : cmd_mode_e) return std_logic_vector is
  begin
  case __v is
    when SINGLE_ERR => return ext(X"53494E474C455F455252", 128) ;
    when CONTINUOUS_ERROR => return ext(X"434F4E54494E554F55535F4552524F52", 128
    ) ;
    when STOP => return ext(X"53544F50", 128) ;
    when EOT => return ext(X"454F54", 128) ;
    when others => return ext(X"00", 128) ;
  end case ;
  end ;
  subtype aux_key_type_e is std_logic_vector(5 downto 0) ;
  constant NO_AUX_KEY : aux_key_type_e := std_logic_vector'("000000") ;
  constant AUX_KEY_ONLY : aux_key_type_e := std_logic_vector'("000001") ;
  constant DEK256 : aux_key_type_e := std_logic_vector'("000010") ;
  constant DEK512 : aux_key_type_e := std_logic_vector'("000011") ;
  constant DAK : aux_key_type_e := std_logic_vector'("000100") ;
  constant DEK256_DAK : aux_key_type_e := std_logic_vector'("000101") ;
  constant DEK512_DAK : aux_key_type_e := std_logic_vector'("000110") ;
  constant ENC_DEK256 : aux_key_type_e := std_logic_vector'("000111") ;
  constant ENC_DEK512 : aux_key_type_e := std_logic_vector'("001000") ;
  constant ENC_DAK : aux_key_type_e := std_logic_vector'("001001") ;
  constant ENC_DEK256_DAK : aux_key_type_e := std_logic_vector'("001010") ;
  constant ENC_DEK512_DAK : aux_key_type_e := std_logic_vector'("001011") ;
  constant ENC_DEK256_DAK_COMB : aux_key_type_e := std_logic_vector'("001100") ;
  constant ENC_DEK512_DAK_COMB : aux_key_type_e := std_logic_vector'("001101") ;
  constant KEY_TYPE_RSV : aux_key_type_e := std_logic_vector'("111111") ;
  -- next() function DUMMY114 for enum type aux_key_type_e
  function DUMMY114 (__v : aux_key_type_e ; __n : integer) return aux_key_type_e
   is
  variable posn : integer range 0 to 14 := 0;
  variable __m : integer range 0 to 14 := 0;
  begin
  case __v is
    when NO_AUX_KEY => posn := 0 ;
    when AUX_KEY_ONLY => posn := 1 ;
    when DEK256 => posn := 2 ;
    when DEK512 => posn := 3 ;
    when DAK => posn := 4 ;
    when DEK256_DAK => posn := 5 ;
    when DEK512_DAK => posn := 6 ;
    when ENC_DEK256 => posn := 7 ;
    when ENC_DEK512 => posn := 8 ;
    when ENC_DAK => posn := 9 ;
    when ENC_DEK256_DAK => posn := 10 ;
    when ENC_DEK512_DAK => posn := 11 ;
    when ENC_DEK256_DAK_COMB => posn := 12 ;
    when ENC_DEK512_DAK_COMB => posn := 13 ;
    when KEY_TYPE_RSV => posn := 14 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 15 ;
  case __m is
    when 0 => return NO_AUX_KEY ;
    when 1 => return AUX_KEY_ONLY ;
    when 2 => return DEK256 ;
    when 3 => return DEK512 ;
    when 4 => return DAK ;
    when 5 => return DEK256_DAK ;
    when 6 => return DEK512_DAK ;
    when 7 => return ENC_DEK256 ;
    when 8 => return ENC_DEK512 ;
    when 9 => return ENC_DAK ;
    when 10 => return ENC_DEK256_DAK ;
    when 11 => return ENC_DEK512_DAK ;
    when 12 => return ENC_DEK256_DAK_COMB ;
    when 13 => return ENC_DEK512_DAK_COMB ;
    when 14 => return KEY_TYPE_RSV ;
    when others => return AUX_KEY_ONLY ;
  end case;
  end;
  -- prev() function DUMMY115 for enum type aux_key_type_e
  function DUMMY115 (__v : aux_key_type_e ; __n : integer) return aux_key_type_e
   is
  variable posn : integer range 0 to 14 := 0;
  variable __m : integer range 0 to 14 := 0;
  begin
  case __v is
    when KEY_TYPE_RSV => posn := 0 ;
    when ENC_DEK512_DAK_COMB => posn := 1 ;
    when ENC_DEK256_DAK_COMB => posn := 2 ;
    when ENC_DEK512_DAK => posn := 3 ;
    when ENC_DEK256_DAK => posn := 4 ;
    when ENC_DAK => posn := 5 ;
    when ENC_DEK512 => posn := 6 ;
    when ENC_DEK256 => posn := 7 ;
    when DEK512_DAK => posn := 8 ;
    when DEK256_DAK => posn := 9 ;
    when DAK => posn := 10 ;
    when DEK512 => posn := 11 ;
    when DEK256 => posn := 12 ;
    when AUX_KEY_ONLY => posn := 13 ;
    when NO_AUX_KEY => posn := 14 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 15 ;
  case __m is
    when 0 => return KEY_TYPE_RSV ;
    when 1 => return ENC_DEK512_DAK_COMB ;
    when 2 => return ENC_DEK256_DAK_COMB ;
    when 3 => return ENC_DEK512_DAK ;
    when 4 => return ENC_DEK256_DAK ;
    when 5 => return ENC_DAK ;
    when 6 => return ENC_DEK512 ;
    when 7 => return ENC_DEK256 ;
    when 8 => return DEK512_DAK ;
    when 9 => return DEK256_DAK ;
    when 10 => return DAK ;
    when 11 => return DEK512 ;
    when 12 => return DEK256 ;
    when 13 => return AUX_KEY_ONLY ;
    when 14 => return NO_AUX_KEY ;
    when others => return KEY_TYPE_RSV ;
  end case;
  end;
  -- name() function DUMMY116 for enum type aux_key_type_e
  function DUMMY116 (__v : aux_key_type_e) return std_logic_vector is
  begin
  case __v is
    when NO_AUX_KEY => return ext(X"4E4F5F4155585F4B4559", 152) ;
    when AUX_KEY_ONLY => return ext(X"4155585F4B45595F4F4E4C59", 152) ;
    when DEK256 => return ext(X"44454B323536", 152) ;
    when DEK512 => return ext(X"44454B353132", 152) ;
    when DAK => return ext(X"44414B", 152) ;
    when DEK256_DAK => return ext(X"44454B3235365F44414B", 152) ;
    when DEK512_DAK => return ext(X"44454B3531325F44414B", 152) ;
    when ENC_DEK256 => return ext(X"454E435F44454B323536", 152) ;
    when ENC_DEK512 => return ext(X"454E435F44454B353132", 152) ;
    when ENC_DAK => return ext(X"454E435F44414B", 152) ;
    when ENC_DEK256_DAK => return ext(X"454E435F44454B3235365F44414B", 152) ;
    when ENC_DEK512_DAK => return ext(X"454E435F44454B3531325F44414B", 152) ;
    when ENC_DEK256_DAK_COMB => return ext
    (X"454E435F44454B3235365F44414B5F434F4D42", 152) ;
    when ENC_DEK512_DAK_COMB => return ext
    (X"454E435F44454B3531325F44414B5F434F4D42", 152) ;
    when KEY_TYPE_RSV => return ext(X"4B45595F545950455F525356", 152) ;
    when others => return ext(X"00", 152) ;
  end case ;
  end ;
  subtype aux_key_op_e is std_logic ;
  constant NOOP : aux_key_op_e := std_logic'('0') ;
  constant KDF : aux_key_op_e := std_logic'('1') ;
  -- next() function DUMMY117 for enum type aux_key_op_e
  function DUMMY117 (__v : aux_key_op_e ; __n : integer) return aux_key_op_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when NOOP => posn := 0 ;
    when KDF => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY118 for enum type aux_key_op_e
  function DUMMY118 (__v : aux_key_op_e ; __n : integer) return aux_key_op_e is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when NOOP => posn := 0 ;
    when KDF => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY119 for enum type aux_key_op_e
  function DUMMY119 (__v : aux_key_op_e) return std_logic_vector is
  begin
  case __v is
    when NOOP => return ext(X"4E4F4F50", 32) ;
    when KDF => return ext(X"4B4446", 32) ;
    when others => return ext(X"00", 32) ;
  end case ;
  end ;
  subtype aux_kdf_mode_e is std_logic_vector(1 downto 0) ;
  constant KDF_MODE_GUID : aux_kdf_mode_e := std_logic_vector'("00") ;
  constant KDF_MODE_RGUID : aux_kdf_mode_e := std_logic_vector'("01") ;
  constant KDF_MODE_COMB_GUID : aux_kdf_mode_e := std_logic_vector'("10") ;
  constant KDF_MODE_COMB_RGUID : aux_kdf_mode_e := std_logic_vector'("11") ;
  -- next() function DUMMY120 for enum type aux_kdf_mode_e
  function DUMMY120 (__v : aux_kdf_mode_e ; __n : integer) return aux_kdf_mode_e
   is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when KDF_MODE_GUID => posn := 0 ;
    when KDF_MODE_RGUID => posn := 1 ;
    when KDF_MODE_COMB_GUID => posn := 2 ;
    when KDF_MODE_COMB_RGUID => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- prev() function DUMMY121 for enum type aux_kdf_mode_e
  function DUMMY121 (__v : aux_kdf_mode_e ; __n : integer) return aux_kdf_mode_e
   is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when KDF_MODE_GUID => posn := 0 ;
    when KDF_MODE_RGUID => posn := 1 ;
    when KDF_MODE_COMB_GUID => posn := 2 ;
    when KDF_MODE_COMB_RGUID => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- name() function DUMMY122 for enum type aux_kdf_mode_e
  function DUMMY122 (__v : aux_kdf_mode_e) return std_logic_vector is
  begin
  case __v is
    when KDF_MODE_GUID => return ext(X"4B44465F4D4F44455F47554944", 152) ;
    when KDF_MODE_RGUID => return ext(X"4B44465F4D4F44455F5247554944", 152) ;
    when KDF_MODE_COMB_GUID => return ext
    (X"4B44465F4D4F44455F434F4D425F47554944", 152) ;
    when KDF_MODE_COMB_RGUID => return ext
    (X"4B44465F4D4F44455F434F4D425F5247554944", 152) ;
    when others => return ext(X"00", 152) ;
  end case ;
  end ;
  subtype ia_operation_e is std_logic_vector(3 downto 0) ;
  constant NOP : ia_operation_e := std_logic_vector'("0000") ;
  constant READ : ia_operation_e := std_logic_vector'("0001") ;
  constant WRITE : ia_operation_e := std_logic_vector'("0010") ;
  constant ENABLE : ia_operation_e := std_logic_vector'("0011") ;
  constant DISABLED : ia_operation_e := std_logic_vector'("0100") ;
  constant RESET : ia_operation_e := std_logic_vector'("0101") ;
  constant INITIALIZE : ia_operation_e := std_logic_vector'("0110") ;
  constant INITIALIZE_INC : ia_operation_e := std_logic_vector'("0111") ;
  constant SET_INI_START : ia_operation_e := std_logic_vector'("1000") ;
  constant COMPARE : ia_operation_e := std_logic_vector'("1001") ;
  constant SIM_TMO : ia_operation_e := std_logic_vector'("1110") ;
  constant ACK_ERROR : ia_operation_e := std_logic_vector'("1111") ;
  -- next() function DUMMY123 for enum type ia_operation_e
  function DUMMY123 (__v : ia_operation_e ; __n : integer) return ia_operation_e
   is
  variable posn : integer range 0 to 11 := 0;
  variable __m : integer range 0 to 11 := 0;
  begin
  case __v is
    when NOP => posn := 0 ;
    when READ => posn := 1 ;
    when WRITE => posn := 2 ;
    when ENABLE => posn := 3 ;
    when DISABLED => posn := 4 ;
    when RESET => posn := 5 ;
    when INITIALIZE => posn := 6 ;
    when INITIALIZE_INC => posn := 7 ;
    when SET_INI_START => posn := 8 ;
    when COMPARE => posn := 9 ;
    when SIM_TMO => posn := 10 ;
    when ACK_ERROR => posn := 11 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 12 ;
  case __m is
    when 0 => return NOP ;
    when 1 => return READ ;
    when 2 => return WRITE ;
    when 3 => return ENABLE ;
    when 4 => return DISABLED ;
    when 5 => return RESET ;
    when 6 => return INITIALIZE ;
    when 7 => return INITIALIZE_INC ;
    when 8 => return SET_INI_START ;
    when 9 => return COMPARE ;
    when 10 => return SIM_TMO ;
    when 11 => return ACK_ERROR ;
    when others => return READ ;
  end case;
  end;
  -- prev() function DUMMY124 for enum type ia_operation_e
  function DUMMY124 (__v : ia_operation_e ; __n : integer) return ia_operation_e
   is
  variable posn : integer range 0 to 11 := 0;
  variable __m : integer range 0 to 11 := 0;
  begin
  case __v is
    when ACK_ERROR => posn := 0 ;
    when SIM_TMO => posn := 1 ;
    when COMPARE => posn := 2 ;
    when SET_INI_START => posn := 3 ;
    when INITIALIZE_INC => posn := 4 ;
    when INITIALIZE => posn := 5 ;
    when RESET => posn := 6 ;
    when DISABLED => posn := 7 ;
    when ENABLE => posn := 8 ;
    when WRITE => posn := 9 ;
    when READ => posn := 10 ;
    when NOP => posn := 11 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 12 ;
  case __m is
    when 0 => return ACK_ERROR ;
    when 1 => return SIM_TMO ;
    when 2 => return COMPARE ;
    when 3 => return SET_INI_START ;
    when 4 => return INITIALIZE_INC ;
    when 5 => return INITIALIZE ;
    when 6 => return RESET ;
    when 7 => return DISABLED ;
    when 8 => return ENABLE ;
    when 9 => return WRITE ;
    when 10 => return READ ;
    when 11 => return NOP ;
    when others => return ACK_ERROR ;
  end case;
  end;
  -- name() function DUMMY125 for enum type ia_operation_e
  function DUMMY125 (__v : ia_operation_e) return std_logic_vector is
  begin
  case __v is
    when NOP => return ext(X"4E4F50", 112) ;
    when READ => return ext(X"52454144", 112) ;
    when WRITE => return ext(X"5752495445", 112) ;
    when ENABLE => return ext(X"454E41424C45", 112) ;
    when DISABLED => return ext(X"44495341424C4544", 112) ;
    when RESET => return ext(X"5245534554", 112) ;
    when INITIALIZE => return ext(X"494E495449414C495A45", 112) ;
    when INITIALIZE_INC => return ext(X"494E495449414C495A455F494E43", 112) ;
    when SET_INI_START => return ext(X"5345545F494E495F5354415254", 112) ;
    when COMPARE => return ext(X"434F4D50415245", 112) ;
    when SIM_TMO => return ext(X"53494D5F544D4F", 112) ;
    when ACK_ERROR => return ext(X"41434B5F4552524F52", 112) ;
    when others => return ext(X"00", 112) ;
  end case ;
  end ;
  subtype ia_status_e is std_logic_vector(2 downto 0) ;
  constant READY : ia_status_e := std_logic_vector'("000") ;
  constant BUSY : ia_status_e := std_logic_vector'("001") ;
  constant TMO : ia_status_e := std_logic_vector'("010") ;
  constant OVR : ia_status_e := std_logic_vector'("011") ;
  constant NXM : ia_status_e := std_logic_vector'("100") ;
  constant UOP : ia_status_e := std_logic_vector'("101") ;
  constant PDN : ia_status_e := std_logic_vector'("111") ;
  -- next() function DUMMY126 for enum type ia_status_e
  function DUMMY126 (__v : ia_status_e ; __n : integer) return ia_status_e is
  variable posn : integer range 0 to 6 := 0;
  variable __m : integer range 0 to 6 := 0;
  begin
  case __v is
    when READY => posn := 0 ;
    when BUSY => posn := 1 ;
    when TMO => posn := 2 ;
    when OVR => posn := 3 ;
    when NXM => posn := 4 ;
    when UOP => posn := 5 ;
    when PDN => posn := 6 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 7 ;
  case __m is
    when 0 => return READY ;
    when 1 => return BUSY ;
    when 2 => return TMO ;
    when 3 => return OVR ;
    when 4 => return NXM ;
    when 5 => return UOP ;
    when 6 => return PDN ;
    when others => return BUSY ;
  end case;
  end;
  -- prev() function DUMMY127 for enum type ia_status_e
  function DUMMY127 (__v : ia_status_e ; __n : integer) return ia_status_e is
  variable posn : integer range 0 to 6 := 0;
  variable __m : integer range 0 to 6 := 0;
  begin
  case __v is
    when PDN => posn := 0 ;
    when UOP => posn := 1 ;
    when NXM => posn := 2 ;
    when OVR => posn := 3 ;
    when TMO => posn := 4 ;
    when BUSY => posn := 5 ;
    when READY => posn := 6 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 7 ;
  case __m is
    when 0 => return PDN ;
    when 1 => return UOP ;
    when 2 => return NXM ;
    when 3 => return OVR ;
    when 4 => return TMO ;
    when 5 => return BUSY ;
    when 6 => return READY ;
    when others => return PDN ;
  end case;
  end;
  -- name() function DUMMY128 for enum type ia_status_e
  function DUMMY128 (__v : ia_status_e) return std_logic_vector is
  begin
  case __v is
    when READY => return ext(X"5245414459", 40) ;
    when BUSY => return ext(X"42555359", 40) ;
    when TMO => return ext(X"544D4F", 40) ;
    when OVR => return ext(X"4F5652", 40) ;
    when NXM => return ext(X"4E584D", 40) ;
    when UOP => return ext(X"554F50", 40) ;
    when PDN => return ext(X"50444E", 40) ;
    when others => return ext(X"00", 40) ;
  end case ;
  end ;
  subtype mem_type_e is std_logic_vector(3 downto 0) ;
  constant SPRAM : mem_type_e := std_logic_vector'("0000") ;
  constant SRFRAM : mem_type_e := std_logic_vector'("0001") ;
  constant REG : mem_type_e := std_logic_vector'("0010") ;
  constant TCAM : mem_type_e := std_logic_vector'("0011") ;
  constant MEM_TYPE_4 : mem_type_e := std_logic_vector'("0100") ;
  constant MEM_TYPE_5 : mem_type_e := std_logic_vector'("0101") ;
  constant MEM_TYPE_6 : mem_type_e := std_logic_vector'("0110") ;
  constant MEM_TYPE_7 : mem_type_e := std_logic_vector'("0111") ;
  constant MEM_TYPE_8 : mem_type_e := std_logic_vector'("1000") ;
  constant MEM_TYPE_9 : mem_type_e := std_logic_vector'("1001") ;
  constant MEM_TYPE_10 : mem_type_e := std_logic_vector'("1010") ;
  constant MEM_TYPE_11 : mem_type_e := std_logic_vector'("1011") ;
  constant MEM_TYPE_12 : mem_type_e := std_logic_vector'("1100") ;
  constant MEM_TYPE_13 : mem_type_e := std_logic_vector'("1101") ;
  constant MEM_TYPE_14 : mem_type_e := std_logic_vector'("1110") ;
  constant MEM_TYPE_15 : mem_type_e := std_logic_vector'("1111") ;
  -- next() function DUMMY129 for enum type mem_type_e
  function DUMMY129 (__v : mem_type_e ; __n : integer) return mem_type_e is
  variable posn : integer range 0 to 15 := 0;
  variable __m : integer range 0 to 15 := 0;
  begin
  case __v is
    when SPRAM => posn := 0 ;
    when SRFRAM => posn := 1 ;
    when REG => posn := 2 ;
    when TCAM => posn := 3 ;
    when MEM_TYPE_4 => posn := 4 ;
    when MEM_TYPE_5 => posn := 5 ;
    when MEM_TYPE_6 => posn := 6 ;
    when MEM_TYPE_7 => posn := 7 ;
    when MEM_TYPE_8 => posn := 8 ;
    when MEM_TYPE_9 => posn := 9 ;
    when MEM_TYPE_10 => posn := 10 ;
    when MEM_TYPE_11 => posn := 11 ;
    when MEM_TYPE_12 => posn := 12 ;
    when MEM_TYPE_13 => posn := 13 ;
    when MEM_TYPE_14 => posn := 14 ;
    when MEM_TYPE_15 => posn := 15 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 16 ;
  return integer_to_std(__m,4) ;
  end;
  -- prev() function DUMMY130 for enum type mem_type_e
  function DUMMY130 (__v : mem_type_e ; __n : integer) return mem_type_e is
  variable posn : integer range 0 to 15 := 0;
  variable __m : integer range 0 to 15 := 0;
  begin
  case __v is
    when SPRAM => posn := 0 ;
    when SRFRAM => posn := 1 ;
    when REG => posn := 2 ;
    when TCAM => posn := 3 ;
    when MEM_TYPE_4 => posn := 4 ;
    when MEM_TYPE_5 => posn := 5 ;
    when MEM_TYPE_6 => posn := 6 ;
    when MEM_TYPE_7 => posn := 7 ;
    when MEM_TYPE_8 => posn := 8 ;
    when MEM_TYPE_9 => posn := 9 ;
    when MEM_TYPE_10 => posn := 10 ;
    when MEM_TYPE_11 => posn := 11 ;
    when MEM_TYPE_12 => posn := 12 ;
    when MEM_TYPE_13 => posn := 13 ;
    when MEM_TYPE_14 => posn := 14 ;
    when MEM_TYPE_15 => posn := 15 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 16 ;
  return integer_to_std(__m,4) ;
  end;
  -- name() function DUMMY131 for enum type mem_type_e
  function DUMMY131 (__v : mem_type_e) return std_logic_vector is
  begin
  case __v is
    when SPRAM => return ext(X"535052414D", 88) ;
    when SRFRAM => return ext(X"53524652414D", 88) ;
    when REG => return ext(X"524547", 88) ;
    when TCAM => return ext(X"5443414D", 88) ;
    when MEM_TYPE_4 => return ext(X"4D454D5F545950455F34", 88) ;
    when MEM_TYPE_5 => return ext(X"4D454D5F545950455F35", 88) ;
    when MEM_TYPE_6 => return ext(X"4D454D5F545950455F36", 88) ;
    when MEM_TYPE_7 => return ext(X"4D454D5F545950455F37", 88) ;
    when MEM_TYPE_8 => return ext(X"4D454D5F545950455F38", 88) ;
    when MEM_TYPE_9 => return ext(X"4D454D5F545950455F39", 88) ;
    when MEM_TYPE_10 => return ext(X"4D454D5F545950455F3130", 88) ;
    when MEM_TYPE_11 => return ext(X"4D454D5F545950455F3131", 88) ;
    when MEM_TYPE_12 => return ext(X"4D454D5F545950455F3132", 88) ;
    when MEM_TYPE_13 => return ext(X"4D454D5F545950455F3133", 88) ;
    when MEM_TYPE_14 => return ext(X"4D454D5F545950455F3134", 88) ;
    when MEM_TYPE_15 => return ext(X"4D454D5F545950455F3135", 88) ;
    when others => return ext(X"00", 88) ;
  end case ;
  end ;
  subtype im_mode_e is std_logic_vector(1 downto 0) ;
  constant START : im_mode_e := std_logic_vector'("00") ;
  constant DUMMY132 : im_mode_e := std_logic_vector'("01") ;
  constant CONTINUOUS : im_mode_e := std_logic_vector'("10") ;
  constant OFF : im_mode_e := std_logic_vector'("11") ;
  -- next() function DUMMY133 for enum type im_mode_e
  function DUMMY133 (__v : im_mode_e ; __n : integer) return im_mode_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when START => posn := 0 ;
    when DUMMY132 => posn := 1 ;
    when CONTINUOUS => posn := 2 ;
    when OFF => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- prev() function DUMMY134 for enum type im_mode_e
  function DUMMY134 (__v : im_mode_e ; __n : integer) return im_mode_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when START => posn := 0 ;
    when DUMMY132 => posn := 1 ;
    when CONTINUOUS => posn := 2 ;
    when OFF => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,2) ;
  end;
  -- name() function DUMMY135 for enum type im_mode_e
  function DUMMY135 (__v : im_mode_e) return std_logic_vector is
  begin
  case __v is
    when START => return ext(X"5354415254", 80) ;
    when DUMMY132 => return ext(X"454E44", 80) ;
    when CONTINUOUS => return ext(X"434F4E54494E554F5553", 80) ;
    when OFF => return ext(X"4F4646", 80) ;
    when others => return ext(X"00", 80) ;
  end case ;
  end ;
  subtype address_e is std_logic_vector(10 downto 0) ;
  constant BLKID_REVID_CONFIG : address_e := std_logic_vector'("00000000000") ;
  constant REVISION_CONFIG : address_e := std_logic_vector'("00000000100") ;
  constant SPARE_CONFIG : address_e := std_logic_vector'("00000001000") ;
  constant CCEIP0_OUT_IA_CAPABILITY : address_e := std_logic_vector'
  ("00000001100") ;
  constant CCEIP0_OUT_IA_STATUS : address_e := std_logic_vector'("00000010000")
   ;
  constant CCEIP0_OUT_IA_WDATA_PART0 : address_e := std_logic_vector'
  ("00000010100") ;
  constant CCEIP0_OUT_IA_WDATA_PART1 : address_e := std_logic_vector'
  ("00000011000") ;
  constant CCEIP0_OUT_IA_WDATA_PART2 : address_e := std_logic_vector'
  ("00000011100") ;
  constant CCEIP0_OUT_IA_CONFIG : address_e := std_logic_vector'("00000100000")
   ;
  constant CCEIP0_OUT_IA_RDATA_PART0 : address_e := std_logic_vector'
  ("00000100100") ;
  constant CCEIP0_OUT_IA_RDATA_PART1 : address_e := std_logic_vector'
  ("00000101000") ;
  constant CCEIP0_OUT_IA_RDATA_PART2 : address_e := std_logic_vector'
  ("00000101100") ;
  constant CCEIP0_OUT_IM_CONFIG : address_e := std_logic_vector'("00000110000")
   ;
  constant CCEIP0_OUT_IM_STATUS : address_e := std_logic_vector'("00000110100")
   ;
  constant CCEIP0_OUT_IM_READ_DONE : address_e := std_logic_vector'
  ("00000111000") ;
  constant CCEIP1_OUT_IA_CAPABILITY : address_e := std_logic_vector'
  ("00000111100") ;
  constant CCEIP1_OUT_IA_STATUS : address_e := std_logic_vector'("00001000000")
   ;
  constant CCEIP1_OUT_IA_WDATA_PART0 : address_e := std_logic_vector'
  ("00001000100") ;
  constant CCEIP1_OUT_IA_WDATA_PART1 : address_e := std_logic_vector'
  ("00001001000") ;
  constant CCEIP1_OUT_IA_WDATA_PART2 : address_e := std_logic_vector'
  ("00001001100") ;
  constant CCEIP1_OUT_IA_CONFIG : address_e := std_logic_vector'("00001010000")
   ;
  constant CCEIP1_OUT_IA_RDATA_PART0 : address_e := std_logic_vector'
  ("00001010100") ;
  constant CCEIP1_OUT_IA_RDATA_PART1 : address_e := std_logic_vector'
  ("00001011000") ;
  constant CCEIP1_OUT_IA_RDATA_PART2 : address_e := std_logic_vector'
  ("00001011100") ;
  constant CCEIP1_OUT_IM_CONFIG : address_e := std_logic_vector'("00001100000")
   ;
  constant CCEIP1_OUT_IM_STATUS : address_e := std_logic_vector'("00001100100")
   ;
  constant CCEIP1_OUT_IM_READ_DONE : address_e := std_logic_vector'
  ("00001101000") ;
  constant CCEIP2_OUT_IA_CAPABILITY : address_e := std_logic_vector'
  ("00001101100") ;
  constant CCEIP2_OUT_IA_STATUS : address_e := std_logic_vector'("00001110000")
   ;
  constant CCEIP2_OUT_IA_WDATA_PART0 : address_e := std_logic_vector'
  ("00001110100") ;
  constant CCEIP2_OUT_IA_WDATA_PART1 : address_e := std_logic_vector'
  ("00001111000") ;
  constant CCEIP2_OUT_IA_WDATA_PART2 : address_e := std_logic_vector'
  ("00001111100") ;
  constant CCEIP2_OUT_IA_CONFIG : address_e := std_logic_vector'("00010000000")
   ;
  constant CCEIP2_OUT_IA_RDATA_PART0 : address_e := std_logic_vector'
  ("00010000100") ;
  constant CCEIP2_OUT_IA_RDATA_PART1 : address_e := std_logic_vector'
  ("00010001000") ;
  constant CCEIP2_OUT_IA_RDATA_PART2 : address_e := std_logic_vector'
  ("00010001100") ;
  constant CCEIP2_OUT_IM_CONFIG : address_e := std_logic_vector'("00010010000")
   ;
  constant CCEIP2_OUT_IM_STATUS : address_e := std_logic_vector'("00010010100")
   ;
  constant CCEIP2_OUT_IM_READ_DONE : address_e := std_logic_vector'
  ("00010011000") ;
  constant CCEIP3_OUT_IA_CAPABILITY : address_e := std_logic_vector'
  ("00010011100") ;
  constant CCEIP3_OUT_IA_STATUS : address_e := std_logic_vector'("00010100000")
   ;
  constant CCEIP3_OUT_IA_WDATA_PART0 : address_e := std_logic_vector'
  ("00010100100") ;
  constant CCEIP3_OUT_IA_WDATA_PART1 : address_e := std_logic_vector'
  ("00010101000") ;
  constant CCEIP3_OUT_IA_WDATA_PART2 : address_e := std_logic_vector'
  ("00010101100") ;
  constant CCEIP3_OUT_IA_CONFIG : address_e := std_logic_vector'("00010110000")
   ;
  constant CCEIP3_OUT_IA_RDATA_PART0 : address_e := std_logic_vector'
  ("00010110100") ;
  constant CCEIP3_OUT_IA_RDATA_PART1 : address_e := std_logic_vector'
  ("00010111000") ;
  constant CCEIP3_OUT_IA_RDATA_PART2 : address_e := std_logic_vector'
  ("00010111100") ;
  constant CCEIP3_OUT_IM_CONFIG : address_e := std_logic_vector'("00011000000")
   ;
  constant CCEIP3_OUT_IM_STATUS : address_e := std_logic_vector'("00011000100")
   ;
  constant CCEIP3_OUT_IM_READ_DONE : address_e := std_logic_vector'
  ("00011001000") ;
  constant CDDIP0_OUT_IA_CAPABILITY : address_e := std_logic_vector'
  ("00011001100") ;
  constant CDDIP0_OUT_IA_STATUS : address_e := std_logic_vector'("00011010000")
   ;
  constant CDDIP0_OUT_IA_WDATA_PART0 : address_e := std_logic_vector'
  ("00011010100") ;
  constant CDDIP0_OUT_IA_WDATA_PART1 : address_e := std_logic_vector'
  ("00011011000") ;
  constant CDDIP0_OUT_IA_WDATA_PART2 : address_e := std_logic_vector'
  ("00011011100") ;
  constant CDDIP0_OUT_IA_CONFIG : address_e := std_logic_vector'("00011100000")
   ;
  constant CDDIP0_OUT_IA_RDATA_PART0 : address_e := std_logic_vector'
  ("00011100100") ;
  constant CDDIP0_OUT_IA_RDATA_PART1 : address_e := std_logic_vector'
  ("00011101000") ;
  constant CDDIP0_OUT_IA_RDATA_PART2 : address_e := std_logic_vector'
  ("00011101100") ;
  constant CDDIP0_OUT_IM_CONFIG : address_e := std_logic_vector'("00011110000")
   ;
  constant CDDIP0_OUT_IM_STATUS : address_e := std_logic_vector'("00011110100")
   ;
  constant CDDIP0_OUT_IM_READ_DONE : address_e := std_logic_vector'
  ("00011111000") ;
  constant CDDIP1_OUT_IA_CAPABILITY : address_e := std_logic_vector'
  ("00011111100") ;
  constant CDDIP1_OUT_IA_STATUS : address_e := std_logic_vector'("00100000000")
   ;
  constant CDDIP1_OUT_IA_WDATA_PART0 : address_e := std_logic_vector'
  ("00100000100") ;
  constant CDDIP1_OUT_IA_WDATA_PART1 : address_e := std_logic_vector'
  ("00100001000") ;
  constant CDDIP1_OUT_IA_WDATA_PART2 : address_e := std_logic_vector'
  ("00100001100") ;
  constant CDDIP1_OUT_IA_CONFIG : address_e := std_logic_vector'("00100010000")
   ;
  constant CDDIP1_OUT_IA_RDATA_PART0 : address_e := std_logic_vector'
  ("00100010100") ;
  constant CDDIP1_OUT_IA_RDATA_PART1 : address_e := std_logic_vector'
  ("00100011000") ;
  constant CDDIP1_OUT_IA_RDATA_PART2 : address_e := std_logic_vector'
  ("00100011100") ;
  constant CDDIP1_OUT_IM_CONFIG : address_e := std_logic_vector'("00100100000")
   ;
  constant CDDIP1_OUT_IM_STATUS : address_e := std_logic_vector'("00100100100")
   ;
  constant CDDIP1_OUT_IM_READ_DONE : address_e := std_logic_vector'
  ("00100101000") ;
  constant CDDIP2_OUT_IA_CAPABILITY : address_e := std_logic_vector'
  ("00100101100") ;
  constant CDDIP2_OUT_IA_STATUS : address_e := std_logic_vector'("00100110000")
   ;
  constant CDDIP2_OUT_IA_WDATA_PART0 : address_e := std_logic_vector'
  ("00100110100") ;
  constant CDDIP2_OUT_IA_WDATA_PART1 : address_e := std_logic_vector'
  ("00100111000") ;
  constant CDDIP2_OUT_IA_WDATA_PART2 : address_e := std_logic_vector'
  ("00100111100") ;
  constant CDDIP2_OUT_IA_CONFIG : address_e := std_logic_vector'("00101000000")
   ;
  constant CDDIP2_OUT_IA_RDATA_PART0 : address_e := std_logic_vector'
  ("00101000100") ;
  constant CDDIP2_OUT_IA_RDATA_PART1 : address_e := std_logic_vector'
  ("00101001000") ;
  constant CDDIP2_OUT_IA_RDATA_PART2 : address_e := std_logic_vector'
  ("00101001100") ;
  constant CDDIP2_OUT_IM_CONFIG : address_e := std_logic_vector'("00101010000")
   ;
  constant CDDIP2_OUT_IM_STATUS : address_e := std_logic_vector'("00101010100")
   ;
  constant CDDIP2_OUT_IM_READ_DONE : address_e := std_logic_vector'
  ("00101011000") ;
  constant CDDIP3_OUT_IA_CAPABILITY : address_e := std_logic_vector'
  ("00101011100") ;
  constant CDDIP3_OUT_IA_STATUS : address_e := std_logic_vector'("00101100000")
   ;
  constant CDDIP3_OUT_IA_WDATA_PART0 : address_e := std_logic_vector'
  ("00101100100") ;
  constant CDDIP3_OUT_IA_WDATA_PART1 : address_e := std_logic_vector'
  ("00101101000") ;
  constant CDDIP3_OUT_IA_WDATA_PART2 : address_e := std_logic_vector'
  ("00101101100") ;
  constant CDDIP3_OUT_IA_CONFIG : address_e := std_logic_vector'("00101110000")
   ;
  constant CDDIP3_OUT_IA_RDATA_PART0 : address_e := std_logic_vector'
  ("00101110100") ;
  constant CDDIP3_OUT_IA_RDATA_PART1 : address_e := std_logic_vector'
  ("00101111000") ;
  constant CDDIP3_OUT_IA_RDATA_PART2 : address_e := std_logic_vector'
  ("00101111100") ;
  constant CDDIP3_OUT_IM_CONFIG : address_e := std_logic_vector'("00110000000")
   ;
  constant CDDIP3_OUT_IM_STATUS : address_e := std_logic_vector'("00110000100")
   ;
  constant CDDIP3_OUT_IM_READ_DONE : address_e := std_logic_vector'
  ("00110001000") ;
  constant CKV_IA_CAPABILITY : address_e := std_logic_vector'("00110001100") ;
  constant CKV_IA_STATUS : address_e := std_logic_vector'("00110010000") ;
  constant CKV_IA_WDATA_PART0 : address_e := std_logic_vector'("00110010100") ;
  constant CKV_IA_WDATA_PART1 : address_e := std_logic_vector'("00110011000") ;
  constant CKV_IA_CONFIG : address_e := std_logic_vector'("00110011100") ;
  constant CKV_IA_RDATA_PART0 : address_e := std_logic_vector'("00110100000") ;
  constant CKV_IA_RDATA_PART1 : address_e := std_logic_vector'("00110100100") ;
  constant KIM_IA_CAPABILITY : address_e := std_logic_vector'("00110101000") ;
  constant KIM_IA_STATUS : address_e := std_logic_vector'("00110101100") ;
  constant KIM_IA_WDATA_PART0 : address_e := std_logic_vector'("00110110000") ;
  constant KIM_IA_WDATA_PART1 : address_e := std_logic_vector'("00110110100") ;
  constant KIM_IA_CONFIG : address_e := std_logic_vector'("00110111000") ;
  constant KIM_IA_RDATA_PART0 : address_e := std_logic_vector'("00110111100") ;
  constant KIM_IA_RDATA_PART1 : address_e := std_logic_vector'("00111000000") ;
  constant LABEL0_CONFIG : address_e := std_logic_vector'("00111001000") ;
  constant LABEL0_DATA7 : address_e := std_logic_vector'("00111001100") ;
  constant LABEL0_DATA6 : address_e := std_logic_vector'("00111010000") ;
  constant LABEL0_DATA5 : address_e := std_logic_vector'("00111010100") ;
  constant LABEL0_DATA4 : address_e := std_logic_vector'("00111011000") ;
  constant LABEL0_DATA3 : address_e := std_logic_vector'("00111011100") ;
  constant LABEL0_DATA2 : address_e := std_logic_vector'("00111100000") ;
  constant LABEL0_DATA1 : address_e := std_logic_vector'("00111100100") ;
  constant LABEL0_DATA0 : address_e := std_logic_vector'("00111101000") ;
  constant LABEL1_CONFIG : address_e := std_logic_vector'("00111110000") ;
  constant LABEL1_DATA7 : address_e := std_logic_vector'("00111110100") ;
  constant LABEL1_DATA6 : address_e := std_logic_vector'("00111111000") ;
  constant LABEL1_DATA5 : address_e := std_logic_vector'("00111111100") ;
  constant LABEL1_DATA4 : address_e := std_logic_vector'("01000000000") ;
  constant LABEL1_DATA3 : address_e := std_logic_vector'("01000000100") ;
  constant LABEL1_DATA2 : address_e := std_logic_vector'("01000001000") ;
  constant LABEL1_DATA1 : address_e := std_logic_vector'("01000001100") ;
  constant LABEL1_DATA0 : address_e := std_logic_vector'("01000010000") ;
  constant LABEL2_CONFIG : address_e := std_logic_vector'("01000011000") ;
  constant LABEL2_DATA7 : address_e := std_logic_vector'("01000011100") ;
  constant LABEL2_DATA6 : address_e := std_logic_vector'("01000100000") ;
  constant LABEL2_DATA5 : address_e := std_logic_vector'("01000100100") ;
  constant LABEL2_DATA4 : address_e := std_logic_vector'("01000101000") ;
  constant LABEL2_DATA3 : address_e := std_logic_vector'("01000101100") ;
  constant LABEL2_DATA2 : address_e := std_logic_vector'("01000110000") ;
  constant LABEL2_DATA1 : address_e := std_logic_vector'("01000110100") ;
  constant LABEL2_DATA0 : address_e := std_logic_vector'("01000111000") ;
  constant LABEL3_CONFIG : address_e := std_logic_vector'("01001000000") ;
  constant LABEL3_DATA7 : address_e := std_logic_vector'("01001000100") ;
  constant LABEL3_DATA6 : address_e := std_logic_vector'("01001001000") ;
  constant LABEL3_DATA5 : address_e := std_logic_vector'("01001001100") ;
  constant LABEL3_DATA4 : address_e := std_logic_vector'("01001010000") ;
  constant LABEL3_DATA3 : address_e := std_logic_vector'("01001010100") ;
  constant LABEL3_DATA2 : address_e := std_logic_vector'("01001011000") ;
  constant LABEL3_DATA1 : address_e := std_logic_vector'("01001011100") ;
  constant LABEL3_DATA0 : address_e := std_logic_vector'("01001100000") ;
  constant LABEL4_CONFIG : address_e := std_logic_vector'("01001101000") ;
  constant LABEL4_DATA7 : address_e := std_logic_vector'("01001101100") ;
  constant LABEL4_DATA6 : address_e := std_logic_vector'("01001110000") ;
  constant LABEL4_DATA5 : address_e := std_logic_vector'("01001110100") ;
  constant LABEL4_DATA4 : address_e := std_logic_vector'("01001111000") ;
  constant LABEL4_DATA3 : address_e := std_logic_vector'("01001111100") ;
  constant LABEL4_DATA2 : address_e := std_logic_vector'("01010000000") ;
  constant LABEL4_DATA1 : address_e := std_logic_vector'("01010000100") ;
  constant LABEL4_DATA0 : address_e := std_logic_vector'("01010001000") ;
  constant LABEL5_CONFIG : address_e := std_logic_vector'("01010010000") ;
  constant LABEL5_DATA7 : address_e := std_logic_vector'("01010010100") ;
  constant LABEL5_DATA6 : address_e := std_logic_vector'("01010011000") ;
  constant LABEL5_DATA5 : address_e := std_logic_vector'("01010011100") ;
  constant LABEL5_DATA4 : address_e := std_logic_vector'("01010100000") ;
  constant LABEL5_DATA3 : address_e := std_logic_vector'("01010100100") ;
  constant LABEL5_DATA2 : address_e := std_logic_vector'("01010101000") ;
  constant LABEL5_DATA1 : address_e := std_logic_vector'("01010101100") ;
  constant LABEL5_DATA0 : address_e := std_logic_vector'("01010110000") ;
  constant LABEL6_CONFIG : address_e := std_logic_vector'("01010111000") ;
  constant LABEL6_DATA7 : address_e := std_logic_vector'("01010111100") ;
  constant LABEL6_DATA6 : address_e := std_logic_vector'("01011000000") ;
  constant LABEL6_DATA5 : address_e := std_logic_vector'("01011000100") ;
  constant LABEL6_DATA4 : address_e := std_logic_vector'("01011001000") ;
  constant LABEL6_DATA3 : address_e := std_logic_vector'("01011001100") ;
  constant LABEL6_DATA2 : address_e := std_logic_vector'("01011010000") ;
  constant LABEL6_DATA1 : address_e := std_logic_vector'("01011010100") ;
  constant LABEL6_DATA0 : address_e := std_logic_vector'("01011011000") ;
  constant LABEL7_CONFIG : address_e := std_logic_vector'("01011100000") ;
  constant LABEL7_DATA7 : address_e := std_logic_vector'("01011100100") ;
  constant LABEL7_DATA6 : address_e := std_logic_vector'("01011101000") ;
  constant LABEL7_DATA5 : address_e := std_logic_vector'("01011101100") ;
  constant LABEL7_DATA4 : address_e := std_logic_vector'("01011110000") ;
  constant LABEL7_DATA3 : address_e := std_logic_vector'("01011110100") ;
  constant LABEL7_DATA2 : address_e := std_logic_vector'("01011111000") ;
  constant LABEL7_DATA1 : address_e := std_logic_vector'("01011111100") ;
  constant LABEL7_DATA0 : address_e := std_logic_vector'("01100000000") ;
  constant KDF_DRBG_CTRL : address_e := std_logic_vector'("01100001000") ;
  constant KDF_DRBG_SEED_0_STATE_KEY_31_0 : address_e := std_logic_vector'
  ("01100001100") ;
  constant KDF_DRBG_SEED_0_STATE_KEY_63_32 : address_e := std_logic_vector'
  ("01100010000") ;
  constant KDF_DRBG_SEED_0_STATE_KEY_95_64 : address_e := std_logic_vector'
  ("01100010100") ;
  constant KDF_DRBG_SEED_0_STATE_KEY_127_96 : address_e := std_logic_vector'
  ("01100011000") ;
  constant KDF_DRBG_SEED_0_STATE_KEY_159_128 : address_e := std_logic_vector'
  ("01100011100") ;
  constant KDF_DRBG_SEED_0_STATE_KEY_191_160 : address_e := std_logic_vector'
  ("01100100000") ;
  constant KDF_DRBG_SEED_0_STATE_KEY_223_192 : address_e := std_logic_vector'
  ("01100100100") ;
  constant KDF_DRBG_SEED_0_STATE_KEY_255_224 : address_e := std_logic_vector'
  ("01100101000") ;
  constant KDF_DRBG_SEED_0_STATE_VALUE_31_0 : address_e := std_logic_vector'
  ("01100101100") ;
  constant KDF_DRBG_SEED_0_STATE_VALUE_63_32 : address_e := std_logic_vector'
  ("01100110000") ;
  constant KDF_DRBG_SEED_0_STATE_VALUE_95_64 : address_e := std_logic_vector'
  ("01100110100") ;
  constant KDF_DRBG_SEED_0_STATE_VALUE_127_96 : address_e := std_logic_vector'
  ("01100111000") ;
  constant KDF_DRBG_SEED_0_RESEED_INTERVAL_0 : address_e := std_logic_vector'
  ("01100111100") ;
  constant KDF_DRBG_SEED_0_RESEED_INTERVAL_1 : address_e := std_logic_vector'
  ("01101000000") ;
  constant KDF_DRBG_SEED_1_STATE_KEY_31_0 : address_e := std_logic_vector'
  ("01101000100") ;
  constant KDF_DRBG_SEED_1_STATE_KEY_63_32 : address_e := std_logic_vector'
  ("01101001000") ;
  constant KDF_DRBG_SEED_1_STATE_KEY_95_64 : address_e := std_logic_vector'
  ("01101001100") ;
  constant KDF_DRBG_SEED_1_STATE_KEY_127_96 : address_e := std_logic_vector'
  ("01101010000") ;
  constant KDF_DRBG_SEED_1_STATE_KEY_159_128 : address_e := std_logic_vector'
  ("01101010100") ;
  constant KDF_DRBG_SEED_1_STATE_KEY_191_160 : address_e := std_logic_vector'
  ("01101011000") ;
  constant KDF_DRBG_SEED_1_STATE_KEY_223_192 : address_e := std_logic_vector'
  ("01101011100") ;
  constant KDF_DRBG_SEED_1_STATE_KEY_255_224 : address_e := std_logic_vector'
  ("01101100000") ;
  constant KDF_DRBG_SEED_1_STATE_VALUE_31_0 : address_e := std_logic_vector'
  ("01101100100") ;
  constant KDF_DRBG_SEED_1_STATE_VALUE_63_32 : address_e := std_logic_vector'
  ("01101101000") ;
  constant KDF_DRBG_SEED_1_STATE_VALUE_95_64 : address_e := std_logic_vector'
  ("01101101100") ;
  constant KDF_DRBG_SEED_1_STATE_VALUE_127_96 : address_e := std_logic_vector'
  ("01101110000") ;
  constant KDF_DRBG_SEED_1_RESEED_INTERVAL_0 : address_e := std_logic_vector'
  ("01101110100") ;
  constant KDF_DRBG_SEED_1_RESEED_INTERVAL_1 : address_e := std_logic_vector'
  ("01101111000") ;
  constant INTERRUPT_STATUS : address_e := std_logic_vector'("01101111100") ;
  constant INTERRUPT_MASK : address_e := std_logic_vector'("01110000000") ;
  constant ENGINE_STICKY_STATUS : address_e := std_logic_vector'("01110000100")
   ;
  constant BIMC_MONITOR : address_e := std_logic_vector'("01110001100") ;
  constant BIMC_MONITOR_MASK : address_e := std_logic_vector'("01110010000") ;
  constant BIMC_ECC_UNCORRECTABLE_ERROR_CNT : address_e := std_logic_vector'
  ("01110010100") ;
  constant BIMC_ECC_CORRECTABLE_ERROR_CNT : address_e := std_logic_vector'
  ("01110011000") ;
  constant BIMC_PARITY_ERROR_CNT : address_e := std_logic_vector'("01110011100")
   ;
  constant BIMC_GLOBAL_CONFIG : address_e := std_logic_vector'("01110100000") ;
  constant BIMC_MEMID : address_e := std_logic_vector'("01110100100") ;
  constant BIMC_ECCPAR_DEBUG : address_e := std_logic_vector'("01110101000") ;
  constant BIMC_CMD2 : address_e := std_logic_vector'("01110101100") ;
  constant BIMC_CMD1 : address_e := std_logic_vector'("01110110000") ;
  constant BIMC_CMD0 : address_e := std_logic_vector'("01110110100") ;
  constant BIMC_RXCMD2 : address_e := std_logic_vector'("01110111000") ;
  constant BIMC_RXCMD1 : address_e := std_logic_vector'("01110111100") ;
  constant BIMC_RXCMD0 : address_e := std_logic_vector'("01111000000") ;
  constant BIMC_RXRSP2 : address_e := std_logic_vector'("01111000100") ;
  constant BIMC_RXRSP1 : address_e := std_logic_vector'("01111001000") ;
  constant BIMC_RXRSP0 : address_e := std_logic_vector'("01111001100") ;
  constant BIMC_POLLRSP2 : address_e := std_logic_vector'("01111010000") ;
  constant BIMC_POLLRSP1 : address_e := std_logic_vector'("01111010100") ;
  constant BIMC_POLLRSP0 : address_e := std_logic_vector'("01111011000") ;
  constant BIMC_DBGCMD2 : address_e := std_logic_vector'("01111011100") ;
  constant BIMC_DBGCMD1 : address_e := std_logic_vector'("01111100000") ;
  constant BIMC_DBGCMD0 : address_e := std_logic_vector'("01111100100") ;
  constant IM_AVAILABLE : address_e := std_logic_vector'("01111101100") ;
  constant IM_CONSUMED : address_e := std_logic_vector'("01111110000") ;
  constant TREADY_OVERRIDE : address_e := std_logic_vector'("01111110100") ;
  constant REGS_SA_CTRL : address_e := std_logic_vector'("01111111000") ;
  constant SA_SNAPSHOT_IA_CAPABILITY : address_e := std_logic_vector'
  ("01111111100") ;
  constant SA_SNAPSHOT_IA_STATUS : address_e := std_logic_vector'("10000000000")
   ;
  constant SA_SNAPSHOT_IA_WDATA_PART0 : address_e := std_logic_vector'
  ("10000000100") ;
  constant SA_SNAPSHOT_IA_WDATA_PART1 : address_e := std_logic_vector'
  ("10000001000") ;
  constant SA_SNAPSHOT_IA_CONFIG : address_e := std_logic_vector'("10000001100")
   ;
  constant SA_SNAPSHOT_IA_RDATA_PART0 : address_e := std_logic_vector'
  ("10000010000") ;
  constant SA_SNAPSHOT_IA_RDATA_PART1 : address_e := std_logic_vector'
  ("10000010100") ;
  constant SA_COUNT_IA_CAPABILITY : address_e := std_logic_vector'("10000011000"
  ) ;
  constant SA_COUNT_IA_STATUS : address_e := std_logic_vector'("10000011100") ;
  constant SA_COUNT_IA_WDATA_PART0 : address_e := std_logic_vector'
  ("10000100000") ;
  constant SA_COUNT_IA_WDATA_PART1 : address_e := std_logic_vector'
  ("10000100100") ;
  constant SA_COUNT_IA_CONFIG : address_e := std_logic_vector'("10000101000") ;
  constant SA_COUNT_IA_RDATA_PART0 : address_e := std_logic_vector'
  ("10000101100") ;
  constant SA_COUNT_IA_RDATA_PART1 : address_e := std_logic_vector'
  ("10000110000") ;
  constant IDLE_COMPONENTS : address_e := std_logic_vector'("10000110100") ;
  constant CCEIP_ENCRYPT_KOP_FIFO_OVERRIDE : address_e := std_logic_vector'
  ("10000111000") ;
  constant CCEIP_VALIDATE_KOP_FIFO_OVERRIDE : address_e := std_logic_vector'
  ("10000111100") ;
  constant CDDIP_DECRYPT_KOP_FIFO_OVERRIDE : address_e := std_logic_vector'
  ("10001000000") ;
  constant SA_GLOBAL_CTRL : address_e := std_logic_vector'("10001000100") ;
  constant SA_CTRL_IA_CAPABILITY : address_e := std_logic_vector'("10001001000")
   ;
  constant SA_CTRL_IA_STATUS : address_e := std_logic_vector'("10001001100") ;
  constant SA_CTRL_IA_WDATA_PART0 : address_e := std_logic_vector'("10001010000"
  ) ;
  constant SA_CTRL_IA_CONFIG : address_e := std_logic_vector'("10001010100") ;
  constant SA_CTRL_IA_RDATA_PART0 : address_e := std_logic_vector'("10001011000"
  ) ;
  constant KDF_TEST_KEY_SIZE_CONFIG : address_e := std_logic_vector'
  ("10001011100") ;
  -- next() function DUMMY136 for enum type address_e
  function DUMMY136 (__v : address_e ; __n : integer) return address_e is
  variable posn : integer range 0 to 268 := 0;
  variable __m : integer range 0 to 268 := 0;
  begin
  case __v is
    when BLKID_REVID_CONFIG => posn := 0 ;
    when REVISION_CONFIG => posn := 1 ;
    when SPARE_CONFIG => posn := 2 ;
    when CCEIP0_OUT_IA_CAPABILITY => posn := 3 ;
    when CCEIP0_OUT_IA_STATUS => posn := 4 ;
    when CCEIP0_OUT_IA_WDATA_PART0 => posn := 5 ;
    when CCEIP0_OUT_IA_WDATA_PART1 => posn := 6 ;
    when CCEIP0_OUT_IA_WDATA_PART2 => posn := 7 ;
    when CCEIP0_OUT_IA_CONFIG => posn := 8 ;
    when CCEIP0_OUT_IA_RDATA_PART0 => posn := 9 ;
    when CCEIP0_OUT_IA_RDATA_PART1 => posn := 10 ;
    when CCEIP0_OUT_IA_RDATA_PART2 => posn := 11 ;
    when CCEIP0_OUT_IM_CONFIG => posn := 12 ;
    when CCEIP0_OUT_IM_STATUS => posn := 13 ;
    when CCEIP0_OUT_IM_READ_DONE => posn := 14 ;
    when CCEIP1_OUT_IA_CAPABILITY => posn := 15 ;
    when CCEIP1_OUT_IA_STATUS => posn := 16 ;
    when CCEIP1_OUT_IA_WDATA_PART0 => posn := 17 ;
    when CCEIP1_OUT_IA_WDATA_PART1 => posn := 18 ;
    when CCEIP1_OUT_IA_WDATA_PART2 => posn := 19 ;
    when CCEIP1_OUT_IA_CONFIG => posn := 20 ;
    when CCEIP1_OUT_IA_RDATA_PART0 => posn := 21 ;
    when CCEIP1_OUT_IA_RDATA_PART1 => posn := 22 ;
    when CCEIP1_OUT_IA_RDATA_PART2 => posn := 23 ;
    when CCEIP1_OUT_IM_CONFIG => posn := 24 ;
    when CCEIP1_OUT_IM_STATUS => posn := 25 ;
    when CCEIP1_OUT_IM_READ_DONE => posn := 26 ;
    when CCEIP2_OUT_IA_CAPABILITY => posn := 27 ;
    when CCEIP2_OUT_IA_STATUS => posn := 28 ;
    when CCEIP2_OUT_IA_WDATA_PART0 => posn := 29 ;
    when CCEIP2_OUT_IA_WDATA_PART1 => posn := 30 ;
    when CCEIP2_OUT_IA_WDATA_PART2 => posn := 31 ;
    when CCEIP2_OUT_IA_CONFIG => posn := 32 ;
    when CCEIP2_OUT_IA_RDATA_PART0 => posn := 33 ;
    when CCEIP2_OUT_IA_RDATA_PART1 => posn := 34 ;
    when CCEIP2_OUT_IA_RDATA_PART2 => posn := 35 ;
    when CCEIP2_OUT_IM_CONFIG => posn := 36 ;
    when CCEIP2_OUT_IM_STATUS => posn := 37 ;
    when CCEIP2_OUT_IM_READ_DONE => posn := 38 ;
    when CCEIP3_OUT_IA_CAPABILITY => posn := 39 ;
    when CCEIP3_OUT_IA_STATUS => posn := 40 ;
    when CCEIP3_OUT_IA_WDATA_PART0 => posn := 41 ;
    when CCEIP3_OUT_IA_WDATA_PART1 => posn := 42 ;
    when CCEIP3_OUT_IA_WDATA_PART2 => posn := 43 ;
    when CCEIP3_OUT_IA_CONFIG => posn := 44 ;
    when CCEIP3_OUT_IA_RDATA_PART0 => posn := 45 ;
    when CCEIP3_OUT_IA_RDATA_PART1 => posn := 46 ;
    when CCEIP3_OUT_IA_RDATA_PART2 => posn := 47 ;
    when CCEIP3_OUT_IM_CONFIG => posn := 48 ;
    when CCEIP3_OUT_IM_STATUS => posn := 49 ;
    when CCEIP3_OUT_IM_READ_DONE => posn := 50 ;
    when CDDIP0_OUT_IA_CAPABILITY => posn := 51 ;
    when CDDIP0_OUT_IA_STATUS => posn := 52 ;
    when CDDIP0_OUT_IA_WDATA_PART0 => posn := 53 ;
    when CDDIP0_OUT_IA_WDATA_PART1 => posn := 54 ;
    when CDDIP0_OUT_IA_WDATA_PART2 => posn := 55 ;
    when CDDIP0_OUT_IA_CONFIG => posn := 56 ;
    when CDDIP0_OUT_IA_RDATA_PART0 => posn := 57 ;
    when CDDIP0_OUT_IA_RDATA_PART1 => posn := 58 ;
    when CDDIP0_OUT_IA_RDATA_PART2 => posn := 59 ;
    when CDDIP0_OUT_IM_CONFIG => posn := 60 ;
    when CDDIP0_OUT_IM_STATUS => posn := 61 ;
    when CDDIP0_OUT_IM_READ_DONE => posn := 62 ;
    when CDDIP1_OUT_IA_CAPABILITY => posn := 63 ;
    when CDDIP1_OUT_IA_STATUS => posn := 64 ;
    when CDDIP1_OUT_IA_WDATA_PART0 => posn := 65 ;
    when CDDIP1_OUT_IA_WDATA_PART1 => posn := 66 ;
    when CDDIP1_OUT_IA_WDATA_PART2 => posn := 67 ;
    when CDDIP1_OUT_IA_CONFIG => posn := 68 ;
    when CDDIP1_OUT_IA_RDATA_PART0 => posn := 69 ;
    when CDDIP1_OUT_IA_RDATA_PART1 => posn := 70 ;
    when CDDIP1_OUT_IA_RDATA_PART2 => posn := 71 ;
    when CDDIP1_OUT_IM_CONFIG => posn := 72 ;
    when CDDIP1_OUT_IM_STATUS => posn := 73 ;
    when CDDIP1_OUT_IM_READ_DONE => posn := 74 ;
    when CDDIP2_OUT_IA_CAPABILITY => posn := 75 ;
    when CDDIP2_OUT_IA_STATUS => posn := 76 ;
    when CDDIP2_OUT_IA_WDATA_PART0 => posn := 77 ;
    when CDDIP2_OUT_IA_WDATA_PART1 => posn := 78 ;
    when CDDIP2_OUT_IA_WDATA_PART2 => posn := 79 ;
    when CDDIP2_OUT_IA_CONFIG => posn := 80 ;
    when CDDIP2_OUT_IA_RDATA_PART0 => posn := 81 ;
    when CDDIP2_OUT_IA_RDATA_PART1 => posn := 82 ;
    when CDDIP2_OUT_IA_RDATA_PART2 => posn := 83 ;
    when CDDIP2_OUT_IM_CONFIG => posn := 84 ;
    when CDDIP2_OUT_IM_STATUS => posn := 85 ;
    when CDDIP2_OUT_IM_READ_DONE => posn := 86 ;
    when CDDIP3_OUT_IA_CAPABILITY => posn := 87 ;
    when CDDIP3_OUT_IA_STATUS => posn := 88 ;
    when CDDIP3_OUT_IA_WDATA_PART0 => posn := 89 ;
    when CDDIP3_OUT_IA_WDATA_PART1 => posn := 90 ;
    when CDDIP3_OUT_IA_WDATA_PART2 => posn := 91 ;
    when CDDIP3_OUT_IA_CONFIG => posn := 92 ;
    when CDDIP3_OUT_IA_RDATA_PART0 => posn := 93 ;
    when CDDIP3_OUT_IA_RDATA_PART1 => posn := 94 ;
    when CDDIP3_OUT_IA_RDATA_PART2 => posn := 95 ;
    when CDDIP3_OUT_IM_CONFIG => posn := 96 ;
    when CDDIP3_OUT_IM_STATUS => posn := 97 ;
    when CDDIP3_OUT_IM_READ_DONE => posn := 98 ;
    when CKV_IA_CAPABILITY => posn := 99 ;
    when CKV_IA_STATUS => posn := 100 ;
    when CKV_IA_WDATA_PART0 => posn := 101 ;
    when CKV_IA_WDATA_PART1 => posn := 102 ;
    when CKV_IA_CONFIG => posn := 103 ;
    when CKV_IA_RDATA_PART0 => posn := 104 ;
    when CKV_IA_RDATA_PART1 => posn := 105 ;
    when KIM_IA_CAPABILITY => posn := 106 ;
    when KIM_IA_STATUS => posn := 107 ;
    when KIM_IA_WDATA_PART0 => posn := 108 ;
    when KIM_IA_WDATA_PART1 => posn := 109 ;
    when KIM_IA_CONFIG => posn := 110 ;
    when KIM_IA_RDATA_PART0 => posn := 111 ;
    when KIM_IA_RDATA_PART1 => posn := 112 ;
    when LABEL0_CONFIG => posn := 113 ;
    when LABEL0_DATA7 => posn := 114 ;
    when LABEL0_DATA6 => posn := 115 ;
    when LABEL0_DATA5 => posn := 116 ;
    when LABEL0_DATA4 => posn := 117 ;
    when LABEL0_DATA3 => posn := 118 ;
    when LABEL0_DATA2 => posn := 119 ;
    when LABEL0_DATA1 => posn := 120 ;
    when LABEL0_DATA0 => posn := 121 ;
    when LABEL1_CONFIG => posn := 122 ;
    when LABEL1_DATA7 => posn := 123 ;
    when LABEL1_DATA6 => posn := 124 ;
    when LABEL1_DATA5 => posn := 125 ;
    when LABEL1_DATA4 => posn := 126 ;
    when LABEL1_DATA3 => posn := 127 ;
    when LABEL1_DATA2 => posn := 128 ;
    when LABEL1_DATA1 => posn := 129 ;
    when LABEL1_DATA0 => posn := 130 ;
    when LABEL2_CONFIG => posn := 131 ;
    when LABEL2_DATA7 => posn := 132 ;
    when LABEL2_DATA6 => posn := 133 ;
    when LABEL2_DATA5 => posn := 134 ;
    when LABEL2_DATA4 => posn := 135 ;
    when LABEL2_DATA3 => posn := 136 ;
    when LABEL2_DATA2 => posn := 137 ;
    when LABEL2_DATA1 => posn := 138 ;
    when LABEL2_DATA0 => posn := 139 ;
    when LABEL3_CONFIG => posn := 140 ;
    when LABEL3_DATA7 => posn := 141 ;
    when LABEL3_DATA6 => posn := 142 ;
    when LABEL3_DATA5 => posn := 143 ;
    when LABEL3_DATA4 => posn := 144 ;
    when LABEL3_DATA3 => posn := 145 ;
    when LABEL3_DATA2 => posn := 146 ;
    when LABEL3_DATA1 => posn := 147 ;
    when LABEL3_DATA0 => posn := 148 ;
    when LABEL4_CONFIG => posn := 149 ;
    when LABEL4_DATA7 => posn := 150 ;
    when LABEL4_DATA6 => posn := 151 ;
    when LABEL4_DATA5 => posn := 152 ;
    when LABEL4_DATA4 => posn := 153 ;
    when LABEL4_DATA3 => posn := 154 ;
    when LABEL4_DATA2 => posn := 155 ;
    when LABEL4_DATA1 => posn := 156 ;
    when LABEL4_DATA0 => posn := 157 ;
    when LABEL5_CONFIG => posn := 158 ;
    when LABEL5_DATA7 => posn := 159 ;
    when LABEL5_DATA6 => posn := 160 ;
    when LABEL5_DATA5 => posn := 161 ;
    when LABEL5_DATA4 => posn := 162 ;
    when LABEL5_DATA3 => posn := 163 ;
    when LABEL5_DATA2 => posn := 164 ;
    when LABEL5_DATA1 => posn := 165 ;
    when LABEL5_DATA0 => posn := 166 ;
    when LABEL6_CONFIG => posn := 167 ;
    when LABEL6_DATA7 => posn := 168 ;
    when LABEL6_DATA6 => posn := 169 ;
    when LABEL6_DATA5 => posn := 170 ;
    when LABEL6_DATA4 => posn := 171 ;
    when LABEL6_DATA3 => posn := 172 ;
    when LABEL6_DATA2 => posn := 173 ;
    when LABEL6_DATA1 => posn := 174 ;
    when LABEL6_DATA0 => posn := 175 ;
    when LABEL7_CONFIG => posn := 176 ;
    when LABEL7_DATA7 => posn := 177 ;
    when LABEL7_DATA6 => posn := 178 ;
    when LABEL7_DATA5 => posn := 179 ;
    when LABEL7_DATA4 => posn := 180 ;
    when LABEL7_DATA3 => posn := 181 ;
    when LABEL7_DATA2 => posn := 182 ;
    when LABEL7_DATA1 => posn := 183 ;
    when LABEL7_DATA0 => posn := 184 ;
    when KDF_DRBG_CTRL => posn := 185 ;
    when KDF_DRBG_SEED_0_STATE_KEY_31_0 => posn := 186 ;
    when KDF_DRBG_SEED_0_STATE_KEY_63_32 => posn := 187 ;
    when KDF_DRBG_SEED_0_STATE_KEY_95_64 => posn := 188 ;
    when KDF_DRBG_SEED_0_STATE_KEY_127_96 => posn := 189 ;
    when KDF_DRBG_SEED_0_STATE_KEY_159_128 => posn := 190 ;
    when KDF_DRBG_SEED_0_STATE_KEY_191_160 => posn := 191 ;
    when KDF_DRBG_SEED_0_STATE_KEY_223_192 => posn := 192 ;
    when KDF_DRBG_SEED_0_STATE_KEY_255_224 => posn := 193 ;
    when KDF_DRBG_SEED_0_STATE_VALUE_31_0 => posn := 194 ;
    when KDF_DRBG_SEED_0_STATE_VALUE_63_32 => posn := 195 ;
    when KDF_DRBG_SEED_0_STATE_VALUE_95_64 => posn := 196 ;
    when KDF_DRBG_SEED_0_STATE_VALUE_127_96 => posn := 197 ;
    when KDF_DRBG_SEED_0_RESEED_INTERVAL_0 => posn := 198 ;
    when KDF_DRBG_SEED_0_RESEED_INTERVAL_1 => posn := 199 ;
    when KDF_DRBG_SEED_1_STATE_KEY_31_0 => posn := 200 ;
    when KDF_DRBG_SEED_1_STATE_KEY_63_32 => posn := 201 ;
    when KDF_DRBG_SEED_1_STATE_KEY_95_64 => posn := 202 ;
    when KDF_DRBG_SEED_1_STATE_KEY_127_96 => posn := 203 ;
    when KDF_DRBG_SEED_1_STATE_KEY_159_128 => posn := 204 ;
    when KDF_DRBG_SEED_1_STATE_KEY_191_160 => posn := 205 ;
    when KDF_DRBG_SEED_1_STATE_KEY_223_192 => posn := 206 ;
    when KDF_DRBG_SEED_1_STATE_KEY_255_224 => posn := 207 ;
    when KDF_DRBG_SEED_1_STATE_VALUE_31_0 => posn := 208 ;
    when KDF_DRBG_SEED_1_STATE_VALUE_63_32 => posn := 209 ;
    when KDF_DRBG_SEED_1_STATE_VALUE_95_64 => posn := 210 ;
    when KDF_DRBG_SEED_1_STATE_VALUE_127_96 => posn := 211 ;
    when KDF_DRBG_SEED_1_RESEED_INTERVAL_0 => posn := 212 ;
    when KDF_DRBG_SEED_1_RESEED_INTERVAL_1 => posn := 213 ;
    when INTERRUPT_STATUS => posn := 214 ;
    when INTERRUPT_MASK => posn := 215 ;
    when ENGINE_STICKY_STATUS => posn := 216 ;
    when BIMC_MONITOR => posn := 217 ;
    when BIMC_MONITOR_MASK => posn := 218 ;
    when BIMC_ECC_UNCORRECTABLE_ERROR_CNT => posn := 219 ;
    when BIMC_ECC_CORRECTABLE_ERROR_CNT => posn := 220 ;
    when BIMC_PARITY_ERROR_CNT => posn := 221 ;
    when BIMC_GLOBAL_CONFIG => posn := 222 ;
    when BIMC_MEMID => posn := 223 ;
    when BIMC_ECCPAR_DEBUG => posn := 224 ;
    when BIMC_CMD2 => posn := 225 ;
    when BIMC_CMD1 => posn := 226 ;
    when BIMC_CMD0 => posn := 227 ;
    when BIMC_RXCMD2 => posn := 228 ;
    when BIMC_RXCMD1 => posn := 229 ;
    when BIMC_RXCMD0 => posn := 230 ;
    when BIMC_RXRSP2 => posn := 231 ;
    when BIMC_RXRSP1 => posn := 232 ;
    when BIMC_RXRSP0 => posn := 233 ;
    when BIMC_POLLRSP2 => posn := 234 ;
    when BIMC_POLLRSP1 => posn := 235 ;
    when BIMC_POLLRSP0 => posn := 236 ;
    when BIMC_DBGCMD2 => posn := 237 ;
    when BIMC_DBGCMD1 => posn := 238 ;
    when BIMC_DBGCMD0 => posn := 239 ;
    when IM_AVAILABLE => posn := 240 ;
    when IM_CONSUMED => posn := 241 ;
    when TREADY_OVERRIDE => posn := 242 ;
    when REGS_SA_CTRL => posn := 243 ;
    when SA_SNAPSHOT_IA_CAPABILITY => posn := 244 ;
    when SA_SNAPSHOT_IA_STATUS => posn := 245 ;
    when SA_SNAPSHOT_IA_WDATA_PART0 => posn := 246 ;
    when SA_SNAPSHOT_IA_WDATA_PART1 => posn := 247 ;
    when SA_SNAPSHOT_IA_CONFIG => posn := 248 ;
    when SA_SNAPSHOT_IA_RDATA_PART0 => posn := 249 ;
    when SA_SNAPSHOT_IA_RDATA_PART1 => posn := 250 ;
    when SA_COUNT_IA_CAPABILITY => posn := 251 ;
    when SA_COUNT_IA_STATUS => posn := 252 ;
    when SA_COUNT_IA_WDATA_PART0 => posn := 253 ;
    when SA_COUNT_IA_WDATA_PART1 => posn := 254 ;
    when SA_COUNT_IA_CONFIG => posn := 255 ;
    when SA_COUNT_IA_RDATA_PART0 => posn := 256 ;
    when SA_COUNT_IA_RDATA_PART1 => posn := 257 ;
    when IDLE_COMPONENTS => posn := 258 ;
    when CCEIP_ENCRYPT_KOP_FIFO_OVERRIDE => posn := 259 ;
    when CCEIP_VALIDATE_KOP_FIFO_OVERRIDE => posn := 260 ;
    when CDDIP_DECRYPT_KOP_FIFO_OVERRIDE => posn := 261 ;
    when SA_GLOBAL_CTRL => posn := 262 ;
    when SA_CTRL_IA_CAPABILITY => posn := 263 ;
    when SA_CTRL_IA_STATUS => posn := 264 ;
    when SA_CTRL_IA_WDATA_PART0 => posn := 265 ;
    when SA_CTRL_IA_CONFIG => posn := 266 ;
    when SA_CTRL_IA_RDATA_PART0 => posn := 267 ;
    when KDF_TEST_KEY_SIZE_CONFIG => posn := 268 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 269 ;
  case __m is
    when 0 => return BLKID_REVID_CONFIG ;
    when 1 => return REVISION_CONFIG ;
    when 2 => return SPARE_CONFIG ;
    when 3 => return CCEIP0_OUT_IA_CAPABILITY ;
    when 4 => return CCEIP0_OUT_IA_STATUS ;
    when 5 => return CCEIP0_OUT_IA_WDATA_PART0 ;
    when 6 => return CCEIP0_OUT_IA_WDATA_PART1 ;
    when 7 => return CCEIP0_OUT_IA_WDATA_PART2 ;
    when 8 => return CCEIP0_OUT_IA_CONFIG ;
    when 9 => return CCEIP0_OUT_IA_RDATA_PART0 ;
    when 10 => return CCEIP0_OUT_IA_RDATA_PART1 ;
    when 11 => return CCEIP0_OUT_IA_RDATA_PART2 ;
    when 12 => return CCEIP0_OUT_IM_CONFIG ;
    when 13 => return CCEIP0_OUT_IM_STATUS ;
    when 14 => return CCEIP0_OUT_IM_READ_DONE ;
    when 15 => return CCEIP1_OUT_IA_CAPABILITY ;
    when 16 => return CCEIP1_OUT_IA_STATUS ;
    when 17 => return CCEIP1_OUT_IA_WDATA_PART0 ;
    when 18 => return CCEIP1_OUT_IA_WDATA_PART1 ;
    when 19 => return CCEIP1_OUT_IA_WDATA_PART2 ;
    when 20 => return CCEIP1_OUT_IA_CONFIG ;
    when 21 => return CCEIP1_OUT_IA_RDATA_PART0 ;
    when 22 => return CCEIP1_OUT_IA_RDATA_PART1 ;
    when 23 => return CCEIP1_OUT_IA_RDATA_PART2 ;
    when 24 => return CCEIP1_OUT_IM_CONFIG ;
    when 25 => return CCEIP1_OUT_IM_STATUS ;
    when 26 => return CCEIP1_OUT_IM_READ_DONE ;
    when 27 => return CCEIP2_OUT_IA_CAPABILITY ;
    when 28 => return CCEIP2_OUT_IA_STATUS ;
    when 29 => return CCEIP2_OUT_IA_WDATA_PART0 ;
    when 30 => return CCEIP2_OUT_IA_WDATA_PART1 ;
    when 31 => return CCEIP2_OUT_IA_WDATA_PART2 ;
    when 32 => return CCEIP2_OUT_IA_CONFIG ;
    when 33 => return CCEIP2_OUT_IA_RDATA_PART0 ;
    when 34 => return CCEIP2_OUT_IA_RDATA_PART1 ;
    when 35 => return CCEIP2_OUT_IA_RDATA_PART2 ;
    when 36 => return CCEIP2_OUT_IM_CONFIG ;
    when 37 => return CCEIP2_OUT_IM_STATUS ;
    when 38 => return CCEIP2_OUT_IM_READ_DONE ;
    when 39 => return CCEIP3_OUT_IA_CAPABILITY ;
    when 40 => return CCEIP3_OUT_IA_STATUS ;
    when 41 => return CCEIP3_OUT_IA_WDATA_PART0 ;
    when 42 => return CCEIP3_OUT_IA_WDATA_PART1 ;
    when 43 => return CCEIP3_OUT_IA_WDATA_PART2 ;
    when 44 => return CCEIP3_OUT_IA_CONFIG ;
    when 45 => return CCEIP3_OUT_IA_RDATA_PART0 ;
    when 46 => return CCEIP3_OUT_IA_RDATA_PART1 ;
    when 47 => return CCEIP3_OUT_IA_RDATA_PART2 ;
    when 48 => return CCEIP3_OUT_IM_CONFIG ;
    when 49 => return CCEIP3_OUT_IM_STATUS ;
    when 50 => return CCEIP3_OUT_IM_READ_DONE ;
    when 51 => return CDDIP0_OUT_IA_CAPABILITY ;
    when 52 => return CDDIP0_OUT_IA_STATUS ;
    when 53 => return CDDIP0_OUT_IA_WDATA_PART0 ;
    when 54 => return CDDIP0_OUT_IA_WDATA_PART1 ;
    when 55 => return CDDIP0_OUT_IA_WDATA_PART2 ;
    when 56 => return CDDIP0_OUT_IA_CONFIG ;
    when 57 => return CDDIP0_OUT_IA_RDATA_PART0 ;
    when 58 => return CDDIP0_OUT_IA_RDATA_PART1 ;
    when 59 => return CDDIP0_OUT_IA_RDATA_PART2 ;
    when 60 => return CDDIP0_OUT_IM_CONFIG ;
    when 61 => return CDDIP0_OUT_IM_STATUS ;
    when 62 => return CDDIP0_OUT_IM_READ_DONE ;
    when 63 => return CDDIP1_OUT_IA_CAPABILITY ;
    when 64 => return CDDIP1_OUT_IA_STATUS ;
    when 65 => return CDDIP1_OUT_IA_WDATA_PART0 ;
    when 66 => return CDDIP1_OUT_IA_WDATA_PART1 ;
    when 67 => return CDDIP1_OUT_IA_WDATA_PART2 ;
    when 68 => return CDDIP1_OUT_IA_CONFIG ;
    when 69 => return CDDIP1_OUT_IA_RDATA_PART0 ;
    when 70 => return CDDIP1_OUT_IA_RDATA_PART1 ;
    when 71 => return CDDIP1_OUT_IA_RDATA_PART2 ;
    when 72 => return CDDIP1_OUT_IM_CONFIG ;
    when 73 => return CDDIP1_OUT_IM_STATUS ;
    when 74 => return CDDIP1_OUT_IM_READ_DONE ;
    when 75 => return CDDIP2_OUT_IA_CAPABILITY ;
    when 76 => return CDDIP2_OUT_IA_STATUS ;
    when 77 => return CDDIP2_OUT_IA_WDATA_PART0 ;
    when 78 => return CDDIP2_OUT_IA_WDATA_PART1 ;
    when 79 => return CDDIP2_OUT_IA_WDATA_PART2 ;
    when 80 => return CDDIP2_OUT_IA_CONFIG ;
    when 81 => return CDDIP2_OUT_IA_RDATA_PART0 ;
    when 82 => return CDDIP2_OUT_IA_RDATA_PART1 ;
    when 83 => return CDDIP2_OUT_IA_RDATA_PART2 ;
    when 84 => return CDDIP2_OUT_IM_CONFIG ;
    when 85 => return CDDIP2_OUT_IM_STATUS ;
    when 86 => return CDDIP2_OUT_IM_READ_DONE ;
    when 87 => return CDDIP3_OUT_IA_CAPABILITY ;
    when 88 => return CDDIP3_OUT_IA_STATUS ;
    when 89 => return CDDIP3_OUT_IA_WDATA_PART0 ;
    when 90 => return CDDIP3_OUT_IA_WDATA_PART1 ;
    when 91 => return CDDIP3_OUT_IA_WDATA_PART2 ;
    when 92 => return CDDIP3_OUT_IA_CONFIG ;
    when 93 => return CDDIP3_OUT_IA_RDATA_PART0 ;
    when 94 => return CDDIP3_OUT_IA_RDATA_PART1 ;
    when 95 => return CDDIP3_OUT_IA_RDATA_PART2 ;
    when 96 => return CDDIP3_OUT_IM_CONFIG ;
    when 97 => return CDDIP3_OUT_IM_STATUS ;
    when 98 => return CDDIP3_OUT_IM_READ_DONE ;
    when 99 => return CKV_IA_CAPABILITY ;
    when 100 => return CKV_IA_STATUS ;
    when 101 => return CKV_IA_WDATA_PART0 ;
    when 102 => return CKV_IA_WDATA_PART1 ;
    when 103 => return CKV_IA_CONFIG ;
    when 104 => return CKV_IA_RDATA_PART0 ;
    when 105 => return CKV_IA_RDATA_PART1 ;
    when 106 => return KIM_IA_CAPABILITY ;
    when 107 => return KIM_IA_STATUS ;
    when 108 => return KIM_IA_WDATA_PART0 ;
    when 109 => return KIM_IA_WDATA_PART1 ;
    when 110 => return KIM_IA_CONFIG ;
    when 111 => return KIM_IA_RDATA_PART0 ;
    when 112 => return KIM_IA_RDATA_PART1 ;
    when 113 => return LABEL0_CONFIG ;
    when 114 => return LABEL0_DATA7 ;
    when 115 => return LABEL0_DATA6 ;
    when 116 => return LABEL0_DATA5 ;
    when 117 => return LABEL0_DATA4 ;
    when 118 => return LABEL0_DATA3 ;
    when 119 => return LABEL0_DATA2 ;
    when 120 => return LABEL0_DATA1 ;
    when 121 => return LABEL0_DATA0 ;
    when 122 => return LABEL1_CONFIG ;
    when 123 => return LABEL1_DATA7 ;
    when 124 => return LABEL1_DATA6 ;
    when 125 => return LABEL1_DATA5 ;
    when 126 => return LABEL1_DATA4 ;
    when 127 => return LABEL1_DATA3 ;
    when 128 => return LABEL1_DATA2 ;
    when 129 => return LABEL1_DATA1 ;
    when 130 => return LABEL1_DATA0 ;
    when 131 => return LABEL2_CONFIG ;
    when 132 => return LABEL2_DATA7 ;
    when 133 => return LABEL2_DATA6 ;
    when 134 => return LABEL2_DATA5 ;
    when 135 => return LABEL2_DATA4 ;
    when 136 => return LABEL2_DATA3 ;
    when 137 => return LABEL2_DATA2 ;
    when 138 => return LABEL2_DATA1 ;
    when 139 => return LABEL2_DATA0 ;
    when 140 => return LABEL3_CONFIG ;
    when 141 => return LABEL3_DATA7 ;
    when 142 => return LABEL3_DATA6 ;
    when 143 => return LABEL3_DATA5 ;
    when 144 => return LABEL3_DATA4 ;
    when 145 => return LABEL3_DATA3 ;
    when 146 => return LABEL3_DATA2 ;
    when 147 => return LABEL3_DATA1 ;
    when 148 => return LABEL3_DATA0 ;
    when 149 => return LABEL4_CONFIG ;
    when 150 => return LABEL4_DATA7 ;
    when 151 => return LABEL4_DATA6 ;
    when 152 => return LABEL4_DATA5 ;
    when 153 => return LABEL4_DATA4 ;
    when 154 => return LABEL4_DATA3 ;
    when 155 => return LABEL4_DATA2 ;
    when 156 => return LABEL4_DATA1 ;
    when 157 => return LABEL4_DATA0 ;
    when 158 => return LABEL5_CONFIG ;
    when 159 => return LABEL5_DATA7 ;
    when 160 => return LABEL5_DATA6 ;
    when 161 => return LABEL5_DATA5 ;
    when 162 => return LABEL5_DATA4 ;
    when 163 => return LABEL5_DATA3 ;
    when 164 => return LABEL5_DATA2 ;
    when 165 => return LABEL5_DATA1 ;
    when 166 => return LABEL5_DATA0 ;
    when 167 => return LABEL6_CONFIG ;
    when 168 => return LABEL6_DATA7 ;
    when 169 => return LABEL6_DATA6 ;
    when 170 => return LABEL6_DATA5 ;
    when 171 => return LABEL6_DATA4 ;
    when 172 => return LABEL6_DATA3 ;
    when 173 => return LABEL6_DATA2 ;
    when 174 => return LABEL6_DATA1 ;
    when 175 => return LABEL6_DATA0 ;
    when 176 => return LABEL7_CONFIG ;
    when 177 => return LABEL7_DATA7 ;
    when 178 => return LABEL7_DATA6 ;
    when 179 => return LABEL7_DATA5 ;
    when 180 => return LABEL7_DATA4 ;
    when 181 => return LABEL7_DATA3 ;
    when 182 => return LABEL7_DATA2 ;
    when 183 => return LABEL7_DATA1 ;
    when 184 => return LABEL7_DATA0 ;
    when 185 => return KDF_DRBG_CTRL ;
    when 186 => return KDF_DRBG_SEED_0_STATE_KEY_31_0 ;
    when 187 => return KDF_DRBG_SEED_0_STATE_KEY_63_32 ;
    when 188 => return KDF_DRBG_SEED_0_STATE_KEY_95_64 ;
    when 189 => return KDF_DRBG_SEED_0_STATE_KEY_127_96 ;
    when 190 => return KDF_DRBG_SEED_0_STATE_KEY_159_128 ;
    when 191 => return KDF_DRBG_SEED_0_STATE_KEY_191_160 ;
    when 192 => return KDF_DRBG_SEED_0_STATE_KEY_223_192 ;
    when 193 => return KDF_DRBG_SEED_0_STATE_KEY_255_224 ;
    when 194 => return KDF_DRBG_SEED_0_STATE_VALUE_31_0 ;
    when 195 => return KDF_DRBG_SEED_0_STATE_VALUE_63_32 ;
    when 196 => return KDF_DRBG_SEED_0_STATE_VALUE_95_64 ;
    when 197 => return KDF_DRBG_SEED_0_STATE_VALUE_127_96 ;
    when 198 => return KDF_DRBG_SEED_0_RESEED_INTERVAL_0 ;
    when 199 => return KDF_DRBG_SEED_0_RESEED_INTERVAL_1 ;
    when 200 => return KDF_DRBG_SEED_1_STATE_KEY_31_0 ;
    when 201 => return KDF_DRBG_SEED_1_STATE_KEY_63_32 ;
    when 202 => return KDF_DRBG_SEED_1_STATE_KEY_95_64 ;
    when 203 => return KDF_DRBG_SEED_1_STATE_KEY_127_96 ;
    when 204 => return KDF_DRBG_SEED_1_STATE_KEY_159_128 ;
    when 205 => return KDF_DRBG_SEED_1_STATE_KEY_191_160 ;
    when 206 => return KDF_DRBG_SEED_1_STATE_KEY_223_192 ;
    when 207 => return KDF_DRBG_SEED_1_STATE_KEY_255_224 ;
    when 208 => return KDF_DRBG_SEED_1_STATE_VALUE_31_0 ;
    when 209 => return KDF_DRBG_SEED_1_STATE_VALUE_63_32 ;
    when 210 => return KDF_DRBG_SEED_1_STATE_VALUE_95_64 ;
    when 211 => return KDF_DRBG_SEED_1_STATE_VALUE_127_96 ;
    when 212 => return KDF_DRBG_SEED_1_RESEED_INTERVAL_0 ;
    when 213 => return KDF_DRBG_SEED_1_RESEED_INTERVAL_1 ;
    when 214 => return INTERRUPT_STATUS ;
    when 215 => return INTERRUPT_MASK ;
    when 216 => return ENGINE_STICKY_STATUS ;
    when 217 => return BIMC_MONITOR ;
    when 218 => return BIMC_MONITOR_MASK ;
    when 219 => return BIMC_ECC_UNCORRECTABLE_ERROR_CNT ;
    when 220 => return BIMC_ECC_CORRECTABLE_ERROR_CNT ;
    when 221 => return BIMC_PARITY_ERROR_CNT ;
    when 222 => return BIMC_GLOBAL_CONFIG ;
    when 223 => return BIMC_MEMID ;
    when 224 => return BIMC_ECCPAR_DEBUG ;
    when 225 => return BIMC_CMD2 ;
    when 226 => return BIMC_CMD1 ;
    when 227 => return BIMC_CMD0 ;
    when 228 => return BIMC_RXCMD2 ;
    when 229 => return BIMC_RXCMD1 ;
    when 230 => return BIMC_RXCMD0 ;
    when 231 => return BIMC_RXRSP2 ;
    when 232 => return BIMC_RXRSP1 ;
    when 233 => return BIMC_RXRSP0 ;
    when 234 => return BIMC_POLLRSP2 ;
    when 235 => return BIMC_POLLRSP1 ;
    when 236 => return BIMC_POLLRSP0 ;
    when 237 => return BIMC_DBGCMD2 ;
    when 238 => return BIMC_DBGCMD1 ;
    when 239 => return BIMC_DBGCMD0 ;
    when 240 => return IM_AVAILABLE ;
    when 241 => return IM_CONSUMED ;
    when 242 => return TREADY_OVERRIDE ;
    when 243 => return REGS_SA_CTRL ;
    when 244 => return SA_SNAPSHOT_IA_CAPABILITY ;
    when 245 => return SA_SNAPSHOT_IA_STATUS ;
    when 246 => return SA_SNAPSHOT_IA_WDATA_PART0 ;
    when 247 => return SA_SNAPSHOT_IA_WDATA_PART1 ;
    when 248 => return SA_SNAPSHOT_IA_CONFIG ;
    when 249 => return SA_SNAPSHOT_IA_RDATA_PART0 ;
    when 250 => return SA_SNAPSHOT_IA_RDATA_PART1 ;
    when 251 => return SA_COUNT_IA_CAPABILITY ;
    when 252 => return SA_COUNT_IA_STATUS ;
    when 253 => return SA_COUNT_IA_WDATA_PART0 ;
    when 254 => return SA_COUNT_IA_WDATA_PART1 ;
    when 255 => return SA_COUNT_IA_CONFIG ;
    when 256 => return SA_COUNT_IA_RDATA_PART0 ;
    when 257 => return SA_COUNT_IA_RDATA_PART1 ;
    when 258 => return IDLE_COMPONENTS ;
    when 259 => return CCEIP_ENCRYPT_KOP_FIFO_OVERRIDE ;
    when 260 => return CCEIP_VALIDATE_KOP_FIFO_OVERRIDE ;
    when 261 => return CDDIP_DECRYPT_KOP_FIFO_OVERRIDE ;
    when 262 => return SA_GLOBAL_CTRL ;
    when 263 => return SA_CTRL_IA_CAPABILITY ;
    when 264 => return SA_CTRL_IA_STATUS ;
    when 265 => return SA_CTRL_IA_WDATA_PART0 ;
    when 266 => return SA_CTRL_IA_CONFIG ;
    when 267 => return SA_CTRL_IA_RDATA_PART0 ;
    when 268 => return KDF_TEST_KEY_SIZE_CONFIG ;
    when others => return REVISION_CONFIG ;
  end case;
  end;
  -- prev() function DUMMY137 for enum type address_e
  function DUMMY137 (__v : address_e ; __n : integer) return address_e is
  variable posn : integer range 0 to 268 := 0;
  variable __m : integer range 0 to 268 := 0;
  begin
  case __v is
    when KDF_TEST_KEY_SIZE_CONFIG => posn := 0 ;
    when SA_CTRL_IA_RDATA_PART0 => posn := 1 ;
    when SA_CTRL_IA_CONFIG => posn := 2 ;
    when SA_CTRL_IA_WDATA_PART0 => posn := 3 ;
    when SA_CTRL_IA_STATUS => posn := 4 ;
    when SA_CTRL_IA_CAPABILITY => posn := 5 ;
    when SA_GLOBAL_CTRL => posn := 6 ;
    when CDDIP_DECRYPT_KOP_FIFO_OVERRIDE => posn := 7 ;
    when CCEIP_VALIDATE_KOP_FIFO_OVERRIDE => posn := 8 ;
    when CCEIP_ENCRYPT_KOP_FIFO_OVERRIDE => posn := 9 ;
    when IDLE_COMPONENTS => posn := 10 ;
    when SA_COUNT_IA_RDATA_PART1 => posn := 11 ;
    when SA_COUNT_IA_RDATA_PART0 => posn := 12 ;
    when SA_COUNT_IA_CONFIG => posn := 13 ;
    when SA_COUNT_IA_WDATA_PART1 => posn := 14 ;
    when SA_COUNT_IA_WDATA_PART0 => posn := 15 ;
    when SA_COUNT_IA_STATUS => posn := 16 ;
    when SA_COUNT_IA_CAPABILITY => posn := 17 ;
    when SA_SNAPSHOT_IA_RDATA_PART1 => posn := 18 ;
    when SA_SNAPSHOT_IA_RDATA_PART0 => posn := 19 ;
    when SA_SNAPSHOT_IA_CONFIG => posn := 20 ;
    when SA_SNAPSHOT_IA_WDATA_PART1 => posn := 21 ;
    when SA_SNAPSHOT_IA_WDATA_PART0 => posn := 22 ;
    when SA_SNAPSHOT_IA_STATUS => posn := 23 ;
    when SA_SNAPSHOT_IA_CAPABILITY => posn := 24 ;
    when REGS_SA_CTRL => posn := 25 ;
    when TREADY_OVERRIDE => posn := 26 ;
    when IM_CONSUMED => posn := 27 ;
    when IM_AVAILABLE => posn := 28 ;
    when BIMC_DBGCMD0 => posn := 29 ;
    when BIMC_DBGCMD1 => posn := 30 ;
    when BIMC_DBGCMD2 => posn := 31 ;
    when BIMC_POLLRSP0 => posn := 32 ;
    when BIMC_POLLRSP1 => posn := 33 ;
    when BIMC_POLLRSP2 => posn := 34 ;
    when BIMC_RXRSP0 => posn := 35 ;
    when BIMC_RXRSP1 => posn := 36 ;
    when BIMC_RXRSP2 => posn := 37 ;
    when BIMC_RXCMD0 => posn := 38 ;
    when BIMC_RXCMD1 => posn := 39 ;
    when BIMC_RXCMD2 => posn := 40 ;
    when BIMC_CMD0 => posn := 41 ;
    when BIMC_CMD1 => posn := 42 ;
    when BIMC_CMD2 => posn := 43 ;
    when BIMC_ECCPAR_DEBUG => posn := 44 ;
    when BIMC_MEMID => posn := 45 ;
    when BIMC_GLOBAL_CONFIG => posn := 46 ;
    when BIMC_PARITY_ERROR_CNT => posn := 47 ;
    when BIMC_ECC_CORRECTABLE_ERROR_CNT => posn := 48 ;
    when BIMC_ECC_UNCORRECTABLE_ERROR_CNT => posn := 49 ;
    when BIMC_MONITOR_MASK => posn := 50 ;
    when BIMC_MONITOR => posn := 51 ;
    when ENGINE_STICKY_STATUS => posn := 52 ;
    when INTERRUPT_MASK => posn := 53 ;
    when INTERRUPT_STATUS => posn := 54 ;
    when KDF_DRBG_SEED_1_RESEED_INTERVAL_1 => posn := 55 ;
    when KDF_DRBG_SEED_1_RESEED_INTERVAL_0 => posn := 56 ;
    when KDF_DRBG_SEED_1_STATE_VALUE_127_96 => posn := 57 ;
    when KDF_DRBG_SEED_1_STATE_VALUE_95_64 => posn := 58 ;
    when KDF_DRBG_SEED_1_STATE_VALUE_63_32 => posn := 59 ;
    when KDF_DRBG_SEED_1_STATE_VALUE_31_0 => posn := 60 ;
    when KDF_DRBG_SEED_1_STATE_KEY_255_224 => posn := 61 ;
    when KDF_DRBG_SEED_1_STATE_KEY_223_192 => posn := 62 ;
    when KDF_DRBG_SEED_1_STATE_KEY_191_160 => posn := 63 ;
    when KDF_DRBG_SEED_1_STATE_KEY_159_128 => posn := 64 ;
    when KDF_DRBG_SEED_1_STATE_KEY_127_96 => posn := 65 ;
    when KDF_DRBG_SEED_1_STATE_KEY_95_64 => posn := 66 ;
    when KDF_DRBG_SEED_1_STATE_KEY_63_32 => posn := 67 ;
    when KDF_DRBG_SEED_1_STATE_KEY_31_0 => posn := 68 ;
    when KDF_DRBG_SEED_0_RESEED_INTERVAL_1 => posn := 69 ;
    when KDF_DRBG_SEED_0_RESEED_INTERVAL_0 => posn := 70 ;
    when KDF_DRBG_SEED_0_STATE_VALUE_127_96 => posn := 71 ;
    when KDF_DRBG_SEED_0_STATE_VALUE_95_64 => posn := 72 ;
    when KDF_DRBG_SEED_0_STATE_VALUE_63_32 => posn := 73 ;
    when KDF_DRBG_SEED_0_STATE_VALUE_31_0 => posn := 74 ;
    when KDF_DRBG_SEED_0_STATE_KEY_255_224 => posn := 75 ;
    when KDF_DRBG_SEED_0_STATE_KEY_223_192 => posn := 76 ;
    when KDF_DRBG_SEED_0_STATE_KEY_191_160 => posn := 77 ;
    when KDF_DRBG_SEED_0_STATE_KEY_159_128 => posn := 78 ;
    when KDF_DRBG_SEED_0_STATE_KEY_127_96 => posn := 79 ;
    when KDF_DRBG_SEED_0_STATE_KEY_95_64 => posn := 80 ;
    when KDF_DRBG_SEED_0_STATE_KEY_63_32 => posn := 81 ;
    when KDF_DRBG_SEED_0_STATE_KEY_31_0 => posn := 82 ;
    when KDF_DRBG_CTRL => posn := 83 ;
    when LABEL7_DATA0 => posn := 84 ;
    when LABEL7_DATA1 => posn := 85 ;
    when LABEL7_DATA2 => posn := 86 ;
    when LABEL7_DATA3 => posn := 87 ;
    when LABEL7_DATA4 => posn := 88 ;
    when LABEL7_DATA5 => posn := 89 ;
    when LABEL7_DATA6 => posn := 90 ;
    when LABEL7_DATA7 => posn := 91 ;
    when LABEL7_CONFIG => posn := 92 ;
    when LABEL6_DATA0 => posn := 93 ;
    when LABEL6_DATA1 => posn := 94 ;
    when LABEL6_DATA2 => posn := 95 ;
    when LABEL6_DATA3 => posn := 96 ;
    when LABEL6_DATA4 => posn := 97 ;
    when LABEL6_DATA5 => posn := 98 ;
    when LABEL6_DATA6 => posn := 99 ;
    when LABEL6_DATA7 => posn := 100 ;
    when LABEL6_CONFIG => posn := 101 ;
    when LABEL5_DATA0 => posn := 102 ;
    when LABEL5_DATA1 => posn := 103 ;
    when LABEL5_DATA2 => posn := 104 ;
    when LABEL5_DATA3 => posn := 105 ;
    when LABEL5_DATA4 => posn := 106 ;
    when LABEL5_DATA5 => posn := 107 ;
    when LABEL5_DATA6 => posn := 108 ;
    when LABEL5_DATA7 => posn := 109 ;
    when LABEL5_CONFIG => posn := 110 ;
    when LABEL4_DATA0 => posn := 111 ;
    when LABEL4_DATA1 => posn := 112 ;
    when LABEL4_DATA2 => posn := 113 ;
    when LABEL4_DATA3 => posn := 114 ;
    when LABEL4_DATA4 => posn := 115 ;
    when LABEL4_DATA5 => posn := 116 ;
    when LABEL4_DATA6 => posn := 117 ;
    when LABEL4_DATA7 => posn := 118 ;
    when LABEL4_CONFIG => posn := 119 ;
    when LABEL3_DATA0 => posn := 120 ;
    when LABEL3_DATA1 => posn := 121 ;
    when LABEL3_DATA2 => posn := 122 ;
    when LABEL3_DATA3 => posn := 123 ;
    when LABEL3_DATA4 => posn := 124 ;
    when LABEL3_DATA5 => posn := 125 ;
    when LABEL3_DATA6 => posn := 126 ;
    when LABEL3_DATA7 => posn := 127 ;
    when LABEL3_CONFIG => posn := 128 ;
    when LABEL2_DATA0 => posn := 129 ;
    when LABEL2_DATA1 => posn := 130 ;
    when LABEL2_DATA2 => posn := 131 ;
    when LABEL2_DATA3 => posn := 132 ;
    when LABEL2_DATA4 => posn := 133 ;
    when LABEL2_DATA5 => posn := 134 ;
    when LABEL2_DATA6 => posn := 135 ;
    when LABEL2_DATA7 => posn := 136 ;
    when LABEL2_CONFIG => posn := 137 ;
    when LABEL1_DATA0 => posn := 138 ;
    when LABEL1_DATA1 => posn := 139 ;
    when LABEL1_DATA2 => posn := 140 ;
    when LABEL1_DATA3 => posn := 141 ;
    when LABEL1_DATA4 => posn := 142 ;
    when LABEL1_DATA5 => posn := 143 ;
    when LABEL1_DATA6 => posn := 144 ;
    when LABEL1_DATA7 => posn := 145 ;
    when LABEL1_CONFIG => posn := 146 ;
    when LABEL0_DATA0 => posn := 147 ;
    when LABEL0_DATA1 => posn := 148 ;
    when LABEL0_DATA2 => posn := 149 ;
    when LABEL0_DATA3 => posn := 150 ;
    when LABEL0_DATA4 => posn := 151 ;
    when LABEL0_DATA5 => posn := 152 ;
    when LABEL0_DATA6 => posn := 153 ;
    when LABEL0_DATA7 => posn := 154 ;
    when LABEL0_CONFIG => posn := 155 ;
    when KIM_IA_RDATA_PART1 => posn := 156 ;
    when KIM_IA_RDATA_PART0 => posn := 157 ;
    when KIM_IA_CONFIG => posn := 158 ;
    when KIM_IA_WDATA_PART1 => posn := 159 ;
    when KIM_IA_WDATA_PART0 => posn := 160 ;
    when KIM_IA_STATUS => posn := 161 ;
    when KIM_IA_CAPABILITY => posn := 162 ;
    when CKV_IA_RDATA_PART1 => posn := 163 ;
    when CKV_IA_RDATA_PART0 => posn := 164 ;
    when CKV_IA_CONFIG => posn := 165 ;
    when CKV_IA_WDATA_PART1 => posn := 166 ;
    when CKV_IA_WDATA_PART0 => posn := 167 ;
    when CKV_IA_STATUS => posn := 168 ;
    when CKV_IA_CAPABILITY => posn := 169 ;
    when CDDIP3_OUT_IM_READ_DONE => posn := 170 ;
    when CDDIP3_OUT_IM_STATUS => posn := 171 ;
    when CDDIP3_OUT_IM_CONFIG => posn := 172 ;
    when CDDIP3_OUT_IA_RDATA_PART2 => posn := 173 ;
    when CDDIP3_OUT_IA_RDATA_PART1 => posn := 174 ;
    when CDDIP3_OUT_IA_RDATA_PART0 => posn := 175 ;
    when CDDIP3_OUT_IA_CONFIG => posn := 176 ;
    when CDDIP3_OUT_IA_WDATA_PART2 => posn := 177 ;
    when CDDIP3_OUT_IA_WDATA_PART1 => posn := 178 ;
    when CDDIP3_OUT_IA_WDATA_PART0 => posn := 179 ;
    when CDDIP3_OUT_IA_STATUS => posn := 180 ;
    when CDDIP3_OUT_IA_CAPABILITY => posn := 181 ;
    when CDDIP2_OUT_IM_READ_DONE => posn := 182 ;
    when CDDIP2_OUT_IM_STATUS => posn := 183 ;
    when CDDIP2_OUT_IM_CONFIG => posn := 184 ;
    when CDDIP2_OUT_IA_RDATA_PART2 => posn := 185 ;
    when CDDIP2_OUT_IA_RDATA_PART1 => posn := 186 ;
    when CDDIP2_OUT_IA_RDATA_PART0 => posn := 187 ;
    when CDDIP2_OUT_IA_CONFIG => posn := 188 ;
    when CDDIP2_OUT_IA_WDATA_PART2 => posn := 189 ;
    when CDDIP2_OUT_IA_WDATA_PART1 => posn := 190 ;
    when CDDIP2_OUT_IA_WDATA_PART0 => posn := 191 ;
    when CDDIP2_OUT_IA_STATUS => posn := 192 ;
    when CDDIP2_OUT_IA_CAPABILITY => posn := 193 ;
    when CDDIP1_OUT_IM_READ_DONE => posn := 194 ;
    when CDDIP1_OUT_IM_STATUS => posn := 195 ;
    when CDDIP1_OUT_IM_CONFIG => posn := 196 ;
    when CDDIP1_OUT_IA_RDATA_PART2 => posn := 197 ;
    when CDDIP1_OUT_IA_RDATA_PART1 => posn := 198 ;
    when CDDIP1_OUT_IA_RDATA_PART0 => posn := 199 ;
    when CDDIP1_OUT_IA_CONFIG => posn := 200 ;
    when CDDIP1_OUT_IA_WDATA_PART2 => posn := 201 ;
    when CDDIP1_OUT_IA_WDATA_PART1 => posn := 202 ;
    when CDDIP1_OUT_IA_WDATA_PART0 => posn := 203 ;
    when CDDIP1_OUT_IA_STATUS => posn := 204 ;
    when CDDIP1_OUT_IA_CAPABILITY => posn := 205 ;
    when CDDIP0_OUT_IM_READ_DONE => posn := 206 ;
    when CDDIP0_OUT_IM_STATUS => posn := 207 ;
    when CDDIP0_OUT_IM_CONFIG => posn := 208 ;
    when CDDIP0_OUT_IA_RDATA_PART2 => posn := 209 ;
    when CDDIP0_OUT_IA_RDATA_PART1 => posn := 210 ;
    when CDDIP0_OUT_IA_RDATA_PART0 => posn := 211 ;
    when CDDIP0_OUT_IA_CONFIG => posn := 212 ;
    when CDDIP0_OUT_IA_WDATA_PART2 => posn := 213 ;
    when CDDIP0_OUT_IA_WDATA_PART1 => posn := 214 ;
    when CDDIP0_OUT_IA_WDATA_PART0 => posn := 215 ;
    when CDDIP0_OUT_IA_STATUS => posn := 216 ;
    when CDDIP0_OUT_IA_CAPABILITY => posn := 217 ;
    when CCEIP3_OUT_IM_READ_DONE => posn := 218 ;
    when CCEIP3_OUT_IM_STATUS => posn := 219 ;
    when CCEIP3_OUT_IM_CONFIG => posn := 220 ;
    when CCEIP3_OUT_IA_RDATA_PART2 => posn := 221 ;
    when CCEIP3_OUT_IA_RDATA_PART1 => posn := 222 ;
    when CCEIP3_OUT_IA_RDATA_PART0 => posn := 223 ;
    when CCEIP3_OUT_IA_CONFIG => posn := 224 ;
    when CCEIP3_OUT_IA_WDATA_PART2 => posn := 225 ;
    when CCEIP3_OUT_IA_WDATA_PART1 => posn := 226 ;
    when CCEIP3_OUT_IA_WDATA_PART0 => posn := 227 ;
    when CCEIP3_OUT_IA_STATUS => posn := 228 ;
    when CCEIP3_OUT_IA_CAPABILITY => posn := 229 ;
    when CCEIP2_OUT_IM_READ_DONE => posn := 230 ;
    when CCEIP2_OUT_IM_STATUS => posn := 231 ;
    when CCEIP2_OUT_IM_CONFIG => posn := 232 ;
    when CCEIP2_OUT_IA_RDATA_PART2 => posn := 233 ;
    when CCEIP2_OUT_IA_RDATA_PART1 => posn := 234 ;
    when CCEIP2_OUT_IA_RDATA_PART0 => posn := 235 ;
    when CCEIP2_OUT_IA_CONFIG => posn := 236 ;
    when CCEIP2_OUT_IA_WDATA_PART2 => posn := 237 ;
    when CCEIP2_OUT_IA_WDATA_PART1 => posn := 238 ;
    when CCEIP2_OUT_IA_WDATA_PART0 => posn := 239 ;
    when CCEIP2_OUT_IA_STATUS => posn := 240 ;
    when CCEIP2_OUT_IA_CAPABILITY => posn := 241 ;
    when CCEIP1_OUT_IM_READ_DONE => posn := 242 ;
    when CCEIP1_OUT_IM_STATUS => posn := 243 ;
    when CCEIP1_OUT_IM_CONFIG => posn := 244 ;
    when CCEIP1_OUT_IA_RDATA_PART2 => posn := 245 ;
    when CCEIP1_OUT_IA_RDATA_PART1 => posn := 246 ;
    when CCEIP1_OUT_IA_RDATA_PART0 => posn := 247 ;
    when CCEIP1_OUT_IA_CONFIG => posn := 248 ;
    when CCEIP1_OUT_IA_WDATA_PART2 => posn := 249 ;
    when CCEIP1_OUT_IA_WDATA_PART1 => posn := 250 ;
    when CCEIP1_OUT_IA_WDATA_PART0 => posn := 251 ;
    when CCEIP1_OUT_IA_STATUS => posn := 252 ;
    when CCEIP1_OUT_IA_CAPABILITY => posn := 253 ;
    when CCEIP0_OUT_IM_READ_DONE => posn := 254 ;
    when CCEIP0_OUT_IM_STATUS => posn := 255 ;
    when CCEIP0_OUT_IM_CONFIG => posn := 256 ;
    when CCEIP0_OUT_IA_RDATA_PART2 => posn := 257 ;
    when CCEIP0_OUT_IA_RDATA_PART1 => posn := 258 ;
    when CCEIP0_OUT_IA_RDATA_PART0 => posn := 259 ;
    when CCEIP0_OUT_IA_CONFIG => posn := 260 ;
    when CCEIP0_OUT_IA_WDATA_PART2 => posn := 261 ;
    when CCEIP0_OUT_IA_WDATA_PART1 => posn := 262 ;
    when CCEIP0_OUT_IA_WDATA_PART0 => posn := 263 ;
    when CCEIP0_OUT_IA_STATUS => posn := 264 ;
    when CCEIP0_OUT_IA_CAPABILITY => posn := 265 ;
    when SPARE_CONFIG => posn := 266 ;
    when REVISION_CONFIG => posn := 267 ;
    when BLKID_REVID_CONFIG => posn := 268 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 269 ;
  case __m is
    when 0 => return KDF_TEST_KEY_SIZE_CONFIG ;
    when 1 => return SA_CTRL_IA_RDATA_PART0 ;
    when 2 => return SA_CTRL_IA_CONFIG ;
    when 3 => return SA_CTRL_IA_WDATA_PART0 ;
    when 4 => return SA_CTRL_IA_STATUS ;
    when 5 => return SA_CTRL_IA_CAPABILITY ;
    when 6 => return SA_GLOBAL_CTRL ;
    when 7 => return CDDIP_DECRYPT_KOP_FIFO_OVERRIDE ;
    when 8 => return CCEIP_VALIDATE_KOP_FIFO_OVERRIDE ;
    when 9 => return CCEIP_ENCRYPT_KOP_FIFO_OVERRIDE ;
    when 10 => return IDLE_COMPONENTS ;
    when 11 => return SA_COUNT_IA_RDATA_PART1 ;
    when 12 => return SA_COUNT_IA_RDATA_PART0 ;
    when 13 => return SA_COUNT_IA_CONFIG ;
    when 14 => return SA_COUNT_IA_WDATA_PART1 ;
    when 15 => return SA_COUNT_IA_WDATA_PART0 ;
    when 16 => return SA_COUNT_IA_STATUS ;
    when 17 => return SA_COUNT_IA_CAPABILITY ;
    when 18 => return SA_SNAPSHOT_IA_RDATA_PART1 ;
    when 19 => return SA_SNAPSHOT_IA_RDATA_PART0 ;
    when 20 => return SA_SNAPSHOT_IA_CONFIG ;
    when 21 => return SA_SNAPSHOT_IA_WDATA_PART1 ;
    when 22 => return SA_SNAPSHOT_IA_WDATA_PART0 ;
    when 23 => return SA_SNAPSHOT_IA_STATUS ;
    when 24 => return SA_SNAPSHOT_IA_CAPABILITY ;
    when 25 => return REGS_SA_CTRL ;
    when 26 => return TREADY_OVERRIDE ;
    when 27 => return IM_CONSUMED ;
    when 28 => return IM_AVAILABLE ;
    when 29 => return BIMC_DBGCMD0 ;
    when 30 => return BIMC_DBGCMD1 ;
    when 31 => return BIMC_DBGCMD2 ;
    when 32 => return BIMC_POLLRSP0 ;
    when 33 => return BIMC_POLLRSP1 ;
    when 34 => return BIMC_POLLRSP2 ;
    when 35 => return BIMC_RXRSP0 ;
    when 36 => return BIMC_RXRSP1 ;
    when 37 => return BIMC_RXRSP2 ;
    when 38 => return BIMC_RXCMD0 ;
    when 39 => return BIMC_RXCMD1 ;
    when 40 => return BIMC_RXCMD2 ;
    when 41 => return BIMC_CMD0 ;
    when 42 => return BIMC_CMD1 ;
    when 43 => return BIMC_CMD2 ;
    when 44 => return BIMC_ECCPAR_DEBUG ;
    when 45 => return BIMC_MEMID ;
    when 46 => return BIMC_GLOBAL_CONFIG ;
    when 47 => return BIMC_PARITY_ERROR_CNT ;
    when 48 => return BIMC_ECC_CORRECTABLE_ERROR_CNT ;
    when 49 => return BIMC_ECC_UNCORRECTABLE_ERROR_CNT ;
    when 50 => return BIMC_MONITOR_MASK ;
    when 51 => return BIMC_MONITOR ;
    when 52 => return ENGINE_STICKY_STATUS ;
    when 53 => return INTERRUPT_MASK ;
    when 54 => return INTERRUPT_STATUS ;
    when 55 => return KDF_DRBG_SEED_1_RESEED_INTERVAL_1 ;
    when 56 => return KDF_DRBG_SEED_1_RESEED_INTERVAL_0 ;
    when 57 => return KDF_DRBG_SEED_1_STATE_VALUE_127_96 ;
    when 58 => return KDF_DRBG_SEED_1_STATE_VALUE_95_64 ;
    when 59 => return KDF_DRBG_SEED_1_STATE_VALUE_63_32 ;
    when 60 => return KDF_DRBG_SEED_1_STATE_VALUE_31_0 ;
    when 61 => return KDF_DRBG_SEED_1_STATE_KEY_255_224 ;
    when 62 => return KDF_DRBG_SEED_1_STATE_KEY_223_192 ;
    when 63 => return KDF_DRBG_SEED_1_STATE_KEY_191_160 ;
    when 64 => return KDF_DRBG_SEED_1_STATE_KEY_159_128 ;
    when 65 => return KDF_DRBG_SEED_1_STATE_KEY_127_96 ;
    when 66 => return KDF_DRBG_SEED_1_STATE_KEY_95_64 ;
    when 67 => return KDF_DRBG_SEED_1_STATE_KEY_63_32 ;
    when 68 => return KDF_DRBG_SEED_1_STATE_KEY_31_0 ;
    when 69 => return KDF_DRBG_SEED_0_RESEED_INTERVAL_1 ;
    when 70 => return KDF_DRBG_SEED_0_RESEED_INTERVAL_0 ;
    when 71 => return KDF_DRBG_SEED_0_STATE_VALUE_127_96 ;
    when 72 => return KDF_DRBG_SEED_0_STATE_VALUE_95_64 ;
    when 73 => return KDF_DRBG_SEED_0_STATE_VALUE_63_32 ;
    when 74 => return KDF_DRBG_SEED_0_STATE_VALUE_31_0 ;
    when 75 => return KDF_DRBG_SEED_0_STATE_KEY_255_224 ;
    when 76 => return KDF_DRBG_SEED_0_STATE_KEY_223_192 ;
    when 77 => return KDF_DRBG_SEED_0_STATE_KEY_191_160 ;
    when 78 => return KDF_DRBG_SEED_0_STATE_KEY_159_128 ;
    when 79 => return KDF_DRBG_SEED_0_STATE_KEY_127_96 ;
    when 80 => return KDF_DRBG_SEED_0_STATE_KEY_95_64 ;
    when 81 => return KDF_DRBG_SEED_0_STATE_KEY_63_32 ;
    when 82 => return KDF_DRBG_SEED_0_STATE_KEY_31_0 ;
    when 83 => return KDF_DRBG_CTRL ;
    when 84 => return LABEL7_DATA0 ;
    when 85 => return LABEL7_DATA1 ;
    when 86 => return LABEL7_DATA2 ;
    when 87 => return LABEL7_DATA3 ;
    when 88 => return LABEL7_DATA4 ;
    when 89 => return LABEL7_DATA5 ;
    when 90 => return LABEL7_DATA6 ;
    when 91 => return LABEL7_DATA7 ;
    when 92 => return LABEL7_CONFIG ;
    when 93 => return LABEL6_DATA0 ;
    when 94 => return LABEL6_DATA1 ;
    when 95 => return LABEL6_DATA2 ;
    when 96 => return LABEL6_DATA3 ;
    when 97 => return LABEL6_DATA4 ;
    when 98 => return LABEL6_DATA5 ;
    when 99 => return LABEL6_DATA6 ;
    when 100 => return LABEL6_DATA7 ;
    when 101 => return LABEL6_CONFIG ;
    when 102 => return LABEL5_DATA0 ;
    when 103 => return LABEL5_DATA1 ;
    when 104 => return LABEL5_DATA2 ;
    when 105 => return LABEL5_DATA3 ;
    when 106 => return LABEL5_DATA4 ;
    when 107 => return LABEL5_DATA5 ;
    when 108 => return LABEL5_DATA6 ;
    when 109 => return LABEL5_DATA7 ;
    when 110 => return LABEL5_CONFIG ;
    when 111 => return LABEL4_DATA0 ;
    when 112 => return LABEL4_DATA1 ;
    when 113 => return LABEL4_DATA2 ;
    when 114 => return LABEL4_DATA3 ;
    when 115 => return LABEL4_DATA4 ;
    when 116 => return LABEL4_DATA5 ;
    when 117 => return LABEL4_DATA6 ;
    when 118 => return LABEL4_DATA7 ;
    when 119 => return LABEL4_CONFIG ;
    when 120 => return LABEL3_DATA0 ;
    when 121 => return LABEL3_DATA1 ;
    when 122 => return LABEL3_DATA2 ;
    when 123 => return LABEL3_DATA3 ;
    when 124 => return LABEL3_DATA4 ;
    when 125 => return LABEL3_DATA5 ;
    when 126 => return LABEL3_DATA6 ;
    when 127 => return LABEL3_DATA7 ;
    when 128 => return LABEL3_CONFIG ;
    when 129 => return LABEL2_DATA0 ;
    when 130 => return LABEL2_DATA1 ;
    when 131 => return LABEL2_DATA2 ;
    when 132 => return LABEL2_DATA3 ;
    when 133 => return LABEL2_DATA4 ;
    when 134 => return LABEL2_DATA5 ;
    when 135 => return LABEL2_DATA6 ;
    when 136 => return LABEL2_DATA7 ;
    when 137 => return LABEL2_CONFIG ;
    when 138 => return LABEL1_DATA0 ;
    when 139 => return LABEL1_DATA1 ;
    when 140 => return LABEL1_DATA2 ;
    when 141 => return LABEL1_DATA3 ;
    when 142 => return LABEL1_DATA4 ;
    when 143 => return LABEL1_DATA5 ;
    when 144 => return LABEL1_DATA6 ;
    when 145 => return LABEL1_DATA7 ;
    when 146 => return LABEL1_CONFIG ;
    when 147 => return LABEL0_DATA0 ;
    when 148 => return LABEL0_DATA1 ;
    when 149 => return LABEL0_DATA2 ;
    when 150 => return LABEL0_DATA3 ;
    when 151 => return LABEL0_DATA4 ;
    when 152 => return LABEL0_DATA5 ;
    when 153 => return LABEL0_DATA6 ;
    when 154 => return LABEL0_DATA7 ;
    when 155 => return LABEL0_CONFIG ;
    when 156 => return KIM_IA_RDATA_PART1 ;
    when 157 => return KIM_IA_RDATA_PART0 ;
    when 158 => return KIM_IA_CONFIG ;
    when 159 => return KIM_IA_WDATA_PART1 ;
    when 160 => return KIM_IA_WDATA_PART0 ;
    when 161 => return KIM_IA_STATUS ;
    when 162 => return KIM_IA_CAPABILITY ;
    when 163 => return CKV_IA_RDATA_PART1 ;
    when 164 => return CKV_IA_RDATA_PART0 ;
    when 165 => return CKV_IA_CONFIG ;
    when 166 => return CKV_IA_WDATA_PART1 ;
    when 167 => return CKV_IA_WDATA_PART0 ;
    when 168 => return CKV_IA_STATUS ;
    when 169 => return CKV_IA_CAPABILITY ;
    when 170 => return CDDIP3_OUT_IM_READ_DONE ;
    when 171 => return CDDIP3_OUT_IM_STATUS ;
    when 172 => return CDDIP3_OUT_IM_CONFIG ;
    when 173 => return CDDIP3_OUT_IA_RDATA_PART2 ;
    when 174 => return CDDIP3_OUT_IA_RDATA_PART1 ;
    when 175 => return CDDIP3_OUT_IA_RDATA_PART0 ;
    when 176 => return CDDIP3_OUT_IA_CONFIG ;
    when 177 => return CDDIP3_OUT_IA_WDATA_PART2 ;
    when 178 => return CDDIP3_OUT_IA_WDATA_PART1 ;
    when 179 => return CDDIP3_OUT_IA_WDATA_PART0 ;
    when 180 => return CDDIP3_OUT_IA_STATUS ;
    when 181 => return CDDIP3_OUT_IA_CAPABILITY ;
    when 182 => return CDDIP2_OUT_IM_READ_DONE ;
    when 183 => return CDDIP2_OUT_IM_STATUS ;
    when 184 => return CDDIP2_OUT_IM_CONFIG ;
    when 185 => return CDDIP2_OUT_IA_RDATA_PART2 ;
    when 186 => return CDDIP2_OUT_IA_RDATA_PART1 ;
    when 187 => return CDDIP2_OUT_IA_RDATA_PART0 ;
    when 188 => return CDDIP2_OUT_IA_CONFIG ;
    when 189 => return CDDIP2_OUT_IA_WDATA_PART2 ;
    when 190 => return CDDIP2_OUT_IA_WDATA_PART1 ;
    when 191 => return CDDIP2_OUT_IA_WDATA_PART0 ;
    when 192 => return CDDIP2_OUT_IA_STATUS ;
    when 193 => return CDDIP2_OUT_IA_CAPABILITY ;
    when 194 => return CDDIP1_OUT_IM_READ_DONE ;
    when 195 => return CDDIP1_OUT_IM_STATUS ;
    when 196 => return CDDIP1_OUT_IM_CONFIG ;
    when 197 => return CDDIP1_OUT_IA_RDATA_PART2 ;
    when 198 => return CDDIP1_OUT_IA_RDATA_PART1 ;
    when 199 => return CDDIP1_OUT_IA_RDATA_PART0 ;
    when 200 => return CDDIP1_OUT_IA_CONFIG ;
    when 201 => return CDDIP1_OUT_IA_WDATA_PART2 ;
    when 202 => return CDDIP1_OUT_IA_WDATA_PART1 ;
    when 203 => return CDDIP1_OUT_IA_WDATA_PART0 ;
    when 204 => return CDDIP1_OUT_IA_STATUS ;
    when 205 => return CDDIP1_OUT_IA_CAPABILITY ;
    when 206 => return CDDIP0_OUT_IM_READ_DONE ;
    when 207 => return CDDIP0_OUT_IM_STATUS ;
    when 208 => return CDDIP0_OUT_IM_CONFIG ;
    when 209 => return CDDIP0_OUT_IA_RDATA_PART2 ;
    when 210 => return CDDIP0_OUT_IA_RDATA_PART1 ;
    when 211 => return CDDIP0_OUT_IA_RDATA_PART0 ;
    when 212 => return CDDIP0_OUT_IA_CONFIG ;
    when 213 => return CDDIP0_OUT_IA_WDATA_PART2 ;
    when 214 => return CDDIP0_OUT_IA_WDATA_PART1 ;
    when 215 => return CDDIP0_OUT_IA_WDATA_PART0 ;
    when 216 => return CDDIP0_OUT_IA_STATUS ;
    when 217 => return CDDIP0_OUT_IA_CAPABILITY ;
    when 218 => return CCEIP3_OUT_IM_READ_DONE ;
    when 219 => return CCEIP3_OUT_IM_STATUS ;
    when 220 => return CCEIP3_OUT_IM_CONFIG ;
    when 221 => return CCEIP3_OUT_IA_RDATA_PART2 ;
    when 222 => return CCEIP3_OUT_IA_RDATA_PART1 ;
    when 223 => return CCEIP3_OUT_IA_RDATA_PART0 ;
    when 224 => return CCEIP3_OUT_IA_CONFIG ;
    when 225 => return CCEIP3_OUT_IA_WDATA_PART2 ;
    when 226 => return CCEIP3_OUT_IA_WDATA_PART1 ;
    when 227 => return CCEIP3_OUT_IA_WDATA_PART0 ;
    when 228 => return CCEIP3_OUT_IA_STATUS ;
    when 229 => return CCEIP3_OUT_IA_CAPABILITY ;
    when 230 => return CCEIP2_OUT_IM_READ_DONE ;
    when 231 => return CCEIP2_OUT_IM_STATUS ;
    when 232 => return CCEIP2_OUT_IM_CONFIG ;
    when 233 => return CCEIP2_OUT_IA_RDATA_PART2 ;
    when 234 => return CCEIP2_OUT_IA_RDATA_PART1 ;
    when 235 => return CCEIP2_OUT_IA_RDATA_PART0 ;
    when 236 => return CCEIP2_OUT_IA_CONFIG ;
    when 237 => return CCEIP2_OUT_IA_WDATA_PART2 ;
    when 238 => return CCEIP2_OUT_IA_WDATA_PART1 ;
    when 239 => return CCEIP2_OUT_IA_WDATA_PART0 ;
    when 240 => return CCEIP2_OUT_IA_STATUS ;
    when 241 => return CCEIP2_OUT_IA_CAPABILITY ;
    when 242 => return CCEIP1_OUT_IM_READ_DONE ;
    when 243 => return CCEIP1_OUT_IM_STATUS ;
    when 244 => return CCEIP1_OUT_IM_CONFIG ;
    when 245 => return CCEIP1_OUT_IA_RDATA_PART2 ;
    when 246 => return CCEIP1_OUT_IA_RDATA_PART1 ;
    when 247 => return CCEIP1_OUT_IA_RDATA_PART0 ;
    when 248 => return CCEIP1_OUT_IA_CONFIG ;
    when 249 => return CCEIP1_OUT_IA_WDATA_PART2 ;
    when 250 => return CCEIP1_OUT_IA_WDATA_PART1 ;
    when 251 => return CCEIP1_OUT_IA_WDATA_PART0 ;
    when 252 => return CCEIP1_OUT_IA_STATUS ;
    when 253 => return CCEIP1_OUT_IA_CAPABILITY ;
    when 254 => return CCEIP0_OUT_IM_READ_DONE ;
    when 255 => return CCEIP0_OUT_IM_STATUS ;
    when 256 => return CCEIP0_OUT_IM_CONFIG ;
    when 257 => return CCEIP0_OUT_IA_RDATA_PART2 ;
    when 258 => return CCEIP0_OUT_IA_RDATA_PART1 ;
    when 259 => return CCEIP0_OUT_IA_RDATA_PART0 ;
    when 260 => return CCEIP0_OUT_IA_CONFIG ;
    when 261 => return CCEIP0_OUT_IA_WDATA_PART2 ;
    when 262 => return CCEIP0_OUT_IA_WDATA_PART1 ;
    when 263 => return CCEIP0_OUT_IA_WDATA_PART0 ;
    when 264 => return CCEIP0_OUT_IA_STATUS ;
    when 265 => return CCEIP0_OUT_IA_CAPABILITY ;
    when 266 => return SPARE_CONFIG ;
    when 267 => return REVISION_CONFIG ;
    when 268 => return BLKID_REVID_CONFIG ;
    when others => return KDF_TEST_KEY_SIZE_CONFIG ;
  end case;
  end;
  -- name() function DUMMY138 for enum type address_e
  function DUMMY138 (__v : address_e) return std_logic_vector is
  begin
  case __v is
    when BLKID_REVID_CONFIG => return ext
    (X"424C4B49445F52455649445F434F4E464947", 272) ;
    when REVISION_CONFIG => return ext(X"5245564953494F4E5F434F4E464947", 272) ;
    when SPARE_CONFIG => return ext(X"53504152455F434F4E464947", 272) ;
    when CCEIP0_OUT_IA_CAPABILITY => return ext
    (X"4343454950305F4F55545F49415F4341504142494C495459", 272) ;
    when CCEIP0_OUT_IA_STATUS => return ext
    (X"4343454950305F4F55545F49415F535441545553", 272) ;
    when CCEIP0_OUT_IA_WDATA_PART0 => return ext
    (X"4343454950305F4F55545F49415F57444154415F5041525430", 272) ;
    when CCEIP0_OUT_IA_WDATA_PART1 => return ext
    (X"4343454950305F4F55545F49415F57444154415F5041525431", 272) ;
    when CCEIP0_OUT_IA_WDATA_PART2 => return ext
    (X"4343454950305F4F55545F49415F57444154415F5041525432", 272) ;
    when CCEIP0_OUT_IA_CONFIG => return ext
    (X"4343454950305F4F55545F49415F434F4E464947", 272) ;
    when CCEIP0_OUT_IA_RDATA_PART0 => return ext
    (X"4343454950305F4F55545F49415F52444154415F5041525430", 272) ;
    when CCEIP0_OUT_IA_RDATA_PART1 => return ext
    (X"4343454950305F4F55545F49415F52444154415F5041525431", 272) ;
    when CCEIP0_OUT_IA_RDATA_PART2 => return ext
    (X"4343454950305F4F55545F49415F52444154415F5041525432", 272) ;
    when CCEIP0_OUT_IM_CONFIG => return ext
    (X"4343454950305F4F55545F494D5F434F4E464947", 272) ;
    when CCEIP0_OUT_IM_STATUS => return ext
    (X"4343454950305F4F55545F494D5F535441545553", 272) ;
    when CCEIP0_OUT_IM_READ_DONE => return ext
    (X"4343454950305F4F55545F494D5F524541445F444F4E45", 272) ;
    when CCEIP1_OUT_IA_CAPABILITY => return ext
    (X"4343454950315F4F55545F49415F4341504142494C495459", 272) ;
    when CCEIP1_OUT_IA_STATUS => return ext
    (X"4343454950315F4F55545F49415F535441545553", 272) ;
    when CCEIP1_OUT_IA_WDATA_PART0 => return ext
    (X"4343454950315F4F55545F49415F57444154415F5041525430", 272) ;
    when CCEIP1_OUT_IA_WDATA_PART1 => return ext
    (X"4343454950315F4F55545F49415F57444154415F5041525431", 272) ;
    when CCEIP1_OUT_IA_WDATA_PART2 => return ext
    (X"4343454950315F4F55545F49415F57444154415F5041525432", 272) ;
    when CCEIP1_OUT_IA_CONFIG => return ext
    (X"4343454950315F4F55545F49415F434F4E464947", 272) ;
    when CCEIP1_OUT_IA_RDATA_PART0 => return ext
    (X"4343454950315F4F55545F49415F52444154415F5041525430", 272) ;
    when CCEIP1_OUT_IA_RDATA_PART1 => return ext
    (X"4343454950315F4F55545F49415F52444154415F5041525431", 272) ;
    when CCEIP1_OUT_IA_RDATA_PART2 => return ext
    (X"4343454950315F4F55545F49415F52444154415F5041525432", 272) ;
    when CCEIP1_OUT_IM_CONFIG => return ext
    (X"4343454950315F4F55545F494D5F434F4E464947", 272) ;
    when CCEIP1_OUT_IM_STATUS => return ext
    (X"4343454950315F4F55545F494D5F535441545553", 272) ;
    when CCEIP1_OUT_IM_READ_DONE => return ext
    (X"4343454950315F4F55545F494D5F524541445F444F4E45", 272) ;
    when CCEIP2_OUT_IA_CAPABILITY => return ext
    (X"4343454950325F4F55545F49415F4341504142494C495459", 272) ;
    when CCEIP2_OUT_IA_STATUS => return ext
    (X"4343454950325F4F55545F49415F535441545553", 272) ;
    when CCEIP2_OUT_IA_WDATA_PART0 => return ext
    (X"4343454950325F4F55545F49415F57444154415F5041525430", 272) ;
    when CCEIP2_OUT_IA_WDATA_PART1 => return ext
    (X"4343454950325F4F55545F49415F57444154415F5041525431", 272) ;
    when CCEIP2_OUT_IA_WDATA_PART2 => return ext
    (X"4343454950325F4F55545F49415F57444154415F5041525432", 272) ;
    when CCEIP2_OUT_IA_CONFIG => return ext
    (X"4343454950325F4F55545F49415F434F4E464947", 272) ;
    when CCEIP2_OUT_IA_RDATA_PART0 => return ext
    (X"4343454950325F4F55545F49415F52444154415F5041525430", 272) ;
    when CCEIP2_OUT_IA_RDATA_PART1 => return ext
    (X"4343454950325F4F55545F49415F52444154415F5041525431", 272) ;
    when CCEIP2_OUT_IA_RDATA_PART2 => return ext
    (X"4343454950325F4F55545F49415F52444154415F5041525432", 272) ;
    when CCEIP2_OUT_IM_CONFIG => return ext
    (X"4343454950325F4F55545F494D5F434F4E464947", 272) ;
    when CCEIP2_OUT_IM_STATUS => return ext
    (X"4343454950325F4F55545F494D5F535441545553", 272) ;
    when CCEIP2_OUT_IM_READ_DONE => return ext
    (X"4343454950325F4F55545F494D5F524541445F444F4E45", 272) ;
    when CCEIP3_OUT_IA_CAPABILITY => return ext
    (X"4343454950335F4F55545F49415F4341504142494C495459", 272) ;
    when CCEIP3_OUT_IA_STATUS => return ext
    (X"4343454950335F4F55545F49415F535441545553", 272) ;
    when CCEIP3_OUT_IA_WDATA_PART0 => return ext
    (X"4343454950335F4F55545F49415F57444154415F5041525430", 272) ;
    when CCEIP3_OUT_IA_WDATA_PART1 => return ext
    (X"4343454950335F4F55545F49415F57444154415F5041525431", 272) ;
    when CCEIP3_OUT_IA_WDATA_PART2 => return ext
    (X"4343454950335F4F55545F49415F57444154415F5041525432", 272) ;
    when CCEIP3_OUT_IA_CONFIG => return ext
    (X"4343454950335F4F55545F49415F434F4E464947", 272) ;
    when CCEIP3_OUT_IA_RDATA_PART0 => return ext
    (X"4343454950335F4F55545F49415F52444154415F5041525430", 272) ;
    when CCEIP3_OUT_IA_RDATA_PART1 => return ext
    (X"4343454950335F4F55545F49415F52444154415F5041525431", 272) ;
    when CCEIP3_OUT_IA_RDATA_PART2 => return ext
    (X"4343454950335F4F55545F49415F52444154415F5041525432", 272) ;
    when CCEIP3_OUT_IM_CONFIG => return ext
    (X"4343454950335F4F55545F494D5F434F4E464947", 272) ;
    when CCEIP3_OUT_IM_STATUS => return ext
    (X"4343454950335F4F55545F494D5F535441545553", 272) ;
    when CCEIP3_OUT_IM_READ_DONE => return ext
    (X"4343454950335F4F55545F494D5F524541445F444F4E45", 272) ;
    when CDDIP0_OUT_IA_CAPABILITY => return ext
    (X"4344444950305F4F55545F49415F4341504142494C495459", 272) ;
    when CDDIP0_OUT_IA_STATUS => return ext
    (X"4344444950305F4F55545F49415F535441545553", 272) ;
    when CDDIP0_OUT_IA_WDATA_PART0 => return ext
    (X"4344444950305F4F55545F49415F57444154415F5041525430", 272) ;
    when CDDIP0_OUT_IA_WDATA_PART1 => return ext
    (X"4344444950305F4F55545F49415F57444154415F5041525431", 272) ;
    when CDDIP0_OUT_IA_WDATA_PART2 => return ext
    (X"4344444950305F4F55545F49415F57444154415F5041525432", 272) ;
    when CDDIP0_OUT_IA_CONFIG => return ext
    (X"4344444950305F4F55545F49415F434F4E464947", 272) ;
    when CDDIP0_OUT_IA_RDATA_PART0 => return ext
    (X"4344444950305F4F55545F49415F52444154415F5041525430", 272) ;
    when CDDIP0_OUT_IA_RDATA_PART1 => return ext
    (X"4344444950305F4F55545F49415F52444154415F5041525431", 272) ;
    when CDDIP0_OUT_IA_RDATA_PART2 => return ext
    (X"4344444950305F4F55545F49415F52444154415F5041525432", 272) ;
    when CDDIP0_OUT_IM_CONFIG => return ext
    (X"4344444950305F4F55545F494D5F434F4E464947", 272) ;
    when CDDIP0_OUT_IM_STATUS => return ext
    (X"4344444950305F4F55545F494D5F535441545553", 272) ;
    when CDDIP0_OUT_IM_READ_DONE => return ext
    (X"4344444950305F4F55545F494D5F524541445F444F4E45", 272) ;
    when CDDIP1_OUT_IA_CAPABILITY => return ext
    (X"4344444950315F4F55545F49415F4341504142494C495459", 272) ;
    when CDDIP1_OUT_IA_STATUS => return ext
    (X"4344444950315F4F55545F49415F535441545553", 272) ;
    when CDDIP1_OUT_IA_WDATA_PART0 => return ext
    (X"4344444950315F4F55545F49415F57444154415F5041525430", 272) ;
    when CDDIP1_OUT_IA_WDATA_PART1 => return ext
    (X"4344444950315F4F55545F49415F57444154415F5041525431", 272) ;
    when CDDIP1_OUT_IA_WDATA_PART2 => return ext
    (X"4344444950315F4F55545F49415F57444154415F5041525432", 272) ;
    when CDDIP1_OUT_IA_CONFIG => return ext
    (X"4344444950315F4F55545F49415F434F4E464947", 272) ;
    when CDDIP1_OUT_IA_RDATA_PART0 => return ext
    (X"4344444950315F4F55545F49415F52444154415F5041525430", 272) ;
    when CDDIP1_OUT_IA_RDATA_PART1 => return ext
    (X"4344444950315F4F55545F49415F52444154415F5041525431", 272) ;
    when CDDIP1_OUT_IA_RDATA_PART2 => return ext
    (X"4344444950315F4F55545F49415F52444154415F5041525432", 272) ;
    when CDDIP1_OUT_IM_CONFIG => return ext
    (X"4344444950315F4F55545F494D5F434F4E464947", 272) ;
    when CDDIP1_OUT_IM_STATUS => return ext
    (X"4344444950315F4F55545F494D5F535441545553", 272) ;
    when CDDIP1_OUT_IM_READ_DONE => return ext
    (X"4344444950315F4F55545F494D5F524541445F444F4E45", 272) ;
    when CDDIP2_OUT_IA_CAPABILITY => return ext
    (X"4344444950325F4F55545F49415F4341504142494C495459", 272) ;
    when CDDIP2_OUT_IA_STATUS => return ext
    (X"4344444950325F4F55545F49415F535441545553", 272) ;
    when CDDIP2_OUT_IA_WDATA_PART0 => return ext
    (X"4344444950325F4F55545F49415F57444154415F5041525430", 272) ;
    when CDDIP2_OUT_IA_WDATA_PART1 => return ext
    (X"4344444950325F4F55545F49415F57444154415F5041525431", 272) ;
    when CDDIP2_OUT_IA_WDATA_PART2 => return ext
    (X"4344444950325F4F55545F49415F57444154415F5041525432", 272) ;
    when CDDIP2_OUT_IA_CONFIG => return ext
    (X"4344444950325F4F55545F49415F434F4E464947", 272) ;
    when CDDIP2_OUT_IA_RDATA_PART0 => return ext
    (X"4344444950325F4F55545F49415F52444154415F5041525430", 272) ;
    when CDDIP2_OUT_IA_RDATA_PART1 => return ext
    (X"4344444950325F4F55545F49415F52444154415F5041525431", 272) ;
    when CDDIP2_OUT_IA_RDATA_PART2 => return ext
    (X"4344444950325F4F55545F49415F52444154415F5041525432", 272) ;
    when CDDIP2_OUT_IM_CONFIG => return ext
    (X"4344444950325F4F55545F494D5F434F4E464947", 272) ;
    when CDDIP2_OUT_IM_STATUS => return ext
    (X"4344444950325F4F55545F494D5F535441545553", 272) ;
    when CDDIP2_OUT_IM_READ_DONE => return ext
    (X"4344444950325F4F55545F494D5F524541445F444F4E45", 272) ;
    when CDDIP3_OUT_IA_CAPABILITY => return ext
    (X"4344444950335F4F55545F49415F4341504142494C495459", 272) ;
    when CDDIP3_OUT_IA_STATUS => return ext
    (X"4344444950335F4F55545F49415F535441545553", 272) ;
    when CDDIP3_OUT_IA_WDATA_PART0 => return ext
    (X"4344444950335F4F55545F49415F57444154415F5041525430", 272) ;
    when CDDIP3_OUT_IA_WDATA_PART1 => return ext
    (X"4344444950335F4F55545F49415F57444154415F5041525431", 272) ;
    when CDDIP3_OUT_IA_WDATA_PART2 => return ext
    (X"4344444950335F4F55545F49415F57444154415F5041525432", 272) ;
    when CDDIP3_OUT_IA_CONFIG => return ext
    (X"4344444950335F4F55545F49415F434F4E464947", 272) ;
    when CDDIP3_OUT_IA_RDATA_PART0 => return ext
    (X"4344444950335F4F55545F49415F52444154415F5041525430", 272) ;
    when CDDIP3_OUT_IA_RDATA_PART1 => return ext
    (X"4344444950335F4F55545F49415F52444154415F5041525431", 272) ;
    when CDDIP3_OUT_IA_RDATA_PART2 => return ext
    (X"4344444950335F4F55545F49415F52444154415F5041525432", 272) ;
    when CDDIP3_OUT_IM_CONFIG => return ext
    (X"4344444950335F4F55545F494D5F434F4E464947", 272) ;
    when CDDIP3_OUT_IM_STATUS => return ext
    (X"4344444950335F4F55545F494D5F535441545553", 272) ;
    when CDDIP3_OUT_IM_READ_DONE => return ext
    (X"4344444950335F4F55545F494D5F524541445F444F4E45", 272) ;
    when CKV_IA_CAPABILITY => return ext(X"434B565F49415F4341504142494C495459",
     272) ;
    when CKV_IA_STATUS => return ext(X"434B565F49415F535441545553", 272) ;
    when CKV_IA_WDATA_PART0 => return ext
    (X"434B565F49415F57444154415F5041525430", 272) ;
    when CKV_IA_WDATA_PART1 => return ext
    (X"434B565F49415F57444154415F5041525431", 272) ;
    when CKV_IA_CONFIG => return ext(X"434B565F49415F434F4E464947", 272) ;
    when CKV_IA_RDATA_PART0 => return ext
    (X"434B565F49415F52444154415F5041525430", 272) ;
    when CKV_IA_RDATA_PART1 => return ext
    (X"434B565F49415F52444154415F5041525431", 272) ;
    when KIM_IA_CAPABILITY => return ext(X"4B494D5F49415F4341504142494C495459",
     272) ;
    when KIM_IA_STATUS => return ext(X"4B494D5F49415F535441545553", 272) ;
    when KIM_IA_WDATA_PART0 => return ext
    (X"4B494D5F49415F57444154415F5041525430", 272) ;
    when KIM_IA_WDATA_PART1 => return ext
    (X"4B494D5F49415F57444154415F5041525431", 272) ;
    when KIM_IA_CONFIG => return ext(X"4B494D5F49415F434F4E464947", 272) ;
    when KIM_IA_RDATA_PART0 => return ext
    (X"4B494D5F49415F52444154415F5041525430", 272) ;
    when KIM_IA_RDATA_PART1 => return ext
    (X"4B494D5F49415F52444154415F5041525431", 272) ;
    when LABEL0_CONFIG => return ext(X"4C4142454C305F434F4E464947", 272) ;
    when LABEL0_DATA7 => return ext(X"4C4142454C305F4441544137", 272) ;
    when LABEL0_DATA6 => return ext(X"4C4142454C305F4441544136", 272) ;
    when LABEL0_DATA5 => return ext(X"4C4142454C305F4441544135", 272) ;
    when LABEL0_DATA4 => return ext(X"4C4142454C305F4441544134", 272) ;
    when LABEL0_DATA3 => return ext(X"4C4142454C305F4441544133", 272) ;
    when LABEL0_DATA2 => return ext(X"4C4142454C305F4441544132", 272) ;
    when LABEL0_DATA1 => return ext(X"4C4142454C305F4441544131", 272) ;
    when LABEL0_DATA0 => return ext(X"4C4142454C305F4441544130", 272) ;
    when LABEL1_CONFIG => return ext(X"4C4142454C315F434F4E464947", 272) ;
    when LABEL1_DATA7 => return ext(X"4C4142454C315F4441544137", 272) ;
    when LABEL1_DATA6 => return ext(X"4C4142454C315F4441544136", 272) ;
    when LABEL1_DATA5 => return ext(X"4C4142454C315F4441544135", 272) ;
    when LABEL1_DATA4 => return ext(X"4C4142454C315F4441544134", 272) ;
    when LABEL1_DATA3 => return ext(X"4C4142454C315F4441544133", 272) ;
    when LABEL1_DATA2 => return ext(X"4C4142454C315F4441544132", 272) ;
    when LABEL1_DATA1 => return ext(X"4C4142454C315F4441544131", 272) ;
    when LABEL1_DATA0 => return ext(X"4C4142454C315F4441544130", 272) ;
    when LABEL2_CONFIG => return ext(X"4C4142454C325F434F4E464947", 272) ;
    when LABEL2_DATA7 => return ext(X"4C4142454C325F4441544137", 272) ;
    when LABEL2_DATA6 => return ext(X"4C4142454C325F4441544136", 272) ;
    when LABEL2_DATA5 => return ext(X"4C4142454C325F4441544135", 272) ;
    when LABEL2_DATA4 => return ext(X"4C4142454C325F4441544134", 272) ;
    when LABEL2_DATA3 => return ext(X"4C4142454C325F4441544133", 272) ;
    when LABEL2_DATA2 => return ext(X"4C4142454C325F4441544132", 272) ;
    when LABEL2_DATA1 => return ext(X"4C4142454C325F4441544131", 272) ;
    when LABEL2_DATA0 => return ext(X"4C4142454C325F4441544130", 272) ;
    when LABEL3_CONFIG => return ext(X"4C4142454C335F434F4E464947", 272) ;
    when LABEL3_DATA7 => return ext(X"4C4142454C335F4441544137", 272) ;
    when LABEL3_DATA6 => return ext(X"4C4142454C335F4441544136", 272) ;
    when LABEL3_DATA5 => return ext(X"4C4142454C335F4441544135", 272) ;
    when LABEL3_DATA4 => return ext(X"4C4142454C335F4441544134", 272) ;
    when LABEL3_DATA3 => return ext(X"4C4142454C335F4441544133", 272) ;
    when LABEL3_DATA2 => return ext(X"4C4142454C335F4441544132", 272) ;
    when LABEL3_DATA1 => return ext(X"4C4142454C335F4441544131", 272) ;
    when LABEL3_DATA0 => return ext(X"4C4142454C335F4441544130", 272) ;
    when LABEL4_CONFIG => return ext(X"4C4142454C345F434F4E464947", 272) ;
    when LABEL4_DATA7 => return ext(X"4C4142454C345F4441544137", 272) ;
    when LABEL4_DATA6 => return ext(X"4C4142454C345F4441544136", 272) ;
    when LABEL4_DATA5 => return ext(X"4C4142454C345F4441544135", 272) ;
    when LABEL4_DATA4 => return ext(X"4C4142454C345F4441544134", 272) ;
    when LABEL4_DATA3 => return ext(X"4C4142454C345F4441544133", 272) ;
    when LABEL4_DATA2 => return ext(X"4C4142454C345F4441544132", 272) ;
    when LABEL4_DATA1 => return ext(X"4C4142454C345F4441544131", 272) ;
    when LABEL4_DATA0 => return ext(X"4C4142454C345F4441544130", 272) ;
    when LABEL5_CONFIG => return ext(X"4C4142454C355F434F4E464947", 272) ;
    when LABEL5_DATA7 => return ext(X"4C4142454C355F4441544137", 272) ;
    when LABEL5_DATA6 => return ext(X"4C4142454C355F4441544136", 272) ;
    when LABEL5_DATA5 => return ext(X"4C4142454C355F4441544135", 272) ;
    when LABEL5_DATA4 => return ext(X"4C4142454C355F4441544134", 272) ;
    when LABEL5_DATA3 => return ext(X"4C4142454C355F4441544133", 272) ;
    when LABEL5_DATA2 => return ext(X"4C4142454C355F4441544132", 272) ;
    when LABEL5_DATA1 => return ext(X"4C4142454C355F4441544131", 272) ;
    when LABEL5_DATA0 => return ext(X"4C4142454C355F4441544130", 272) ;
    when LABEL6_CONFIG => return ext(X"4C4142454C365F434F4E464947", 272) ;
    when LABEL6_DATA7 => return ext(X"4C4142454C365F4441544137", 272) ;
    when LABEL6_DATA6 => return ext(X"4C4142454C365F4441544136", 272) ;
    when LABEL6_DATA5 => return ext(X"4C4142454C365F4441544135", 272) ;
    when LABEL6_DATA4 => return ext(X"4C4142454C365F4441544134", 272) ;
    when LABEL6_DATA3 => return ext(X"4C4142454C365F4441544133", 272) ;
    when LABEL6_DATA2 => return ext(X"4C4142454C365F4441544132", 272) ;
    when LABEL6_DATA1 => return ext(X"4C4142454C365F4441544131", 272) ;
    when LABEL6_DATA0 => return ext(X"4C4142454C365F4441544130", 272) ;
    when LABEL7_CONFIG => return ext(X"4C4142454C375F434F4E464947", 272) ;
    when LABEL7_DATA7 => return ext(X"4C4142454C375F4441544137", 272) ;
    when LABEL7_DATA6 => return ext(X"4C4142454C375F4441544136", 272) ;
    when LABEL7_DATA5 => return ext(X"4C4142454C375F4441544135", 272) ;
    when LABEL7_DATA4 => return ext(X"4C4142454C375F4441544134", 272) ;
    when LABEL7_DATA3 => return ext(X"4C4142454C375F4441544133", 272) ;
    when LABEL7_DATA2 => return ext(X"4C4142454C375F4441544132", 272) ;
    when LABEL7_DATA1 => return ext(X"4C4142454C375F4441544131", 272) ;
    when LABEL7_DATA0 => return ext(X"4C4142454C375F4441544130", 272) ;
    when KDF_DRBG_CTRL => return ext(X"4B44465F445242475F4354524C", 272) ;
    when KDF_DRBG_SEED_0_STATE_KEY_31_0 => return ext
    (X"4B44465F445242475F534545445F305F53544154455F4B45595F33315F30", 272) ;
    when KDF_DRBG_SEED_0_STATE_KEY_63_32 => return ext
    (X"4B44465F445242475F534545445F305F53544154455F4B45595F36335F3332", 272) ;
    when KDF_DRBG_SEED_0_STATE_KEY_95_64 => return ext
    (X"4B44465F445242475F534545445F305F53544154455F4B45595F39355F3634", 272) ;
    when KDF_DRBG_SEED_0_STATE_KEY_127_96 => return ext
    (X"4B44465F445242475F534545445F305F53544154455F4B45595F3132375F3936", 272) ;
    when KDF_DRBG_SEED_0_STATE_KEY_159_128 => return ext
    (X"4B44465F445242475F534545445F305F53544154455F4B45595F3135395F313238", 272)
     ;
    when KDF_DRBG_SEED_0_STATE_KEY_191_160 => return ext
    (X"4B44465F445242475F534545445F305F53544154455F4B45595F3139315F313630", 272)
     ;
    when KDF_DRBG_SEED_0_STATE_KEY_223_192 => return ext
    (X"4B44465F445242475F534545445F305F53544154455F4B45595F3232335F313932", 272)
     ;
    when KDF_DRBG_SEED_0_STATE_KEY_255_224 => return ext
    (X"4B44465F445242475F534545445F305F53544154455F4B45595F3235355F323234", 272)
     ;
    when KDF_DRBG_SEED_0_STATE_VALUE_31_0 => return ext
    (X"4B44465F445242475F534545445F305F53544154455F56414C55455F33315F30", 272) ;
    when KDF_DRBG_SEED_0_STATE_VALUE_63_32 => return ext
    (X"4B44465F445242475F534545445F305F53544154455F56414C55455F36335F3332", 272)
     ;
    when KDF_DRBG_SEED_0_STATE_VALUE_95_64 => return ext
    (X"4B44465F445242475F534545445F305F53544154455F56414C55455F39355F3634", 272)
     ;
    when KDF_DRBG_SEED_0_STATE_VALUE_127_96 => return ext
    (X"4B44465F445242475F534545445F305F53544154455F56414C55455F3132375F3936",
     272) ;
    when KDF_DRBG_SEED_0_RESEED_INTERVAL_0 => return ext
    (X"4B44465F445242475F534545445F305F5245534545445F494E54455256414C5F30", 272)
     ;
    when KDF_DRBG_SEED_0_RESEED_INTERVAL_1 => return ext
    (X"4B44465F445242475F534545445F305F5245534545445F494E54455256414C5F31", 272)
     ;
    when KDF_DRBG_SEED_1_STATE_KEY_31_0 => return ext
    (X"4B44465F445242475F534545445F315F53544154455F4B45595F33315F30", 272) ;
    when KDF_DRBG_SEED_1_STATE_KEY_63_32 => return ext
    (X"4B44465F445242475F534545445F315F53544154455F4B45595F36335F3332", 272) ;
    when KDF_DRBG_SEED_1_STATE_KEY_95_64 => return ext
    (X"4B44465F445242475F534545445F315F53544154455F4B45595F39355F3634", 272) ;
    when KDF_DRBG_SEED_1_STATE_KEY_127_96 => return ext
    (X"4B44465F445242475F534545445F315F53544154455F4B45595F3132375F3936", 272) ;
    when KDF_DRBG_SEED_1_STATE_KEY_159_128 => return ext
    (X"4B44465F445242475F534545445F315F53544154455F4B45595F3135395F313238", 272)
     ;
    when KDF_DRBG_SEED_1_STATE_KEY_191_160 => return ext
    (X"4B44465F445242475F534545445F315F53544154455F4B45595F3139315F313630", 272)
     ;
    when KDF_DRBG_SEED_1_STATE_KEY_223_192 => return ext
    (X"4B44465F445242475F534545445F315F53544154455F4B45595F3232335F313932", 272)
     ;
    when KDF_DRBG_SEED_1_STATE_KEY_255_224 => return ext
    (X"4B44465F445242475F534545445F315F53544154455F4B45595F3235355F323234", 272)
     ;
    when KDF_DRBG_SEED_1_STATE_VALUE_31_0 => return ext
    (X"4B44465F445242475F534545445F315F53544154455F56414C55455F33315F30", 272) ;
    when KDF_DRBG_SEED_1_STATE_VALUE_63_32 => return ext
    (X"4B44465F445242475F534545445F315F53544154455F56414C55455F36335F3332", 272)
     ;
    when KDF_DRBG_SEED_1_STATE_VALUE_95_64 => return ext
    (X"4B44465F445242475F534545445F315F53544154455F56414C55455F39355F3634", 272)
     ;
    when KDF_DRBG_SEED_1_STATE_VALUE_127_96 => return ext
    (X"4B44465F445242475F534545445F315F53544154455F56414C55455F3132375F3936",
     272) ;
    when KDF_DRBG_SEED_1_RESEED_INTERVAL_0 => return ext
    (X"4B44465F445242475F534545445F315F5245534545445F494E54455256414C5F30", 272)
     ;
    when KDF_DRBG_SEED_1_RESEED_INTERVAL_1 => return ext
    (X"4B44465F445242475F534545445F315F5245534545445F494E54455256414C5F31", 272)
     ;
    when INTERRUPT_STATUS => return ext(X"494E544552525550545F535441545553", 272
    ) ;
    when INTERRUPT_MASK => return ext(X"494E544552525550545F4D41534B", 272) ;
    when ENGINE_STICKY_STATUS => return ext
    (X"454E47494E455F535449434B595F535441545553", 272) ;
    when BIMC_MONITOR => return ext(X"42494D435F4D4F4E49544F52", 272) ;
    when BIMC_MONITOR_MASK => return ext(X"42494D435F4D4F4E49544F525F4D41534B",
     272) ;
    when BIMC_ECC_UNCORRECTABLE_ERROR_CNT => return ext
    (X"42494D435F4543435F554E434F525245435441424C455F4552524F525F434E54", 272) ;
    when BIMC_ECC_CORRECTABLE_ERROR_CNT => return ext
    (X"42494D435F4543435F434F525245435441424C455F4552524F525F434E54", 272) ;
    when BIMC_PARITY_ERROR_CNT => return ext
    (X"42494D435F5041524954595F4552524F525F434E54", 272) ;
    when BIMC_GLOBAL_CONFIG => return ext
    (X"42494D435F474C4F42414C5F434F4E464947", 272) ;
    when BIMC_MEMID => return ext(X"42494D435F4D454D4944", 272) ;
    when BIMC_ECCPAR_DEBUG => return ext(X"42494D435F4543435041525F4445425547",
     272) ;
    when BIMC_CMD2 => return ext(X"42494D435F434D4432", 272) ;
    when BIMC_CMD1 => return ext(X"42494D435F434D4431", 272) ;
    when BIMC_CMD0 => return ext(X"42494D435F434D4430", 272) ;
    when BIMC_RXCMD2 => return ext(X"42494D435F5258434D4432", 272) ;
    when BIMC_RXCMD1 => return ext(X"42494D435F5258434D4431", 272) ;
    when BIMC_RXCMD0 => return ext(X"42494D435F5258434D4430", 272) ;
    when BIMC_RXRSP2 => return ext(X"42494D435F525852535032", 272) ;
    when BIMC_RXRSP1 => return ext(X"42494D435F525852535031", 272) ;
    when BIMC_RXRSP0 => return ext(X"42494D435F525852535030", 272) ;
    when BIMC_POLLRSP2 => return ext(X"42494D435F504F4C4C52535032", 272) ;
    when BIMC_POLLRSP1 => return ext(X"42494D435F504F4C4C52535031", 272) ;
    when BIMC_POLLRSP0 => return ext(X"42494D435F504F4C4C52535030", 272) ;
    when BIMC_DBGCMD2 => return ext(X"42494D435F444247434D4432", 272) ;
    when BIMC_DBGCMD1 => return ext(X"42494D435F444247434D4431", 272) ;
    when BIMC_DBGCMD0 => return ext(X"42494D435F444247434D4430", 272) ;
    when IM_AVAILABLE => return ext(X"494D5F415641494C41424C45", 272) ;
    when IM_CONSUMED => return ext(X"494D5F434F4E53554D4544", 272) ;
    when TREADY_OVERRIDE => return ext(X"5452454144595F4F56455252494445", 272) ;
    when REGS_SA_CTRL => return ext(X"524547535F53415F4354524C", 272) ;
    when SA_SNAPSHOT_IA_CAPABILITY => return ext
    (X"53415F534E415053484F545F49415F4341504142494C495459", 272) ;
    when SA_SNAPSHOT_IA_STATUS => return ext
    (X"53415F534E415053484F545F49415F535441545553", 272) ;
    when SA_SNAPSHOT_IA_WDATA_PART0 => return ext
    (X"53415F534E415053484F545F49415F57444154415F5041525430", 272) ;
    when SA_SNAPSHOT_IA_WDATA_PART1 => return ext
    (X"53415F534E415053484F545F49415F57444154415F5041525431", 272) ;
    when SA_SNAPSHOT_IA_CONFIG => return ext
    (X"53415F534E415053484F545F49415F434F4E464947", 272) ;
    when SA_SNAPSHOT_IA_RDATA_PART0 => return ext
    (X"53415F534E415053484F545F49415F52444154415F5041525430", 272) ;
    when SA_SNAPSHOT_IA_RDATA_PART1 => return ext
    (X"53415F534E415053484F545F49415F52444154415F5041525431", 272) ;
    when SA_COUNT_IA_CAPABILITY => return ext
    (X"53415F434F554E545F49415F4341504142494C495459", 272) ;
    when SA_COUNT_IA_STATUS => return ext
    (X"53415F434F554E545F49415F535441545553", 272) ;
    when SA_COUNT_IA_WDATA_PART0 => return ext
    (X"53415F434F554E545F49415F57444154415F5041525430", 272) ;
    when SA_COUNT_IA_WDATA_PART1 => return ext
    (X"53415F434F554E545F49415F57444154415F5041525431", 272) ;
    when SA_COUNT_IA_CONFIG => return ext
    (X"53415F434F554E545F49415F434F4E464947", 272) ;
    when SA_COUNT_IA_RDATA_PART0 => return ext
    (X"53415F434F554E545F49415F52444154415F5041525430", 272) ;
    when SA_COUNT_IA_RDATA_PART1 => return ext
    (X"53415F434F554E545F49415F52444154415F5041525431", 272) ;
    when IDLE_COMPONENTS => return ext(X"49444C455F434F4D504F4E454E5453", 272) ;
    when CCEIP_ENCRYPT_KOP_FIFO_OVERRIDE => return ext
    (X"43434549505F454E43525950545F4B4F505F4649464F5F4F56455252494445", 272) ;
    when CCEIP_VALIDATE_KOP_FIFO_OVERRIDE => return ext
    (X"43434549505F56414C49444154455F4B4F505F4649464F5F4F56455252494445", 272) ;
    when CDDIP_DECRYPT_KOP_FIFO_OVERRIDE => return ext
    (X"43444449505F444543525950545F4B4F505F4649464F5F4F56455252494445", 272) ;
    when SA_GLOBAL_CTRL => return ext(X"53415F474C4F42414C5F4354524C", 272) ;
    when SA_CTRL_IA_CAPABILITY => return ext
    (X"53415F4354524C5F49415F4341504142494C495459", 272) ;
    when SA_CTRL_IA_STATUS => return ext(X"53415F4354524C5F49415F535441545553",
     272) ;
    when SA_CTRL_IA_WDATA_PART0 => return ext
    (X"53415F4354524C5F49415F57444154415F5041525430", 272) ;
    when SA_CTRL_IA_CONFIG => return ext(X"53415F4354524C5F49415F434F4E464947",
     272) ;
    when SA_CTRL_IA_RDATA_PART0 => return ext
    (X"53415F4354524C5F49415F52444154415F5041525430", 272) ;
    when KDF_TEST_KEY_SIZE_CONFIG => return ext
    (X"4B44465F544553545F4B45595F53495A455F434F4E464947", 272) ;
    when others => return ext(X"00", 272) ;
  end case ;
  end ;
  type $_DUMMY139 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY139 is $_DUMMY139 std_logic_vector(31 downto 0) ;
type $_DUMMY140
   is
  record
    blkid : std_logic_vector(15 downto 0) ;
    revid : std_logic_vector(15 downto 0) ;
  end record ;
  subtype DUMMY140 is $_DUMMY140 std_logic_vector(31 downto 0) ;
type
   $_blkid_revid_t is
  record
    r : DUMMY139 ;
    f : DUMMY140 ;
  end record _unpacked_union_ ;
  subtype blkid_revid_t is $_blkid_revid_t std_logic_vector(31 downto 0) ;
  constant blkid_revid_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("11001111000000000000000000000000") ;
  type $_DUMMY141 is
  record
    part0 : std_logic_vector(7 downto 0) ;
  end record ;
  subtype DUMMY141 is $_DUMMY141 std_logic_vector(7 downto 0) ;
type $_DUMMY142
   is
  record
    revid : std_logic_vector(7 downto 0) ;
  end record ;
  subtype DUMMY142 is $_DUMMY142 std_logic_vector(7 downto 0) ;
type $_revid_t
   is
  record
    r : DUMMY141 ;
    f : DUMMY142 ;
  end record _unpacked_union_ ;
  subtype revid_t is $_revid_t std_logic_vector(7 downto 0) ;
  constant revid_t_reset : std_logic_vector(7 downto 0) := std_logic_vector'
  ("00000000") ;
  type $_DUMMY143 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY143 is $_DUMMY143 std_logic_vector(31 downto 0) ;
type $_DUMMY144
   is
  record
    spare : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY144 is $_DUMMY144 std_logic_vector(31 downto 0) ;
type $_spare_t
   is
  record
    r : DUMMY143 ;
    f : DUMMY144 ;
  end record _unpacked_union_ ;
  subtype spare_t is $_spare_t std_logic_vector(31 downto 0) ;
  constant spare_t_reset : std_logic_vector(31 downto 0) := std_logic_vector'
  ("00000000000000000000000000000000") ;
  type $_DUMMY145 is
  record
    part2 : std_logic_vector(31 downto 0) ;
    part1 : std_logic_vector(31 downto 0) ;
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY145 is $_DUMMY145 std_logic_vector(95 downto 0) ;
type $_DUMMY146
   is
  record
    tdata_hi : std_logic_vector(31 downto 0) ;
    tdata_lo : std_logic_vector(31 downto 0) ;
    eob : std_logic ;
    bytes_vld : std_logic_vector(7 downto 0) ;
    unused1 : std_logic_vector(7 downto 0) ;
    tid : std_logic ;
    tuser : std_logic_vector(7 downto 0) ;
    unused0 : std_logic_vector(5 downto 0) ;
  end record ;
  subtype DUMMY146 is $_DUMMY146 std_logic_vector(95 downto 0) ;
type
   $_cceip0_out_t is
  record
    r : DUMMY145 ;
    f : DUMMY146 ;
  end record _unpacked_union_ ;
  subtype cceip0_out_t is $_cceip0_out_t std_logic_vector(95 downto 0) ;
  constant cceip0_out_t_reset : std_logic_vector(95 downto 0) :=
   std_logic_vector'
  ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  ) ;
  type $_DUMMY147 is
  record
    part0 : std_logic_vector(12 downto 0) ;
  end record ;
  subtype DUMMY147 is $_DUMMY147 std_logic_vector(12 downto 0) ;
type $_DUMMY148
   is
  record
    op : std_logic_vector(3 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY148 is $_DUMMY148 std_logic_vector(12 downto 0) ;
type
   $_cceip0_out_ia_config_t is
  record
    r : DUMMY147 ;
    f : DUMMY148 ;
  end record _unpacked_union_ ;
  subtype cceip0_out_ia_config_t is $_cceip0_out_ia_config_t std_logic_vector(12
   downto 0) ;
  constant cceip0_out_ia_config_t_reset : std_logic_vector(12 downto 0) :=
   std_logic_vector'("0000000000000") ;
  type $_DUMMY149 is
  record
    part0 : std_logic_vector(16 downto 0) ;
  end record ;
  subtype DUMMY149 is $_DUMMY149 std_logic_vector(16 downto 0) ;
type $_DUMMY150
   is
  record
    code : std_logic_vector(2 downto 0) ;
    datawords : std_logic_vector(4 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY150 is $_DUMMY150 std_logic_vector(16 downto 0) ;
type
   $_cceip0_out_ia_status_t is
  record
    r : DUMMY149 ;
    f : DUMMY150 ;
  end record _unpacked_union_ ;
  subtype cceip0_out_ia_status_t is $_cceip0_out_ia_status_t std_logic_vector(16
   downto 0) ;
  constant cceip0_out_ia_status_t_reset : std_logic_vector(16 downto 0) :=
   std_logic_vector'("00000010111111111") ;
  type $_DUMMY151 is
  record
    part0 : std_logic_vector(19 downto 0) ;
  end record ;
  subtype DUMMY151 is $_DUMMY151 std_logic_vector(19 downto 0) ;
type $_DUMMY152
   is
  record
    mem_type : std_logic_vector(3 downto 0) ;
    ack_error : std_logic ;
    sim_tmo : std_logic ;
    reserved_op : std_logic_vector(3 downto 0) ;
    compare : std_logic ;
    set_init_start : std_logic ;
    initialize_inc : std_logic ;
    initialize : std_logic ;
    reset : std_logic ;
    disabled : std_logic ;
    enable : std_logic ;
    write : std_logic ;
    read : std_logic ;
    nop : std_logic ;
  end record ;
  subtype DUMMY152 is $_DUMMY152 std_logic_vector(19 downto 0) ;
type
   $_cceip0_out_ia_capability_t is
  record
    r : DUMMY151 ;
    f : DUMMY152 ;
  end record _unpacked_union_ ;
  subtype cceip0_out_ia_capability_t is $_cceip0_out_ia_capability_t
   std_logic_vector(19 downto 0) ;
  constant cceip0_out_ia_capability_t_reset : std_logic_vector(19 downto 0) :=
   std_logic_vector'("00000000000000000000") ;
  type $_DUMMY153 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY153 is $_DUMMY153 std_logic_vector(11 downto 0) ;
type $_DUMMY154
   is
  record
    mode : std_logic_vector(1 downto 0) ;
    wr_credit_config : std_logic_vector(9 downto 0) ;
  end record ;
  subtype DUMMY154 is $_DUMMY154 std_logic_vector(11 downto 0) ;
type
   $_cceip0_out_im_config_t is
  record
    r : DUMMY153 ;
    f : DUMMY154 ;
  end record _unpacked_union_ ;
  subtype cceip0_out_im_config_t is $_cceip0_out_im_config_t std_logic_vector(11
   downto 0) ;
  constant cceip0_out_im_config_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("111000000000") ;
  type $_DUMMY155 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY155 is $_DUMMY155 std_logic_vector(11 downto 0) ;
type $_DUMMY156
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
    overflow : std_logic ;
    wr_pointer : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY156 is $_DUMMY156 std_logic_vector(11 downto 0) ;
type
   $_cceip0_out_im_status_t is
  record
    r : DUMMY155 ;
    f : DUMMY156 ;
  end record _unpacked_union_ ;
  subtype cceip0_out_im_status_t is $_cceip0_out_im_status_t std_logic_vector(11
   downto 0) ;
  constant cceip0_out_im_status_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("000000000000") ;
  type $_DUMMY157 is
  record
    part0 : std_logic_vector(1 downto 0) ;
  end record ;
  subtype DUMMY157 is $_DUMMY157 std_logic_vector(1 downto 0) ;
type $_DUMMY158
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
  end record ;
  subtype DUMMY158 is $_DUMMY158 std_logic_vector(1 downto 0) ;
type
   $_cceip0_out_im_consumed_t is
  record
    r : DUMMY157 ;
    f : DUMMY158 ;
  end record _unpacked_union_ ;
  subtype cceip0_out_im_consumed_t is $_cceip0_out_im_consumed_t
   std_logic_vector(1 downto 0) ;
  constant cceip0_out_im_consumed_t_reset : std_logic_vector(1 downto 0) :=
   std_logic_vector'("00") ;
  type $_DUMMY159 is
  record
    part2 : std_logic_vector(31 downto 0) ;
    part1 : std_logic_vector(31 downto 0) ;
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY159 is $_DUMMY159 std_logic_vector(95 downto 0) ;
type $_DUMMY160
   is
  record
    tdata_hi : std_logic_vector(31 downto 0) ;
    tdata_lo : std_logic_vector(31 downto 0) ;
    eob : std_logic ;
    bytes_vld : std_logic_vector(7 downto 0) ;
    unused1 : std_logic_vector(7 downto 0) ;
    tid : std_logic ;
    tuser : std_logic_vector(7 downto 0) ;
    unused0 : std_logic_vector(5 downto 0) ;
  end record ;
  subtype DUMMY160 is $_DUMMY160 std_logic_vector(95 downto 0) ;
type
   $_cceip1_out_t is
  record
    r : DUMMY159 ;
    f : DUMMY160 ;
  end record _unpacked_union_ ;
  subtype cceip1_out_t is $_cceip1_out_t std_logic_vector(95 downto 0) ;
  constant cceip1_out_t_reset : std_logic_vector(95 downto 0) :=
   std_logic_vector'
  ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  ) ;
  type $_DUMMY161 is
  record
    part0 : std_logic_vector(12 downto 0) ;
  end record ;
  subtype DUMMY161 is $_DUMMY161 std_logic_vector(12 downto 0) ;
type $_DUMMY162
   is
  record
    op : std_logic_vector(3 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY162 is $_DUMMY162 std_logic_vector(12 downto 0) ;
type
   $_cceip1_out_ia_config_t is
  record
    r : DUMMY161 ;
    f : DUMMY162 ;
  end record _unpacked_union_ ;
  subtype cceip1_out_ia_config_t is $_cceip1_out_ia_config_t std_logic_vector(12
   downto 0) ;
  constant cceip1_out_ia_config_t_reset : std_logic_vector(12 downto 0) :=
   std_logic_vector'("0000000000000") ;
  type $_DUMMY163 is
  record
    part0 : std_logic_vector(16 downto 0) ;
  end record ;
  subtype DUMMY163 is $_DUMMY163 std_logic_vector(16 downto 0) ;
type $_DUMMY164
   is
  record
    code : std_logic_vector(2 downto 0) ;
    datawords : std_logic_vector(4 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY164 is $_DUMMY164 std_logic_vector(16 downto 0) ;
type
   $_cceip1_out_ia_status_t is
  record
    r : DUMMY163 ;
    f : DUMMY164 ;
  end record _unpacked_union_ ;
  subtype cceip1_out_ia_status_t is $_cceip1_out_ia_status_t std_logic_vector(16
   downto 0) ;
  constant cceip1_out_ia_status_t_reset : std_logic_vector(16 downto 0) :=
   std_logic_vector'("00000010111111111") ;
  type $_DUMMY165 is
  record
    part0 : std_logic_vector(19 downto 0) ;
  end record ;
  subtype DUMMY165 is $_DUMMY165 std_logic_vector(19 downto 0) ;
type $_DUMMY166
   is
  record
    mem_type : std_logic_vector(3 downto 0) ;
    ack_error : std_logic ;
    sim_tmo : std_logic ;
    reserved_op : std_logic_vector(3 downto 0) ;
    compare : std_logic ;
    set_init_start : std_logic ;
    initialize_inc : std_logic ;
    initialize : std_logic ;
    reset : std_logic ;
    disabled : std_logic ;
    enable : std_logic ;
    write : std_logic ;
    read : std_logic ;
    nop : std_logic ;
  end record ;
  subtype DUMMY166 is $_DUMMY166 std_logic_vector(19 downto 0) ;
type
   $_cceip1_out_ia_capability_t is
  record
    r : DUMMY165 ;
    f : DUMMY166 ;
  end record _unpacked_union_ ;
  subtype cceip1_out_ia_capability_t is $_cceip1_out_ia_capability_t
   std_logic_vector(19 downto 0) ;
  constant cceip1_out_ia_capability_t_reset : std_logic_vector(19 downto 0) :=
   std_logic_vector'("00000000000000000000") ;
  type $_DUMMY167 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY167 is $_DUMMY167 std_logic_vector(11 downto 0) ;
type $_DUMMY168
   is
  record
    mode : std_logic_vector(1 downto 0) ;
    wr_credit_config : std_logic_vector(9 downto 0) ;
  end record ;
  subtype DUMMY168 is $_DUMMY168 std_logic_vector(11 downto 0) ;
type
   $_cceip1_out_im_config_t is
  record
    r : DUMMY167 ;
    f : DUMMY168 ;
  end record _unpacked_union_ ;
  subtype cceip1_out_im_config_t is $_cceip1_out_im_config_t std_logic_vector(11
   downto 0) ;
  constant cceip1_out_im_config_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("111000000000") ;
  type $_DUMMY169 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY169 is $_DUMMY169 std_logic_vector(11 downto 0) ;
type $_DUMMY170
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
    overflow : std_logic ;
    wr_pointer : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY170 is $_DUMMY170 std_logic_vector(11 downto 0) ;
type
   $_cceip1_out_im_status_t is
  record
    r : DUMMY169 ;
    f : DUMMY170 ;
  end record _unpacked_union_ ;
  subtype cceip1_out_im_status_t is $_cceip1_out_im_status_t std_logic_vector(11
   downto 0) ;
  constant cceip1_out_im_status_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("000000000000") ;
  type $_DUMMY171 is
  record
    part0 : std_logic_vector(1 downto 0) ;
  end record ;
  subtype DUMMY171 is $_DUMMY171 std_logic_vector(1 downto 0) ;
type $_DUMMY172
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
  end record ;
  subtype DUMMY172 is $_DUMMY172 std_logic_vector(1 downto 0) ;
type
   $_cceip1_out_im_consumed_t is
  record
    r : DUMMY171 ;
    f : DUMMY172 ;
  end record _unpacked_union_ ;
  subtype cceip1_out_im_consumed_t is $_cceip1_out_im_consumed_t
   std_logic_vector(1 downto 0) ;
  constant cceip1_out_im_consumed_t_reset : std_logic_vector(1 downto 0) :=
   std_logic_vector'("00") ;
  type $_DUMMY173 is
  record
    part2 : std_logic_vector(31 downto 0) ;
    part1 : std_logic_vector(31 downto 0) ;
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY173 is $_DUMMY173 std_logic_vector(95 downto 0) ;
type $_DUMMY174
   is
  record
    tdata_hi : std_logic_vector(31 downto 0) ;
    tdata_lo : std_logic_vector(31 downto 0) ;
    eob : std_logic ;
    bytes_vld : std_logic_vector(7 downto 0) ;
    unused1 : std_logic_vector(7 downto 0) ;
    tid : std_logic ;
    tuser : std_logic_vector(7 downto 0) ;
    unused0 : std_logic_vector(5 downto 0) ;
  end record ;
  subtype DUMMY174 is $_DUMMY174 std_logic_vector(95 downto 0) ;
type
   $_cceip2_out_t is
  record
    r : DUMMY173 ;
    f : DUMMY174 ;
  end record _unpacked_union_ ;
  subtype cceip2_out_t is $_cceip2_out_t std_logic_vector(95 downto 0) ;
  constant cceip2_out_t_reset : std_logic_vector(95 downto 0) :=
   std_logic_vector'
  ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  ) ;
  type $_DUMMY175 is
  record
    part0 : std_logic_vector(12 downto 0) ;
  end record ;
  subtype DUMMY175 is $_DUMMY175 std_logic_vector(12 downto 0) ;
type $_DUMMY176
   is
  record
    op : std_logic_vector(3 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY176 is $_DUMMY176 std_logic_vector(12 downto 0) ;
type
   $_cceip2_out_ia_config_t is
  record
    r : DUMMY175 ;
    f : DUMMY176 ;
  end record _unpacked_union_ ;
  subtype cceip2_out_ia_config_t is $_cceip2_out_ia_config_t std_logic_vector(12
   downto 0) ;
  constant cceip2_out_ia_config_t_reset : std_logic_vector(12 downto 0) :=
   std_logic_vector'("0000000000000") ;
  type $_DUMMY177 is
  record
    part0 : std_logic_vector(16 downto 0) ;
  end record ;
  subtype DUMMY177 is $_DUMMY177 std_logic_vector(16 downto 0) ;
type $_DUMMY178
   is
  record
    code : std_logic_vector(2 downto 0) ;
    datawords : std_logic_vector(4 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY178 is $_DUMMY178 std_logic_vector(16 downto 0) ;
type
   $_cceip2_out_ia_status_t is
  record
    r : DUMMY177 ;
    f : DUMMY178 ;
  end record _unpacked_union_ ;
  subtype cceip2_out_ia_status_t is $_cceip2_out_ia_status_t std_logic_vector(16
   downto 0) ;
  constant cceip2_out_ia_status_t_reset : std_logic_vector(16 downto 0) :=
   std_logic_vector'("00000010111111111") ;
  type $_DUMMY179 is
  record
    part0 : std_logic_vector(19 downto 0) ;
  end record ;
  subtype DUMMY179 is $_DUMMY179 std_logic_vector(19 downto 0) ;
type $_DUMMY180
   is
  record
    mem_type : std_logic_vector(3 downto 0) ;
    ack_error : std_logic ;
    sim_tmo : std_logic ;
    reserved_op : std_logic_vector(3 downto 0) ;
    compare : std_logic ;
    set_init_start : std_logic ;
    initialize_inc : std_logic ;
    initialize : std_logic ;
    reset : std_logic ;
    disabled : std_logic ;
    enable : std_logic ;
    write : std_logic ;
    read : std_logic ;
    nop : std_logic ;
  end record ;
  subtype DUMMY180 is $_DUMMY180 std_logic_vector(19 downto 0) ;
type
   $_cceip2_out_ia_capability_t is
  record
    r : DUMMY179 ;
    f : DUMMY180 ;
  end record _unpacked_union_ ;
  subtype cceip2_out_ia_capability_t is $_cceip2_out_ia_capability_t
   std_logic_vector(19 downto 0) ;
  constant cceip2_out_ia_capability_t_reset : std_logic_vector(19 downto 0) :=
   std_logic_vector'("00000000000000000000") ;
  type $_DUMMY181 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY181 is $_DUMMY181 std_logic_vector(11 downto 0) ;
type $_DUMMY182
   is
  record
    mode : std_logic_vector(1 downto 0) ;
    wr_credit_config : std_logic_vector(9 downto 0) ;
  end record ;
  subtype DUMMY182 is $_DUMMY182 std_logic_vector(11 downto 0) ;
type
   $_cceip2_out_im_config_t is
  record
    r : DUMMY181 ;
    f : DUMMY182 ;
  end record _unpacked_union_ ;
  subtype cceip2_out_im_config_t is $_cceip2_out_im_config_t std_logic_vector(11
   downto 0) ;
  constant cceip2_out_im_config_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("111000000000") ;
  type $_DUMMY183 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY183 is $_DUMMY183 std_logic_vector(11 downto 0) ;
type $_DUMMY184
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
    overflow : std_logic ;
    wr_pointer : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY184 is $_DUMMY184 std_logic_vector(11 downto 0) ;
type
   $_cceip2_out_im_status_t is
  record
    r : DUMMY183 ;
    f : DUMMY184 ;
  end record _unpacked_union_ ;
  subtype cceip2_out_im_status_t is $_cceip2_out_im_status_t std_logic_vector(11
   downto 0) ;
  constant cceip2_out_im_status_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("000000000000") ;
  type $_DUMMY185 is
  record
    part0 : std_logic_vector(1 downto 0) ;
  end record ;
  subtype DUMMY185 is $_DUMMY185 std_logic_vector(1 downto 0) ;
type $_DUMMY186
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
  end record ;
  subtype DUMMY186 is $_DUMMY186 std_logic_vector(1 downto 0) ;
type
   $_cceip2_out_im_consumed_t is
  record
    r : DUMMY185 ;
    f : DUMMY186 ;
  end record _unpacked_union_ ;
  subtype cceip2_out_im_consumed_t is $_cceip2_out_im_consumed_t
   std_logic_vector(1 downto 0) ;
  constant cceip2_out_im_consumed_t_reset : std_logic_vector(1 downto 0) :=
   std_logic_vector'("00") ;
  type $_DUMMY187 is
  record
    part2 : std_logic_vector(31 downto 0) ;
    part1 : std_logic_vector(31 downto 0) ;
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY187 is $_DUMMY187 std_logic_vector(95 downto 0) ;
type $_DUMMY188
   is
  record
    tdata_hi : std_logic_vector(31 downto 0) ;
    tdata_lo : std_logic_vector(31 downto 0) ;
    eob : std_logic ;
    bytes_vld : std_logic_vector(7 downto 0) ;
    unused1 : std_logic_vector(7 downto 0) ;
    tid : std_logic ;
    tuser : std_logic_vector(7 downto 0) ;
    unused0 : std_logic_vector(5 downto 0) ;
  end record ;
  subtype DUMMY188 is $_DUMMY188 std_logic_vector(95 downto 0) ;
type
   $_cceip3_out_t is
  record
    r : DUMMY187 ;
    f : DUMMY188 ;
  end record _unpacked_union_ ;
  subtype cceip3_out_t is $_cceip3_out_t std_logic_vector(95 downto 0) ;
  constant cceip3_out_t_reset : std_logic_vector(95 downto 0) :=
   std_logic_vector'
  ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  ) ;
  type $_DUMMY189 is
  record
    part0 : std_logic_vector(12 downto 0) ;
  end record ;
  subtype DUMMY189 is $_DUMMY189 std_logic_vector(12 downto 0) ;
type $_DUMMY190
   is
  record
    op : std_logic_vector(3 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY190 is $_DUMMY190 std_logic_vector(12 downto 0) ;
type
   $_cceip3_out_ia_config_t is
  record
    r : DUMMY189 ;
    f : DUMMY190 ;
  end record _unpacked_union_ ;
  subtype cceip3_out_ia_config_t is $_cceip3_out_ia_config_t std_logic_vector(12
   downto 0) ;
  constant cceip3_out_ia_config_t_reset : std_logic_vector(12 downto 0) :=
   std_logic_vector'("0000000000000") ;
  type $_DUMMY191 is
  record
    part0 : std_logic_vector(16 downto 0) ;
  end record ;
  subtype DUMMY191 is $_DUMMY191 std_logic_vector(16 downto 0) ;
type $_DUMMY192
   is
  record
    code : std_logic_vector(2 downto 0) ;
    datawords : std_logic_vector(4 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY192 is $_DUMMY192 std_logic_vector(16 downto 0) ;
type
   $_cceip3_out_ia_status_t is
  record
    r : DUMMY191 ;
    f : DUMMY192 ;
  end record _unpacked_union_ ;
  subtype cceip3_out_ia_status_t is $_cceip3_out_ia_status_t std_logic_vector(16
   downto 0) ;
  constant cceip3_out_ia_status_t_reset : std_logic_vector(16 downto 0) :=
   std_logic_vector'("00000010111111111") ;
  type $_DUMMY193 is
  record
    part0 : std_logic_vector(19 downto 0) ;
  end record ;
  subtype DUMMY193 is $_DUMMY193 std_logic_vector(19 downto 0) ;
type $_DUMMY194
   is
  record
    mem_type : std_logic_vector(3 downto 0) ;
    ack_error : std_logic ;
    sim_tmo : std_logic ;
    reserved_op : std_logic_vector(3 downto 0) ;
    compare : std_logic ;
    set_init_start : std_logic ;
    initialize_inc : std_logic ;
    initialize : std_logic ;
    reset : std_logic ;
    disabled : std_logic ;
    enable : std_logic ;
    write : std_logic ;
    read : std_logic ;
    nop : std_logic ;
  end record ;
  subtype DUMMY194 is $_DUMMY194 std_logic_vector(19 downto 0) ;
type
   $_cceip3_out_ia_capability_t is
  record
    r : DUMMY193 ;
    f : DUMMY194 ;
  end record _unpacked_union_ ;
  subtype cceip3_out_ia_capability_t is $_cceip3_out_ia_capability_t
   std_logic_vector(19 downto 0) ;
  constant cceip3_out_ia_capability_t_reset : std_logic_vector(19 downto 0) :=
   std_logic_vector'("00000000000000000000") ;
  type $_DUMMY195 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY195 is $_DUMMY195 std_logic_vector(11 downto 0) ;
type $_DUMMY196
   is
  record
    mode : std_logic_vector(1 downto 0) ;
    wr_credit_config : std_logic_vector(9 downto 0) ;
  end record ;
  subtype DUMMY196 is $_DUMMY196 std_logic_vector(11 downto 0) ;
type
   $_cceip3_out_im_config_t is
  record
    r : DUMMY195 ;
    f : DUMMY196 ;
  end record _unpacked_union_ ;
  subtype cceip3_out_im_config_t is $_cceip3_out_im_config_t std_logic_vector(11
   downto 0) ;
  constant cceip3_out_im_config_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("111000000000") ;
  type $_DUMMY197 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY197 is $_DUMMY197 std_logic_vector(11 downto 0) ;
type $_DUMMY198
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
    overflow : std_logic ;
    wr_pointer : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY198 is $_DUMMY198 std_logic_vector(11 downto 0) ;
type
   $_cceip3_out_im_status_t is
  record
    r : DUMMY197 ;
    f : DUMMY198 ;
  end record _unpacked_union_ ;
  subtype cceip3_out_im_status_t is $_cceip3_out_im_status_t std_logic_vector(11
   downto 0) ;
  constant cceip3_out_im_status_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("000000000000") ;
  type $_DUMMY199 is
  record
    part0 : std_logic_vector(1 downto 0) ;
  end record ;
  subtype DUMMY199 is $_DUMMY199 std_logic_vector(1 downto 0) ;
type $_DUMMY200
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
  end record ;
  subtype DUMMY200 is $_DUMMY200 std_logic_vector(1 downto 0) ;
type
   $_cceip3_out_im_consumed_t is
  record
    r : DUMMY199 ;
    f : DUMMY200 ;
  end record _unpacked_union_ ;
  subtype cceip3_out_im_consumed_t is $_cceip3_out_im_consumed_t
   std_logic_vector(1 downto 0) ;
  constant cceip3_out_im_consumed_t_reset : std_logic_vector(1 downto 0) :=
   std_logic_vector'("00") ;
  type $_DUMMY201 is
  record
    part2 : std_logic_vector(31 downto 0) ;
    part1 : std_logic_vector(31 downto 0) ;
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY201 is $_DUMMY201 std_logic_vector(95 downto 0) ;
type $_DUMMY202
   is
  record
    tdata_hi : std_logic_vector(31 downto 0) ;
    tdata_lo : std_logic_vector(31 downto 0) ;
    eob : std_logic ;
    bytes_vld : std_logic_vector(7 downto 0) ;
    unused1 : std_logic_vector(7 downto 0) ;
    tid : std_logic ;
    tuser : std_logic_vector(7 downto 0) ;
    unused0 : std_logic_vector(5 downto 0) ;
  end record ;
  subtype DUMMY202 is $_DUMMY202 std_logic_vector(95 downto 0) ;
type
   $_cddip0_out_t is
  record
    r : DUMMY201 ;
    f : DUMMY202 ;
  end record _unpacked_union_ ;
  subtype cddip0_out_t is $_cddip0_out_t std_logic_vector(95 downto 0) ;
  constant cddip0_out_t_reset : std_logic_vector(95 downto 0) :=
   std_logic_vector'
  ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  ) ;
  type $_DUMMY203 is
  record
    part0 : std_logic_vector(12 downto 0) ;
  end record ;
  subtype DUMMY203 is $_DUMMY203 std_logic_vector(12 downto 0) ;
type $_DUMMY204
   is
  record
    op : std_logic_vector(3 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY204 is $_DUMMY204 std_logic_vector(12 downto 0) ;
type
   $_cddip0_out_ia_config_t is
  record
    r : DUMMY203 ;
    f : DUMMY204 ;
  end record _unpacked_union_ ;
  subtype cddip0_out_ia_config_t is $_cddip0_out_ia_config_t std_logic_vector(12
   downto 0) ;
  constant cddip0_out_ia_config_t_reset : std_logic_vector(12 downto 0) :=
   std_logic_vector'("0000000000000") ;
  type $_DUMMY205 is
  record
    part0 : std_logic_vector(16 downto 0) ;
  end record ;
  subtype DUMMY205 is $_DUMMY205 std_logic_vector(16 downto 0) ;
type $_DUMMY206
   is
  record
    code : std_logic_vector(2 downto 0) ;
    datawords : std_logic_vector(4 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY206 is $_DUMMY206 std_logic_vector(16 downto 0) ;
type
   $_cddip0_out_ia_status_t is
  record
    r : DUMMY205 ;
    f : DUMMY206 ;
  end record _unpacked_union_ ;
  subtype cddip0_out_ia_status_t is $_cddip0_out_ia_status_t std_logic_vector(16
   downto 0) ;
  constant cddip0_out_ia_status_t_reset : std_logic_vector(16 downto 0) :=
   std_logic_vector'("00000010111111111") ;
  type $_DUMMY207 is
  record
    part0 : std_logic_vector(19 downto 0) ;
  end record ;
  subtype DUMMY207 is $_DUMMY207 std_logic_vector(19 downto 0) ;
type $_DUMMY208
   is
  record
    mem_type : std_logic_vector(3 downto 0) ;
    ack_error : std_logic ;
    sim_tmo : std_logic ;
    reserved_op : std_logic_vector(3 downto 0) ;
    compare : std_logic ;
    set_init_start : std_logic ;
    initialize_inc : std_logic ;
    initialize : std_logic ;
    reset : std_logic ;
    disabled : std_logic ;
    enable : std_logic ;
    write : std_logic ;
    read : std_logic ;
    nop : std_logic ;
  end record ;
  subtype DUMMY208 is $_DUMMY208 std_logic_vector(19 downto 0) ;
type
   $_cddip0_out_ia_capability_t is
  record
    r : DUMMY207 ;
    f : DUMMY208 ;
  end record _unpacked_union_ ;
  subtype cddip0_out_ia_capability_t is $_cddip0_out_ia_capability_t
   std_logic_vector(19 downto 0) ;
  constant cddip0_out_ia_capability_t_reset : std_logic_vector(19 downto 0) :=
   std_logic_vector'("00000000000000000000") ;
  type $_DUMMY209 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY209 is $_DUMMY209 std_logic_vector(11 downto 0) ;
type $_DUMMY210
   is
  record
    mode : std_logic_vector(1 downto 0) ;
    wr_credit_config : std_logic_vector(9 downto 0) ;
  end record ;
  subtype DUMMY210 is $_DUMMY210 std_logic_vector(11 downto 0) ;
type
   $_cddip0_out_im_config_t is
  record
    r : DUMMY209 ;
    f : DUMMY210 ;
  end record _unpacked_union_ ;
  subtype cddip0_out_im_config_t is $_cddip0_out_im_config_t std_logic_vector(11
   downto 0) ;
  constant cddip0_out_im_config_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("111000000000") ;
  type $_DUMMY211 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY211 is $_DUMMY211 std_logic_vector(11 downto 0) ;
type $_DUMMY212
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
    overflow : std_logic ;
    wr_pointer : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY212 is $_DUMMY212 std_logic_vector(11 downto 0) ;
type
   $_cddip0_out_im_status_t is
  record
    r : DUMMY211 ;
    f : DUMMY212 ;
  end record _unpacked_union_ ;
  subtype cddip0_out_im_status_t is $_cddip0_out_im_status_t std_logic_vector(11
   downto 0) ;
  constant cddip0_out_im_status_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("000000000000") ;
  type $_DUMMY213 is
  record
    part0 : std_logic_vector(1 downto 0) ;
  end record ;
  subtype DUMMY213 is $_DUMMY213 std_logic_vector(1 downto 0) ;
type $_DUMMY214
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
  end record ;
  subtype DUMMY214 is $_DUMMY214 std_logic_vector(1 downto 0) ;
type
   $_cddip0_out_im_consumed_t is
  record
    r : DUMMY213 ;
    f : DUMMY214 ;
  end record _unpacked_union_ ;
  subtype cddip0_out_im_consumed_t is $_cddip0_out_im_consumed_t
   std_logic_vector(1 downto 0) ;
  constant cddip0_out_im_consumed_t_reset : std_logic_vector(1 downto 0) :=
   std_logic_vector'("00") ;
  type $_DUMMY215 is
  record
    part2 : std_logic_vector(31 downto 0) ;
    part1 : std_logic_vector(31 downto 0) ;
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY215 is $_DUMMY215 std_logic_vector(95 downto 0) ;
type $_DUMMY216
   is
  record
    tdata_hi : std_logic_vector(31 downto 0) ;
    tdata_lo : std_logic_vector(31 downto 0) ;
    eob : std_logic ;
    bytes_vld : std_logic_vector(7 downto 0) ;
    unused1 : std_logic_vector(7 downto 0) ;
    tid : std_logic ;
    tuser : std_logic_vector(7 downto 0) ;
    unused0 : std_logic_vector(5 downto 0) ;
  end record ;
  subtype DUMMY216 is $_DUMMY216 std_logic_vector(95 downto 0) ;
type
   $_cddip1_out_t is
  record
    r : DUMMY215 ;
    f : DUMMY216 ;
  end record _unpacked_union_ ;
  subtype cddip1_out_t is $_cddip1_out_t std_logic_vector(95 downto 0) ;
  constant cddip1_out_t_reset : std_logic_vector(95 downto 0) :=
   std_logic_vector'
  ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  ) ;
  type $_DUMMY217 is
  record
    part0 : std_logic_vector(12 downto 0) ;
  end record ;
  subtype DUMMY217 is $_DUMMY217 std_logic_vector(12 downto 0) ;
type $_DUMMY218
   is
  record
    op : std_logic_vector(3 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY218 is $_DUMMY218 std_logic_vector(12 downto 0) ;
type
   $_cddip1_out_ia_config_t is
  record
    r : DUMMY217 ;
    f : DUMMY218 ;
  end record _unpacked_union_ ;
  subtype cddip1_out_ia_config_t is $_cddip1_out_ia_config_t std_logic_vector(12
   downto 0) ;
  constant cddip1_out_ia_config_t_reset : std_logic_vector(12 downto 0) :=
   std_logic_vector'("0000000000000") ;
  type $_DUMMY219 is
  record
    part0 : std_logic_vector(16 downto 0) ;
  end record ;
  subtype DUMMY219 is $_DUMMY219 std_logic_vector(16 downto 0) ;
type $_DUMMY220
   is
  record
    code : std_logic_vector(2 downto 0) ;
    datawords : std_logic_vector(4 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY220 is $_DUMMY220 std_logic_vector(16 downto 0) ;
type
   $_cddip1_out_ia_status_t is
  record
    r : DUMMY219 ;
    f : DUMMY220 ;
  end record _unpacked_union_ ;
  subtype cddip1_out_ia_status_t is $_cddip1_out_ia_status_t std_logic_vector(16
   downto 0) ;
  constant cddip1_out_ia_status_t_reset : std_logic_vector(16 downto 0) :=
   std_logic_vector'("00000010111111111") ;
  type $_DUMMY221 is
  record
    part0 : std_logic_vector(19 downto 0) ;
  end record ;
  subtype DUMMY221 is $_DUMMY221 std_logic_vector(19 downto 0) ;
type $_DUMMY222
   is
  record
    mem_type : std_logic_vector(3 downto 0) ;
    ack_error : std_logic ;
    sim_tmo : std_logic ;
    reserved_op : std_logic_vector(3 downto 0) ;
    compare : std_logic ;
    set_init_start : std_logic ;
    initialize_inc : std_logic ;
    initialize : std_logic ;
    reset : std_logic ;
    disabled : std_logic ;
    enable : std_logic ;
    write : std_logic ;
    read : std_logic ;
    nop : std_logic ;
  end record ;
  subtype DUMMY222 is $_DUMMY222 std_logic_vector(19 downto 0) ;
type
   $_cddip1_out_ia_capability_t is
  record
    r : DUMMY221 ;
    f : DUMMY222 ;
  end record _unpacked_union_ ;
  subtype cddip1_out_ia_capability_t is $_cddip1_out_ia_capability_t
   std_logic_vector(19 downto 0) ;
  constant cddip1_out_ia_capability_t_reset : std_logic_vector(19 downto 0) :=
   std_logic_vector'("00000000000000000000") ;
  type $_DUMMY223 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY223 is $_DUMMY223 std_logic_vector(11 downto 0) ;
type $_DUMMY224
   is
  record
    mode : std_logic_vector(1 downto 0) ;
    wr_credit_config : std_logic_vector(9 downto 0) ;
  end record ;
  subtype DUMMY224 is $_DUMMY224 std_logic_vector(11 downto 0) ;
type
   $_cddip1_out_im_config_t is
  record
    r : DUMMY223 ;
    f : DUMMY224 ;
  end record _unpacked_union_ ;
  subtype cddip1_out_im_config_t is $_cddip1_out_im_config_t std_logic_vector(11
   downto 0) ;
  constant cddip1_out_im_config_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("111000000000") ;
  type $_DUMMY225 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY225 is $_DUMMY225 std_logic_vector(11 downto 0) ;
type $_DUMMY226
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
    overflow : std_logic ;
    wr_pointer : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY226 is $_DUMMY226 std_logic_vector(11 downto 0) ;
type
   $_cddip1_out_im_status_t is
  record
    r : DUMMY225 ;
    f : DUMMY226 ;
  end record _unpacked_union_ ;
  subtype cddip1_out_im_status_t is $_cddip1_out_im_status_t std_logic_vector(11
   downto 0) ;
  constant cddip1_out_im_status_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("000000000000") ;
  type $_DUMMY227 is
  record
    part0 : std_logic_vector(1 downto 0) ;
  end record ;
  subtype DUMMY227 is $_DUMMY227 std_logic_vector(1 downto 0) ;
type $_DUMMY228
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
  end record ;
  subtype DUMMY228 is $_DUMMY228 std_logic_vector(1 downto 0) ;
type
   $_cddip1_out_im_consumed_t is
  record
    r : DUMMY227 ;
    f : DUMMY228 ;
  end record _unpacked_union_ ;
  subtype cddip1_out_im_consumed_t is $_cddip1_out_im_consumed_t
   std_logic_vector(1 downto 0) ;
  constant cddip1_out_im_consumed_t_reset : std_logic_vector(1 downto 0) :=
   std_logic_vector'("00") ;
  type $_DUMMY229 is
  record
    part2 : std_logic_vector(31 downto 0) ;
    part1 : std_logic_vector(31 downto 0) ;
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY229 is $_DUMMY229 std_logic_vector(95 downto 0) ;
type $_DUMMY230
   is
  record
    tdata_hi : std_logic_vector(31 downto 0) ;
    tdata_lo : std_logic_vector(31 downto 0) ;
    eob : std_logic ;
    bytes_vld : std_logic_vector(7 downto 0) ;
    unused1 : std_logic_vector(7 downto 0) ;
    tid : std_logic ;
    tuser : std_logic_vector(7 downto 0) ;
    unused0 : std_logic_vector(5 downto 0) ;
  end record ;
  subtype DUMMY230 is $_DUMMY230 std_logic_vector(95 downto 0) ;
type
   $_cddip2_out_t is
  record
    r : DUMMY229 ;
    f : DUMMY230 ;
  end record _unpacked_union_ ;
  subtype cddip2_out_t is $_cddip2_out_t std_logic_vector(95 downto 0) ;
  constant cddip2_out_t_reset : std_logic_vector(95 downto 0) :=
   std_logic_vector'
  ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  ) ;
  type $_DUMMY231 is
  record
    part0 : std_logic_vector(12 downto 0) ;
  end record ;
  subtype DUMMY231 is $_DUMMY231 std_logic_vector(12 downto 0) ;
type $_DUMMY232
   is
  record
    op : std_logic_vector(3 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY232 is $_DUMMY232 std_logic_vector(12 downto 0) ;
type
   $_cddip2_out_ia_config_t is
  record
    r : DUMMY231 ;
    f : DUMMY232 ;
  end record _unpacked_union_ ;
  subtype cddip2_out_ia_config_t is $_cddip2_out_ia_config_t std_logic_vector(12
   downto 0) ;
  constant cddip2_out_ia_config_t_reset : std_logic_vector(12 downto 0) :=
   std_logic_vector'("0000000000000") ;
  type $_DUMMY233 is
  record
    part0 : std_logic_vector(16 downto 0) ;
  end record ;
  subtype DUMMY233 is $_DUMMY233 std_logic_vector(16 downto 0) ;
type $_DUMMY234
   is
  record
    code : std_logic_vector(2 downto 0) ;
    datawords : std_logic_vector(4 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY234 is $_DUMMY234 std_logic_vector(16 downto 0) ;
type
   $_cddip2_out_ia_status_t is
  record
    r : DUMMY233 ;
    f : DUMMY234 ;
  end record _unpacked_union_ ;
  subtype cddip2_out_ia_status_t is $_cddip2_out_ia_status_t std_logic_vector(16
   downto 0) ;
  constant cddip2_out_ia_status_t_reset : std_logic_vector(16 downto 0) :=
   std_logic_vector'("00000010111111111") ;
  type $_DUMMY235 is
  record
    part0 : std_logic_vector(19 downto 0) ;
  end record ;
  subtype DUMMY235 is $_DUMMY235 std_logic_vector(19 downto 0) ;
type $_DUMMY236
   is
  record
    mem_type : std_logic_vector(3 downto 0) ;
    ack_error : std_logic ;
    sim_tmo : std_logic ;
    reserved_op : std_logic_vector(3 downto 0) ;
    compare : std_logic ;
    set_init_start : std_logic ;
    initialize_inc : std_logic ;
    initialize : std_logic ;
    reset : std_logic ;
    disabled : std_logic ;
    enable : std_logic ;
    write : std_logic ;
    read : std_logic ;
    nop : std_logic ;
  end record ;
  subtype DUMMY236 is $_DUMMY236 std_logic_vector(19 downto 0) ;
type
   $_cddip2_out_ia_capability_t is
  record
    r : DUMMY235 ;
    f : DUMMY236 ;
  end record _unpacked_union_ ;
  subtype cddip2_out_ia_capability_t is $_cddip2_out_ia_capability_t
   std_logic_vector(19 downto 0) ;
  constant cddip2_out_ia_capability_t_reset : std_logic_vector(19 downto 0) :=
   std_logic_vector'("00000000000000000000") ;
  type $_DUMMY237 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY237 is $_DUMMY237 std_logic_vector(11 downto 0) ;
type $_DUMMY238
   is
  record
    mode : std_logic_vector(1 downto 0) ;
    wr_credit_config : std_logic_vector(9 downto 0) ;
  end record ;
  subtype DUMMY238 is $_DUMMY238 std_logic_vector(11 downto 0) ;
type
   $_cddip2_out_im_config_t is
  record
    r : DUMMY237 ;
    f : DUMMY238 ;
  end record _unpacked_union_ ;
  subtype cddip2_out_im_config_t is $_cddip2_out_im_config_t std_logic_vector(11
   downto 0) ;
  constant cddip2_out_im_config_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("111000000000") ;
  type $_DUMMY239 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY239 is $_DUMMY239 std_logic_vector(11 downto 0) ;
type $_DUMMY240
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
    overflow : std_logic ;
    wr_pointer : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY240 is $_DUMMY240 std_logic_vector(11 downto 0) ;
type
   $_cddip2_out_im_status_t is
  record
    r : DUMMY239 ;
    f : DUMMY240 ;
  end record _unpacked_union_ ;
  subtype cddip2_out_im_status_t is $_cddip2_out_im_status_t std_logic_vector(11
   downto 0) ;
  constant cddip2_out_im_status_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("000000000000") ;
  type $_DUMMY241 is
  record
    part0 : std_logic_vector(1 downto 0) ;
  end record ;
  subtype DUMMY241 is $_DUMMY241 std_logic_vector(1 downto 0) ;
type $_DUMMY242
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
  end record ;
  subtype DUMMY242 is $_DUMMY242 std_logic_vector(1 downto 0) ;
type
   $_cddip2_out_im_consumed_t is
  record
    r : DUMMY241 ;
    f : DUMMY242 ;
  end record _unpacked_union_ ;
  subtype cddip2_out_im_consumed_t is $_cddip2_out_im_consumed_t
   std_logic_vector(1 downto 0) ;
  constant cddip2_out_im_consumed_t_reset : std_logic_vector(1 downto 0) :=
   std_logic_vector'("00") ;
  type $_DUMMY243 is
  record
    part2 : std_logic_vector(31 downto 0) ;
    part1 : std_logic_vector(31 downto 0) ;
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY243 is $_DUMMY243 std_logic_vector(95 downto 0) ;
type $_DUMMY244
   is
  record
    tdata_hi : std_logic_vector(31 downto 0) ;
    tdata_lo : std_logic_vector(31 downto 0) ;
    eob : std_logic ;
    bytes_vld : std_logic_vector(7 downto 0) ;
    unused1 : std_logic_vector(7 downto 0) ;
    tid : std_logic ;
    tuser : std_logic_vector(7 downto 0) ;
    unused0 : std_logic_vector(5 downto 0) ;
  end record ;
  subtype DUMMY244 is $_DUMMY244 std_logic_vector(95 downto 0) ;
type
   $_cddip3_out_t is
  record
    r : DUMMY243 ;
    f : DUMMY244 ;
  end record _unpacked_union_ ;
  subtype cddip3_out_t is $_cddip3_out_t std_logic_vector(95 downto 0) ;
  constant cddip3_out_t_reset : std_logic_vector(95 downto 0) :=
   std_logic_vector'
  ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  ) ;
  type $_DUMMY245 is
  record
    part0 : std_logic_vector(12 downto 0) ;
  end record ;
  subtype DUMMY245 is $_DUMMY245 std_logic_vector(12 downto 0) ;
type $_DUMMY246
   is
  record
    op : std_logic_vector(3 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY246 is $_DUMMY246 std_logic_vector(12 downto 0) ;
type
   $_cddip3_out_ia_config_t is
  record
    r : DUMMY245 ;
    f : DUMMY246 ;
  end record _unpacked_union_ ;
  subtype cddip3_out_ia_config_t is $_cddip3_out_ia_config_t std_logic_vector(12
   downto 0) ;
  constant cddip3_out_ia_config_t_reset : std_logic_vector(12 downto 0) :=
   std_logic_vector'("0000000000000") ;
  type $_DUMMY247 is
  record
    part0 : std_logic_vector(16 downto 0) ;
  end record ;
  subtype DUMMY247 is $_DUMMY247 std_logic_vector(16 downto 0) ;
type $_DUMMY248
   is
  record
    code : std_logic_vector(2 downto 0) ;
    datawords : std_logic_vector(4 downto 0) ;
    addr : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY248 is $_DUMMY248 std_logic_vector(16 downto 0) ;
type
   $_cddip3_out_ia_status_t is
  record
    r : DUMMY247 ;
    f : DUMMY248 ;
  end record _unpacked_union_ ;
  subtype cddip3_out_ia_status_t is $_cddip3_out_ia_status_t std_logic_vector(16
   downto 0) ;
  constant cddip3_out_ia_status_t_reset : std_logic_vector(16 downto 0) :=
   std_logic_vector'("00000010111111111") ;
  type $_DUMMY249 is
  record
    part0 : std_logic_vector(19 downto 0) ;
  end record ;
  subtype DUMMY249 is $_DUMMY249 std_logic_vector(19 downto 0) ;
type $_DUMMY250
   is
  record
    mem_type : std_logic_vector(3 downto 0) ;
    ack_error : std_logic ;
    sim_tmo : std_logic ;
    reserved_op : std_logic_vector(3 downto 0) ;
    compare : std_logic ;
    set_init_start : std_logic ;
    initialize_inc : std_logic ;
    initialize : std_logic ;
    reset : std_logic ;
    disabled : std_logic ;
    enable : std_logic ;
    write : std_logic ;
    read : std_logic ;
    nop : std_logic ;
  end record ;
  subtype DUMMY250 is $_DUMMY250 std_logic_vector(19 downto 0) ;
type
   $_cddip3_out_ia_capability_t is
  record
    r : DUMMY249 ;
    f : DUMMY250 ;
  end record _unpacked_union_ ;
  subtype cddip3_out_ia_capability_t is $_cddip3_out_ia_capability_t
   std_logic_vector(19 downto 0) ;
  constant cddip3_out_ia_capability_t_reset : std_logic_vector(19 downto 0) :=
   std_logic_vector'("00000000000000000000") ;
  type $_DUMMY251 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY251 is $_DUMMY251 std_logic_vector(11 downto 0) ;
type $_DUMMY252
   is
  record
    mode : std_logic_vector(1 downto 0) ;
    wr_credit_config : std_logic_vector(9 downto 0) ;
  end record ;
  subtype DUMMY252 is $_DUMMY252 std_logic_vector(11 downto 0) ;
type
   $_cddip3_out_im_config_t is
  record
    r : DUMMY251 ;
    f : DUMMY252 ;
  end record _unpacked_union_ ;
  subtype cddip3_out_im_config_t is $_cddip3_out_im_config_t std_logic_vector(11
   downto 0) ;
  constant cddip3_out_im_config_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("111000000000") ;
  type $_DUMMY253 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY253 is $_DUMMY253 std_logic_vector(11 downto 0) ;
type $_DUMMY254
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
    overflow : std_logic ;
    wr_pointer : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY254 is $_DUMMY254 std_logic_vector(11 downto 0) ;
type
   $_cddip3_out_im_status_t is
  record
    r : DUMMY253 ;
    f : DUMMY254 ;
  end record _unpacked_union_ ;
  subtype cddip3_out_im_status_t is $_cddip3_out_im_status_t std_logic_vector(11
   downto 0) ;
  constant cddip3_out_im_status_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("000000000000") ;
  type $_DUMMY255 is
  record
    part0 : std_logic_vector(1 downto 0) ;
  end record ;
  subtype DUMMY255 is $_DUMMY255 std_logic_vector(1 downto 0) ;
type $_DUMMY256
   is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
  end record ;
  subtype DUMMY256 is $_DUMMY256 std_logic_vector(1 downto 0) ;
type
   $_cddip3_out_im_consumed_t is
  record
    r : DUMMY255 ;
    f : DUMMY256 ;
  end record _unpacked_union_ ;
  subtype cddip3_out_im_consumed_t is $_cddip3_out_im_consumed_t
   std_logic_vector(1 downto 0) ;
  constant cddip3_out_im_consumed_t_reset : std_logic_vector(1 downto 0) :=
   std_logic_vector'("00") ;
  type $_DUMMY257 is
  record
    part1 : std_logic_vector(31 downto 0) ;
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY257 is $_DUMMY257 std_logic_vector(63 downto 0) ;
type $_DUMMY258
   is
  record
    key1 : std_logic_vector(31 downto 0) ;
    key0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY258 is $_DUMMY258 std_logic_vector(63 downto 0) ;
type $_ckv_t is
  record
    r : DUMMY257 ;
    f : DUMMY258 ;
  end record _unpacked_union_ ;
  subtype ckv_t is $_ckv_t std_logic_vector(63 downto 0) ;
  constant ckv_t_reset : std_logic_vector(63 downto 0) := std_logic_vector'
  ("0000000000000000000000000000000000000000000000000000000000000000") ;
  type $_DUMMY259 is
  record
    part0 : std_logic_vector(18 downto 0) ;
  end record ;
  subtype DUMMY259 is $_DUMMY259 std_logic_vector(18 downto 0) ;
type $_DUMMY260
   is
  record
    op : std_logic_vector(3 downto 0) ;
    addr : std_logic_vector(14 downto 0) ;
  end record ;
  subtype DUMMY260 is $_DUMMY260 std_logic_vector(18 downto 0) ;
type
   $_ckv_ia_config_t is
  record
    r : DUMMY259 ;
    f : DUMMY260 ;
  end record _unpacked_union_ ;
  subtype ckv_ia_config_t is $_ckv_ia_config_t std_logic_vector(18 downto 0) ;
  constant ckv_ia_config_t_reset : std_logic_vector(18 downto 0) :=
   std_logic_vector'("0000000000000000000") ;
  type $_DUMMY261 is
  record
    part0 : std_logic_vector(22 downto 0) ;
  end record ;
  subtype DUMMY261 is $_DUMMY261 std_logic_vector(22 downto 0) ;
type $_DUMMY262
   is
  record
    code : std_logic_vector(2 downto 0) ;
    datawords : std_logic_vector(4 downto 0) ;
    addr : std_logic_vector(14 downto 0) ;
  end record ;
  subtype DUMMY262 is $_DUMMY262 std_logic_vector(22 downto 0) ;
type
   $_ckv_ia_status_t is
  record
    r : DUMMY261 ;
    f : DUMMY262 ;
  end record _unpacked_union_ ;
  subtype ckv_ia_status_t is $_ckv_ia_status_t std_logic_vector(22 downto 0) ;
  constant ckv_ia_status_t_reset : std_logic_vector(22 downto 0) :=
   std_logic_vector'("11100001000000000000000") ;
  type $_DUMMY263 is
  record
    part0 : std_logic_vector(19 downto 0) ;
  end record ;
  subtype DUMMY263 is $_DUMMY263 std_logic_vector(19 downto 0) ;
type $_DUMMY264
   is
  record
    mem_type : std_logic_vector(3 downto 0) ;
    ack_error : std_logic ;
    sim_tmo : std_logic ;
    reserved_op : std_logic_vector(3 downto 0) ;
    compare : std_logic ;
    set_init_start : std_logic ;
    initialize_inc : std_logic ;
    initialize : std_logic ;
    reset : std_logic ;
    disabled : std_logic ;
    enable : std_logic ;
    write : std_logic ;
    read : std_logic ;
    nop : std_logic ;
  end record ;
  subtype DUMMY264 is $_DUMMY264 std_logic_vector(19 downto 0) ;
type
   $_ckv_ia_capability_t is
  record
    r : DUMMY263 ;
    f : DUMMY264 ;
  end record _unpacked_union_ ;
  subtype ckv_ia_capability_t is $_ckv_ia_capability_t std_logic_vector(19
   downto 0) ;
  constant ckv_ia_capability_t_reset : std_logic_vector(19 downto 0) :=
   std_logic_vector'("00000000000000000000") ;
  type $_DUMMY265 is
  record
    part0 : std_logic_vector(20 downto 0) ;
  end record ;
  subtype DUMMY265 is $_DUMMY265 std_logic_vector(20 downto 0) ;
type $_DUMMY266
   is
  record
    valid : std_logic ;
    label_index : std_logic_vector(2 downto 0) ;
    ckv_length : std_logic_vector(1 downto 0) ;
    ckv_pointer : std_logic_vector(14 downto 0) ;
  end record ;
  subtype DUMMY266 is $_DUMMY266 std_logic_vector(20 downto 0) ;
type
   $_kim_entry0_t is
  record
    r : DUMMY265 ;
    f : DUMMY266 ;
  end record _unpacked_union_ ;
  subtype kim_entry0_t is $_kim_entry0_t std_logic_vector(20 downto 0) ;
  constant kim_entry0_t_reset : std_logic_vector(20 downto 0) :=
   std_logic_vector'("000000000000000000000") ;
  type $_DUMMY267 is
  record
    part0 : std_logic_vector(16 downto 0) ;
  end record ;
  subtype DUMMY267 is $_DUMMY267 std_logic_vector(16 downto 0) ;
type $_DUMMY268
   is
  record
    pf_num : std_logic_vector(3 downto 0) ;
    vf_num : std_logic_vector(11 downto 0) ;
    vf_valid : std_logic ;
  end record ;
  subtype DUMMY268 is $_DUMMY268 std_logic_vector(16 downto 0) ;
type
   $_kim_entry1_t is
  record
    r : DUMMY267 ;
    f : DUMMY268 ;
  end record _unpacked_union_ ;
  subtype kim_entry1_t is $_kim_entry1_t std_logic_vector(16 downto 0) ;
  constant kim_entry1_t_reset : std_logic_vector(16 downto 0) :=
   std_logic_vector'("00000000000000000") ;
  type $_DUMMY269 is
  record
    part0 : std_logic_vector(17 downto 0) ;
  end record ;
  subtype DUMMY269 is $_DUMMY269 std_logic_vector(17 downto 0) ;
type $_DUMMY270
   is
  record
    op : std_logic_vector(3 downto 0) ;
    addr : std_logic_vector(13 downto 0) ;
  end record ;
  subtype DUMMY270 is $_DUMMY270 std_logic_vector(17 downto 0) ;
type
   $_kim_ia_config_t is
  record
    r : DUMMY269 ;
    f : DUMMY270 ;
  end record _unpacked_union_ ;
  subtype kim_ia_config_t is $_kim_ia_config_t std_logic_vector(17 downto 0) ;
  constant kim_ia_config_t_reset : std_logic_vector(17 downto 0) :=
   std_logic_vector'("000000000000000000") ;
  type $_DUMMY271 is
  record
    part0 : std_logic_vector(21 downto 0) ;
  end record ;
  subtype DUMMY271 is $_DUMMY271 std_logic_vector(21 downto 0) ;
type $_DUMMY272
   is
  record
    code : std_logic_vector(2 downto 0) ;
    datawords : std_logic_vector(4 downto 0) ;
    addr : std_logic_vector(13 downto 0) ;
  end record ;
  subtype DUMMY272 is $_DUMMY272 std_logic_vector(21 downto 0) ;
type
   $_kim_ia_status_t is
  record
    r : DUMMY271 ;
    f : DUMMY272 ;
  end record _unpacked_union_ ;
  subtype kim_ia_status_t is $_kim_ia_status_t std_logic_vector(21 downto 0) ;
  constant kim_ia_status_t_reset : std_logic_vector(21 downto 0) :=
   std_logic_vector'("1110000000000000000000") ;
  type $_DUMMY273 is
  record
    part0 : std_logic_vector(19 downto 0) ;
  end record ;
  subtype DUMMY273 is $_DUMMY273 std_logic_vector(19 downto 0) ;
type $_DUMMY274
   is
  record
    mem_type : std_logic_vector(3 downto 0) ;
    ack_error : std_logic ;
    sim_tmo : std_logic ;
    reserved_op : std_logic_vector(3 downto 0) ;
    compare : std_logic ;
    set_init_start : std_logic ;
    initialize_inc : std_logic ;
    initialize : std_logic ;
    reset : std_logic ;
    disabled : std_logic ;
    enable : std_logic ;
    write : std_logic ;
    read : std_logic ;
    nop : std_logic ;
  end record ;
  subtype DUMMY274 is $_DUMMY274 std_logic_vector(19 downto 0) ;
type
   $_kim_ia_capability_t is
  record
    r : DUMMY273 ;
    f : DUMMY274 ;
  end record _unpacked_union_ ;
  subtype kim_ia_capability_t is $_kim_ia_capability_t std_logic_vector(19
   downto 0) ;
  constant kim_ia_capability_t_reset : std_logic_vector(19 downto 0) :=
   std_logic_vector'("00000000000000000000") ;
  type $_DUMMY275 is
  record
    part0 : std_logic_vector(15 downto 0) ;
  end record ;
  subtype DUMMY275 is $_DUMMY275 std_logic_vector(15 downto 0) ;
type $_DUMMY276
   is
  record
    label_guid_size : std_logic ;
    label_size : std_logic_vector(5 downto 0) ;
    label_delimiter_valid : std_logic ;
    label_delimiter : std_logic_vector(7 downto 0) ;
  end record ;
  subtype DUMMY276 is $_DUMMY276 std_logic_vector(15 downto 0) ;
type
   $_label_metadata_t is
  record
    r : DUMMY275 ;
    f : DUMMY276 ;
  end record _unpacked_union_ ;
  subtype label_metadata_t is $_label_metadata_t std_logic_vector(15 downto 0) ;
  constant label_metadata_t_reset : std_logic_vector(15 downto 0) :=
   std_logic_vector'("0000000100000000") ;
  type $_DUMMY277 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY277 is $_DUMMY277 std_logic_vector(31 downto 0) ;
type $_DUMMY278
   is
  record
    label_data : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY278 is $_DUMMY278 std_logic_vector(31 downto 0) ;
type
   $_label_data_t is
  record
    r : DUMMY277 ;
    f : DUMMY278 ;
  end record _unpacked_union_ ;
  subtype label_data_t is $_label_data_t std_logic_vector(31 downto 0) ;
  constant label_data_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY279 is
  record
    part0 : std_logic_vector(4 downto 0) ;
  end record ;
  subtype DUMMY279 is $_DUMMY279 std_logic_vector(4 downto 0) ;
type $_DUMMY280
   is
  record
    tlv_miscomp : std_logic ;
    gcm_tag_fail : std_logic ;
    txc_bp : std_logic ;
    ecc_mbe : std_logic ;
    drbg_seed_expired : std_logic ;
  end record ;
  subtype DUMMY280 is $_DUMMY280 std_logic_vector(4 downto 0) ;
type
   $_int_status_t is
  record
    r : DUMMY279 ;
    f : DUMMY280 ;
  end record _unpacked_union_ ;
  subtype int_status_t is $_int_status_t std_logic_vector(4 downto 0) ;
  constant int_status_t_reset : std_logic_vector(4 downto 0) :=
   std_logic_vector'("00000") ;
  type $_DUMMY281 is
  record
    part0 : std_logic_vector(4 downto 0) ;
  end record ;
  subtype DUMMY281 is $_DUMMY281 std_logic_vector(4 downto 0) ;
type $_DUMMY282
   is
  record
    tlv_miscomp : std_logic ;
    gcm_tag_fail : std_logic ;
    txc_bp : std_logic ;
    ecc_mbe : std_logic ;
    drbg_seed_expired : std_logic ;
  end record ;
  subtype DUMMY282 is $_DUMMY282 std_logic_vector(4 downto 0) ;
type
   $_int_mask_t is
  record
    r : DUMMY281 ;
    f : DUMMY282 ;
  end record _unpacked_union_ ;
  subtype int_mask_t is $_int_mask_t std_logic_vector(4 downto 0) ;
  constant int_mask_t_reset : std_logic_vector(4 downto 0) := std_logic_vector'
  ("00000") ;
  type $_DUMMY283 is
  record
    part0 : std_logic_vector(7 downto 0) ;
  end record ;
  subtype DUMMY283 is $_DUMMY283 std_logic_vector(7 downto 0) ;
type $_DUMMY284
   is
  record
    engine_7_bp : std_logic ;
    engine_6_bp : std_logic ;
    engine_5_bp : std_logic ;
    engine_4_bp : std_logic ;
    engine_3_bp : std_logic ;
    engine_2_bp : std_logic ;
    engine_1_bp : std_logic ;
    engine_0_bp : std_logic ;
  end record ;
  subtype DUMMY284 is $_DUMMY284 std_logic_vector(7 downto 0) ;
type
   $_sticky_eng_bp_t is
  record
    r : DUMMY283 ;
    f : DUMMY284 ;
  end record _unpacked_union_ ;
  subtype sticky_eng_bp_t is $_sticky_eng_bp_t std_logic_vector(7 downto 0) ;
  constant sticky_eng_bp_t_reset : std_logic_vector(7 downto 0) :=
   std_logic_vector'("00000000") ;
  type $_DUMMY285 is
  record
    part0 : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY285 is $_DUMMY285 std_logic_vector(8 downto 0) ;
type $_DUMMY286
   is
  record
    txc_tready_override : std_logic ;
    engine_7_tready_override : std_logic ;
    engine_6_tready_override : std_logic ;
    engine_5_tready_override : std_logic ;
    engine_4_tready_override : std_logic ;
    engine_3_tready_override : std_logic ;
    engine_2_tready_override : std_logic ;
    engine_1_tready_override : std_logic ;
    engine_0_tready_override : std_logic ;
  end record ;
  subtype DUMMY286 is $_DUMMY286 std_logic_vector(8 downto 0) ;
type
   $_tready_override_t is
  record
    r : DUMMY285 ;
    f : DUMMY286 ;
  end record _unpacked_union_ ;
  subtype tready_override_t is $_tready_override_t std_logic_vector(8 downto 0)
   ;
  constant tready_override_t_reset : std_logic_vector(8 downto 0) :=
   std_logic_vector'("000000000") ;
  type $_DUMMY287 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY287 is $_DUMMY287 std_logic_vector(31 downto 0) ;
type $_DUMMY288
   is
  record
    key : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY288 is $_DUMMY288 std_logic_vector(31 downto 0) ;
type
   $_kdf_drbg_state_key_t is
  record
    r : DUMMY287 ;
    f : DUMMY288 ;
  end record _unpacked_union_ ;
  subtype kdf_drbg_state_key_t is $_kdf_drbg_state_key_t std_logic_vector(31
   downto 0) ;
  constant kdf_drbg_state_key_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY289 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY289 is $_DUMMY289 std_logic_vector(31 downto 0) ;
type $_DUMMY290
   is
  record
    value : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY290 is $_DUMMY290 std_logic_vector(31 downto 0) ;
type
   $_kdf_drbg_state_value_t is
  record
    r : DUMMY289 ;
    f : DUMMY290 ;
  end record _unpacked_union_ ;
  subtype kdf_drbg_state_value_t is $_kdf_drbg_state_value_t std_logic_vector(31
   downto 0) ;
  constant kdf_drbg_state_value_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY291 is
  record
    part0 : std_logic_vector(15 downto 0) ;
  end record ;
  subtype DUMMY291 is $_DUMMY291 std_logic_vector(15 downto 0) ;
type $_DUMMY292
   is
  record
    expire_val : std_logic_vector(15 downto 0) ;
  end record ;
  subtype DUMMY292 is $_DUMMY292 std_logic_vector(15 downto 0) ;
type
   $_kdf_drbg_reseed_interval_1_t is
  record
    r : DUMMY291 ;
    f : DUMMY292 ;
  end record _unpacked_union_ ;
  subtype kdf_drbg_reseed_interval_1_t is $_kdf_drbg_reseed_interval_1_t
   std_logic_vector(15 downto 0) ;
  constant kdf_drbg_reseed_interval_1_t_reset : std_logic_vector(15 downto 0) :=
   std_logic_vector'("0000000000000000") ;
  type $_DUMMY293 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY293 is $_DUMMY293 std_logic_vector(31 downto 0) ;
type $_DUMMY294
   is
  record
    expire_val : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY294 is $_DUMMY294 std_logic_vector(31 downto 0) ;
type
   $_kdf_drbg_reseed_interval_0_t is
  record
    r : DUMMY293 ;
    f : DUMMY294 ;
  end record _unpacked_union_ ;
  subtype kdf_drbg_reseed_interval_0_t is $_kdf_drbg_reseed_interval_0_t
   std_logic_vector(31 downto 0) ;
  constant kdf_drbg_reseed_interval_0_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY295 is
  record
    part0 : std_logic_vector(1 downto 0) ;
  end record ;
  subtype DUMMY295 is $_DUMMY295 std_logic_vector(1 downto 0) ;
type $_DUMMY296
   is
  record
    valid : std_logic_vector(1 downto 0) ;
  end record ;
  subtype DUMMY296 is $_DUMMY296 std_logic_vector(1 downto 0) ;
type
   $_kdf_drbg_ctrl_t is
  record
    r : DUMMY295 ;
    f : DUMMY296 ;
  end record _unpacked_union_ ;
  subtype kdf_drbg_ctrl_t is $_kdf_drbg_ctrl_t std_logic_vector(1 downto 0) ;
  constant kdf_drbg_ctrl_t_reset : std_logic_vector(1 downto 0) :=
   std_logic_vector'("00") ;
  type $_DUMMY297 is
  record
    part0 : std_logic_vector(6 downto 0) ;
  end record ;
  subtype DUMMY297 is $_DUMMY297 std_logic_vector(6 downto 0) ;
type $_DUMMY298
   is
  record
    unanswered_read : std_logic ;
    rcv_invalid_opcode : std_logic ;
    bimc_chain_rcv_error : std_logic ;
    reserve : std_logic ;
    parity_error : std_logic ;
    correctable_ecc_error : std_logic ;
    uncorrectable_ecc_error : std_logic ;
  end record ;
  subtype DUMMY298 is $_DUMMY298 std_logic_vector(6 downto 0) ;
type
   $_bimc_monitor_t is
  record
    r : DUMMY297 ;
    f : DUMMY298 ;
  end record _unpacked_union_ ;
  subtype bimc_monitor_t is $_bimc_monitor_t std_logic_vector(6 downto 0) ;
  constant bimc_monitor_t_reset : std_logic_vector(6 downto 0) :=
   std_logic_vector'("0000000") ;
  type $_DUMMY299 is
  record
    part0 : std_logic_vector(6 downto 0) ;
  end record ;
  subtype DUMMY299 is $_DUMMY299 std_logic_vector(6 downto 0) ;
type $_DUMMY300
   is
  record
    unanswered_read : std_logic ;
    rcv_invalid_opcode : std_logic ;
    bimc_chain_rcv_error_enable : std_logic ;
    reserve : std_logic ;
    parity_error_enable : std_logic ;
    correctable_ecc_error_enable : std_logic ;
    uncorrectable_ecc_error_enable : std_logic ;
  end record ;
  subtype DUMMY300 is $_DUMMY300 std_logic_vector(6 downto 0) ;
type
   $_bimc_monitor_mask_t is
  record
    r : DUMMY299 ;
    f : DUMMY300 ;
  end record _unpacked_union_ ;
  subtype bimc_monitor_mask_t is $_bimc_monitor_mask_t std_logic_vector(6 downto
   0) ;
  constant bimc_monitor_mask_t_reset : std_logic_vector(6 downto 0) :=
   std_logic_vector'("0000000") ;
  type $_DUMMY301 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY301 is $_DUMMY301 std_logic_vector(31 downto 0) ;
type $_DUMMY302
   is
  record
    uncorrectable_ecc : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY302 is $_DUMMY302 std_logic_vector(31 downto 0) ;
type
   $_bimc_ecc_uncorrectable_error_cnt_t is
  record
    r : DUMMY301 ;
    f : DUMMY302 ;
  end record _unpacked_union_ ;
  subtype bimc_ecc_uncorrectable_error_cnt_t is
   $_bimc_ecc_uncorrectable_error_cnt_t std_logic_vector(31 downto 0) ;
  constant bimc_ecc_uncorrectable_error_cnt_t_reset : std_logic_vector(31 downto
   0) := std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY303 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY303 is $_DUMMY303 std_logic_vector(31 downto 0) ;
type $_DUMMY304
   is
  record
    correctable_ecc : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY304 is $_DUMMY304 std_logic_vector(31 downto 0) ;
type
   $_bimc_ecc_correctable_error_cnt_t is
  record
    r : DUMMY303 ;
    f : DUMMY304 ;
  end record _unpacked_union_ ;
  subtype bimc_ecc_correctable_error_cnt_t is $_bimc_ecc_correctable_error_cnt_t
   std_logic_vector(31 downto 0) ;
  constant bimc_ecc_correctable_error_cnt_t_reset : std_logic_vector(31 downto 0
  ) := std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY305 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY305 is $_DUMMY305 std_logic_vector(31 downto 0) ;
type $_DUMMY306
   is
  record
    parity_errors : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY306 is $_DUMMY306 std_logic_vector(31 downto 0) ;
type
   $_bimc_parity_error_cnt_t is
  record
    r : DUMMY305 ;
    f : DUMMY306 ;
  end record _unpacked_union_ ;
  subtype bimc_parity_error_cnt_t is $_bimc_parity_error_cnt_t std_logic_vector
  (31 downto 0) ;
  constant bimc_parity_error_cnt_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY307 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY307 is $_DUMMY307 std_logic_vector(31 downto 0) ;
type $_DUMMY308
   is
  record
    poll_ecc_par_timer : std_logic_vector(25 downto 0) ;
    debug_write_en : std_logic ;
    poll_ecc_par_error : std_logic ;
    mem_wr_init : std_logic ;
    bimc_mem_init_done : std_logic ;
    reserve : std_logic ;
    soft_reset : std_logic ;
  end record ;
  subtype DUMMY308 is $_DUMMY308 std_logic_vector(31 downto 0) ;
type
   $_bimc_global_config_t is
  record
    r : DUMMY307 ;
    f : DUMMY308 ;
  end record _unpacked_union_ ;
  subtype bimc_global_config_t is $_bimc_global_config_t std_logic_vector(31
   downto 0) ;
  constant bimc_global_config_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000001") ;
  type $_DUMMY309 is
  record
    part0 : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY309 is $_DUMMY309 std_logic_vector(11 downto 0) ;
type $_DUMMY310
   is
  record
    max_memid : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY310 is $_DUMMY310 std_logic_vector(11 downto 0) ;
type
   $_bimc_memid_t is
  record
    r : DUMMY309 ;
    f : DUMMY310 ;
  end record _unpacked_union_ ;
  subtype bimc_memid_t is $_bimc_memid_t std_logic_vector(11 downto 0) ;
  constant bimc_memid_t_reset : std_logic_vector(11 downto 0) :=
   std_logic_vector'("000000000000") ;
  type $_DUMMY311 is
  record
    part0 : std_logic_vector(28 downto 0) ;
  end record ;
  subtype DUMMY311 is $_DUMMY311 std_logic_vector(28 downto 0) ;
type $_DUMMY312
   is
  record
    ack : std_logic ;
    jabber_off : std_logic_vector(3 downto 0) ;
    sent : std_logic ;
    send : std_logic ;
    eccpar_disable : std_logic_vector(1 downto 0) ;
    reserve : std_logic_vector(1 downto 0) ;
    eccpar_corrupt : std_logic_vector(1 downto 0) ;
    memtype : std_logic_vector(3 downto 0) ;
    memaddr : std_logic_vector(11 downto 0) ;
  end record ;
  subtype DUMMY312 is $_DUMMY312 std_logic_vector(28 downto 0) ;
type
   $_bimc_eccpar_debug_t is
  record
    r : DUMMY311 ;
    f : DUMMY312 ;
  end record _unpacked_union_ ;
  subtype bimc_eccpar_debug_t is $_bimc_eccpar_debug_t std_logic_vector(28
   downto 0) ;
  constant bimc_eccpar_debug_t_reset : std_logic_vector(28 downto 0) :=
   std_logic_vector'("00000000000000000000000000000") ;
  type $_DUMMY313 is
  record
    part0 : std_logic_vector(10 downto 0) ;
  end record ;
  subtype DUMMY313 is $_DUMMY313 std_logic_vector(10 downto 0) ;
type $_DUMMY314
   is
  record
    ack : std_logic ;
    sent : std_logic ;
    send : std_logic ;
    opcode : std_logic_vector(7 downto 0) ;
  end record ;
  subtype DUMMY314 is $_DUMMY314 std_logic_vector(10 downto 0) ;
type
   $_bimc_cmd2_t is
  record
    r : DUMMY313 ;
    f : DUMMY314 ;
  end record _unpacked_union_ ;
  subtype bimc_cmd2_t is $_bimc_cmd2_t std_logic_vector(10 downto 0) ;
  constant bimc_cmd2_t_reset : std_logic_vector(10 downto 0) :=
   std_logic_vector'("00000000000") ;
  type $_DUMMY315 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY315 is $_DUMMY315 std_logic_vector(31 downto 0) ;
type $_DUMMY316
   is
  record
    memtype : std_logic_vector(3 downto 0) ;
    mem : std_logic_vector(11 downto 0) ;
    addr : std_logic_vector(15 downto 0) ;
  end record ;
  subtype DUMMY316 is $_DUMMY316 std_logic_vector(31 downto 0) ;
type
   $_bimc_cmd1_t is
  record
    r : DUMMY315 ;
    f : DUMMY316 ;
  end record _unpacked_union_ ;
  subtype bimc_cmd1_t is $_bimc_cmd1_t std_logic_vector(31 downto 0) ;
  constant bimc_cmd1_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY317 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY317 is $_DUMMY317 std_logic_vector(31 downto 0) ;
type $_DUMMY318
   is
  record
    data : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY318 is $_DUMMY318 std_logic_vector(31 downto 0) ;
type
   $_bimc_cmd0_t is
  record
    r : DUMMY317 ;
    f : DUMMY318 ;
  end record _unpacked_union_ ;
  subtype bimc_cmd0_t is $_bimc_cmd0_t std_logic_vector(31 downto 0) ;
  constant bimc_cmd0_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY319 is
  record
    part0 : std_logic_vector(9 downto 0) ;
  end record ;
  subtype DUMMY319 is $_DUMMY319 std_logic_vector(9 downto 0) ;
type $_DUMMY320
   is
  record
    ack : std_logic ;
    rxflag : std_logic ;
    opcode : std_logic_vector(7 downto 0) ;
  end record ;
  subtype DUMMY320 is $_DUMMY320 std_logic_vector(9 downto 0) ;
type
   $_bimc_rxcmd2_t is
  record
    r : DUMMY319 ;
    f : DUMMY320 ;
  end record _unpacked_union_ ;
  subtype bimc_rxcmd2_t is $_bimc_rxcmd2_t std_logic_vector(9 downto 0) ;
  constant bimc_rxcmd2_t_reset : std_logic_vector(9 downto 0) :=
   std_logic_vector'("0000000000") ;
  type $_DUMMY321 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY321 is $_DUMMY321 std_logic_vector(31 downto 0) ;
type $_DUMMY322
   is
  record
    memtype : std_logic_vector(3 downto 0) ;
    mem : std_logic_vector(11 downto 0) ;
    addr : std_logic_vector(15 downto 0) ;
  end record ;
  subtype DUMMY322 is $_DUMMY322 std_logic_vector(31 downto 0) ;
type
   $_bimc_rxcmd1_t is
  record
    r : DUMMY321 ;
    f : DUMMY322 ;
  end record _unpacked_union_ ;
  subtype bimc_rxcmd1_t is $_bimc_rxcmd1_t std_logic_vector(31 downto 0) ;
  constant bimc_rxcmd1_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY323 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY323 is $_DUMMY323 std_logic_vector(31 downto 0) ;
type $_DUMMY324
   is
  record
    data : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY324 is $_DUMMY324 std_logic_vector(31 downto 0) ;
type
   $_bimc_rxcmd0_t is
  record
    r : DUMMY323 ;
    f : DUMMY324 ;
  end record _unpacked_union_ ;
  subtype bimc_rxcmd0_t is $_bimc_rxcmd0_t std_logic_vector(31 downto 0) ;
  constant bimc_rxcmd0_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY325 is
  record
    part0 : std_logic_vector(9 downto 0) ;
  end record ;
  subtype DUMMY325 is $_DUMMY325 std_logic_vector(9 downto 0) ;
type $_DUMMY326
   is
  record
    ack : std_logic ;
    rxflag : std_logic ;
    data : std_logic_vector(7 downto 0) ;
  end record ;
  subtype DUMMY326 is $_DUMMY326 std_logic_vector(9 downto 0) ;
type
   $_bimc_rxrsp2_t is
  record
    r : DUMMY325 ;
    f : DUMMY326 ;
  end record _unpacked_union_ ;
  subtype bimc_rxrsp2_t is $_bimc_rxrsp2_t std_logic_vector(9 downto 0) ;
  constant bimc_rxrsp2_t_reset : std_logic_vector(9 downto 0) :=
   std_logic_vector'("0000000000") ;
  type $_DUMMY327 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY327 is $_DUMMY327 std_logic_vector(31 downto 0) ;
type $_DUMMY328
   is
  record
    data : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY328 is $_DUMMY328 std_logic_vector(31 downto 0) ;
type
   $_bimc_rxrsp1_t is
  record
    r : DUMMY327 ;
    f : DUMMY328 ;
  end record _unpacked_union_ ;
  subtype bimc_rxrsp1_t is $_bimc_rxrsp1_t std_logic_vector(31 downto 0) ;
  constant bimc_rxrsp1_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY329 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY329 is $_DUMMY329 std_logic_vector(31 downto 0) ;
type $_DUMMY330
   is
  record
    data : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY330 is $_DUMMY330 std_logic_vector(31 downto 0) ;
type
   $_bimc_rxrsp0_t is
  record
    r : DUMMY329 ;
    f : DUMMY330 ;
  end record _unpacked_union_ ;
  subtype bimc_rxrsp0_t is $_bimc_rxrsp0_t std_logic_vector(31 downto 0) ;
  constant bimc_rxrsp0_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY331 is
  record
    part0 : std_logic_vector(9 downto 0) ;
  end record ;
  subtype DUMMY331 is $_DUMMY331 std_logic_vector(9 downto 0) ;
type $_DUMMY332
   is
  record
    ack : std_logic ;
    rxflag : std_logic ;
    data : std_logic_vector(7 downto 0) ;
  end record ;
  subtype DUMMY332 is $_DUMMY332 std_logic_vector(9 downto 0) ;
type
   $_bimc_pollrsp2_t is
  record
    r : DUMMY331 ;
    f : DUMMY332 ;
  end record _unpacked_union_ ;
  subtype bimc_pollrsp2_t is $_bimc_pollrsp2_t std_logic_vector(9 downto 0) ;
  constant bimc_pollrsp2_t_reset : std_logic_vector(9 downto 0) :=
   std_logic_vector'("0000000000") ;
  type $_DUMMY333 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY333 is $_DUMMY333 std_logic_vector(31 downto 0) ;
type $_DUMMY334
   is
  record
    data : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY334 is $_DUMMY334 std_logic_vector(31 downto 0) ;
type
   $_bimc_pollrsp1_t is
  record
    r : DUMMY333 ;
    f : DUMMY334 ;
  end record _unpacked_union_ ;
  subtype bimc_pollrsp1_t is $_bimc_pollrsp1_t std_logic_vector(31 downto 0) ;
  constant bimc_pollrsp1_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY335 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY335 is $_DUMMY335 std_logic_vector(31 downto 0) ;
type $_DUMMY336
   is
  record
    data : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY336 is $_DUMMY336 std_logic_vector(31 downto 0) ;
type
   $_bimc_pollrsp0_t is
  record
    r : DUMMY335 ;
    f : DUMMY336 ;
  end record _unpacked_union_ ;
  subtype bimc_pollrsp0_t is $_bimc_pollrsp0_t std_logic_vector(31 downto 0) ;
  constant bimc_pollrsp0_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY337 is
  record
    part0 : std_logic_vector(9 downto 0) ;
  end record ;
  subtype DUMMY337 is $_DUMMY337 std_logic_vector(9 downto 0) ;
type $_DUMMY338
   is
  record
    ack : std_logic ;
    rxflag : std_logic ;
    opcode : std_logic_vector(7 downto 0) ;
  end record ;
  subtype DUMMY338 is $_DUMMY338 std_logic_vector(9 downto 0) ;
type
   $_bimc_dbgcmd2_t is
  record
    r : DUMMY337 ;
    f : DUMMY338 ;
  end record _unpacked_union_ ;
  subtype bimc_dbgcmd2_t is $_bimc_dbgcmd2_t std_logic_vector(9 downto 0) ;
  constant bimc_dbgcmd2_t_reset : std_logic_vector(9 downto 0) :=
   std_logic_vector'("0000000000") ;
  type $_DUMMY339 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY339 is $_DUMMY339 std_logic_vector(31 downto 0) ;
type $_DUMMY340
   is
  record
    memtype : std_logic_vector(3 downto 0) ;
    mem : std_logic_vector(11 downto 0) ;
    addr : std_logic_vector(15 downto 0) ;
  end record ;
  subtype DUMMY340 is $_DUMMY340 std_logic_vector(31 downto 0) ;
type
   $_bimc_dbgcmd1_t is
  record
    r : DUMMY339 ;
    f : DUMMY340 ;
  end record _unpacked_union_ ;
  subtype bimc_dbgcmd1_t is $_bimc_dbgcmd1_t std_logic_vector(31 downto 0) ;
  constant bimc_dbgcmd1_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY341 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY341 is $_DUMMY341 std_logic_vector(31 downto 0) ;
type $_DUMMY342
   is
  record
    data : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY342 is $_DUMMY342 std_logic_vector(31 downto 0) ;
type
   $_bimc_dbgcmd0_t is
  record
    r : DUMMY341 ;
    f : DUMMY342 ;
  end record _unpacked_union_ ;
  subtype bimc_dbgcmd0_t is $_bimc_dbgcmd0_t std_logic_vector(31 downto 0) ;
  constant bimc_dbgcmd0_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY343 is
  record
    part0 : std_logic_vector(15 downto 0) ;
  end record ;
  subtype DUMMY343 is $_DUMMY343 std_logic_vector(15 downto 0) ;
type $_DUMMY344
   is
  record
    cddip3_bank_hi : std_logic ;
    cddip3_bank_lo : std_logic ;
    cddip2_bank_hi : std_logic ;
    cddip2_bank_lo : std_logic ;
    cddip1_bank_hi : std_logic ;
    cddip1_bank_lo : std_logic ;
    cddip0_bank_hi : std_logic ;
    cddip0_bank_lo : std_logic ;
    cceip3_bank_hi : std_logic ;
    cceip3_bank_lo : std_logic ;
    cceip2_bank_hi : std_logic ;
    cceip2_bank_lo : std_logic ;
    cceip1_bank_hi : std_logic ;
    cceip1_bank_lo : std_logic ;
    cceip0_bank_hi : std_logic ;
    cceip0_bank_lo : std_logic ;
  end record ;
  subtype DUMMY344 is $_DUMMY344 std_logic_vector(15 downto 0) ;
type
   $_im_available_t is
  record
    r : DUMMY343 ;
    f : DUMMY344 ;
  end record _unpacked_union_ ;
  subtype im_available_t is $_im_available_t std_logic_vector(15 downto 0) ;
  constant im_available_t_reset : std_logic_vector(15 downto 0) :=
   std_logic_vector'("0000000000000000") ;
  type $_DUMMY345 is
  record
    part0 : std_logic_vector(15 downto 0) ;
  end record ;
  subtype DUMMY345 is $_DUMMY345 std_logic_vector(15 downto 0) ;
type $_DUMMY346
   is
  record
    cddip3_bank_hi : std_logic ;
    cddip3_bank_lo : std_logic ;
    cddip2_bank_hi : std_logic ;
    cddip2_bank_lo : std_logic ;
    cddip1_bank_hi : std_logic ;
    cddip1_bank_lo : std_logic ;
    cddip0_bank_hi : std_logic ;
    cddip0_bank_lo : std_logic ;
    cceip3_bank_hi : std_logic ;
    cceip3_bank_lo : std_logic ;
    cceip2_bank_hi : std_logic ;
    cceip2_bank_lo : std_logic ;
    cceip1_bank_hi : std_logic ;
    cceip1_bank_lo : std_logic ;
    cceip0_bank_hi : std_logic ;
    cceip0_bank_lo : std_logic ;
  end record ;
  subtype DUMMY346 is $_DUMMY346 std_logic_vector(15 downto 0) ;
type
   $_im_consumed_t is
  record
    r : DUMMY345 ;
    f : DUMMY346 ;
  end record _unpacked_union_ ;
  subtype im_consumed_t is $_im_consumed_t std_logic_vector(15 downto 0) ;
  constant im_consumed_t_reset : std_logic_vector(15 downto 0) :=
   std_logic_vector'("0000000000000000") ;
  type $_DUMMY347 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY347 is $_DUMMY347 std_logic_vector(31 downto 0) ;
type $_DUMMY348
   is
  record
    sa_ctrl_spare2 : std_logic_vector(18 downto 0) ;
    sa_event_sel : std_logic_vector(4 downto 0) ;
    sa_ctrl_spare1 : std_logic_vector(5 downto 0) ;
    sa_snap : std_logic ;
    sa_clear_live : std_logic ;
  end record ;
  subtype DUMMY348 is $_DUMMY348 std_logic_vector(31 downto 0) ;
type
   $_sa_ctrl_dep_t is
  record
    r : DUMMY347 ;
    f : DUMMY348 ;
  end record _unpacked_union_ ;
  subtype sa_ctrl_dep_t is $_sa_ctrl_dep_t std_logic_vector(31 downto 0) ;
  constant sa_ctrl_dep_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY349 is
  record
    part1 : std_logic_vector(31 downto 0) ;
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY349 is $_DUMMY349 std_logic_vector(63 downto 0) ;
type $_DUMMY350
   is
  record
    unused : std_logic_vector(13 downto 0) ;
    upper : std_logic_vector(17 downto 0) ;
    lower : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY350 is $_DUMMY350 std_logic_vector(63 downto 0) ;
type
   $_sa_snapshot_t is
  record
    r : DUMMY349 ;
    f : DUMMY350 ;
  end record _unpacked_union_ ;
  subtype sa_snapshot_t is $_sa_snapshot_t std_logic_vector(63 downto 0) ;
  constant sa_snapshot_t_reset : std_logic_vector(63 downto 0) :=
   std_logic_vector'
  ("0000000000000000000000000000000000000000000000000000000000000000") ;
  type $_DUMMY351 is
  record
    part0 : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY351 is $_DUMMY351 std_logic_vector(8 downto 0) ;
type $_DUMMY352
   is
  record
    op : std_logic_vector(3 downto 0) ;
    addr : std_logic_vector(4 downto 0) ;
  end record ;
  subtype DUMMY352 is $_DUMMY352 std_logic_vector(8 downto 0) ;
type
   $_sa_snapshot_ia_config_t is
  record
    r : DUMMY351 ;
    f : DUMMY352 ;
  end record _unpacked_union_ ;
  subtype sa_snapshot_ia_config_t is $_sa_snapshot_ia_config_t std_logic_vector
  (8 downto 0) ;
  constant sa_snapshot_ia_config_t_reset : std_logic_vector(8 downto 0) :=
   std_logic_vector'("000000000") ;
  type $_DUMMY353 is
  record
    part0 : std_logic_vector(12 downto 0) ;
  end record ;
  subtype DUMMY353 is $_DUMMY353 std_logic_vector(12 downto 0) ;
type $_DUMMY354
   is
  record
    code : std_logic_vector(2 downto 0) ;
    datawords : std_logic_vector(4 downto 0) ;
    addr : std_logic_vector(4 downto 0) ;
  end record ;
  subtype DUMMY354 is $_DUMMY354 std_logic_vector(12 downto 0) ;
type
   $_sa_snapshot_ia_status_t is
  record
    r : DUMMY353 ;
    f : DUMMY354 ;
  end record _unpacked_union_ ;
  subtype sa_snapshot_ia_status_t is $_sa_snapshot_ia_status_t std_logic_vector
  (12 downto 0) ;
  constant sa_snapshot_ia_status_t_reset : std_logic_vector(12 downto 0) :=
   std_logic_vector'("0000000111111") ;
  type $_DUMMY355 is
  record
    part0 : std_logic_vector(19 downto 0) ;
  end record ;
  subtype DUMMY355 is $_DUMMY355 std_logic_vector(19 downto 0) ;
type $_DUMMY356
   is
  record
    mem_type : std_logic_vector(3 downto 0) ;
    ack_error : std_logic ;
    sim_tmo : std_logic ;
    reserved_op : std_logic_vector(3 downto 0) ;
    compare : std_logic ;
    set_init_start : std_logic ;
    initialize_inc : std_logic ;
    initialize : std_logic ;
    reset : std_logic ;
    disabled : std_logic ;
    enable : std_logic ;
    write : std_logic ;
    read : std_logic ;
    nop : std_logic ;
  end record ;
  subtype DUMMY356 is $_DUMMY356 std_logic_vector(19 downto 0) ;
type
   $_sa_snapshot_ia_capability_t is
  record
    r : DUMMY355 ;
    f : DUMMY356 ;
  end record _unpacked_union_ ;
  subtype sa_snapshot_ia_capability_t is $_sa_snapshot_ia_capability_t
   std_logic_vector(19 downto 0) ;
  constant sa_snapshot_ia_capability_t_reset : std_logic_vector(19 downto 0) :=
   std_logic_vector'("00000000000000000000") ;
  type $_DUMMY357 is
  record
    part1 : std_logic_vector(31 downto 0) ;
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY357 is $_DUMMY357 std_logic_vector(63 downto 0) ;
type $_DUMMY358
   is
  record
    unused : std_logic_vector(13 downto 0) ;
    upper : std_logic_vector(17 downto 0) ;
    lower : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY358 is $_DUMMY358 std_logic_vector(63 downto 0) ;
type
   $_sa_count_t is
  record
    r : DUMMY357 ;
    f : DUMMY358 ;
  end record _unpacked_union_ ;
  subtype sa_count_t is $_sa_count_t std_logic_vector(63 downto 0) ;
  constant sa_count_t_reset : std_logic_vector(63 downto 0) := std_logic_vector'
  ("0000000000000000000000000000000000000000000000000000000000000000") ;
  type $_DUMMY359 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY359 is $_DUMMY359 std_logic_vector(31 downto 0) ;
type $_DUMMY360
   is
  record
    spare : std_logic_vector(29 downto 0) ;
    sa_snap : std_logic ;
    sa_clear_live : std_logic ;
  end record ;
  subtype DUMMY360 is $_DUMMY360 std_logic_vector(31 downto 0) ;
type
   $_sa_global_ctrl_t is
  record
    r : DUMMY359 ;
    f : DUMMY360 ;
  end record _unpacked_union_ ;
  subtype sa_global_ctrl_t is $_sa_global_ctrl_t std_logic_vector(31 downto 0) ;
  constant sa_global_ctrl_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
  type $_DUMMY361 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY361 is $_DUMMY361 std_logic_vector(31 downto 0) ;
type $_DUMMY362
   is
  record
    spare : std_logic_vector(26 downto 0) ;
    sa_event_sel : std_logic_vector(4 downto 0) ;
  end record ;
  subtype DUMMY362 is $_DUMMY362 std_logic_vector(31 downto 0) ;
type
   $_sa_ctrl_t is
  record
    r : DUMMY361 ;
    f : DUMMY362 ;
  end record _unpacked_union_ ;
  subtype sa_ctrl_t is $_sa_ctrl_t std_logic_vector(31 downto 0) ;
  constant sa_ctrl_t_reset : std_logic_vector(31 downto 0) := std_logic_vector'
  ("00000000000000000000000000000000") ;
  type $_DUMMY363 is
  record
    part0 : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY363 is $_DUMMY363 std_logic_vector(8 downto 0) ;
type $_DUMMY364
   is
  record
    op : std_logic_vector(3 downto 0) ;
    addr : std_logic_vector(4 downto 0) ;
  end record ;
  subtype DUMMY364 is $_DUMMY364 std_logic_vector(8 downto 0) ;
type
   $_sa_ctrl_ia_config_t is
  record
    r : DUMMY363 ;
    f : DUMMY364 ;
  end record _unpacked_union_ ;
  subtype sa_ctrl_ia_config_t is $_sa_ctrl_ia_config_t std_logic_vector(8 downto
   0) ;
  constant sa_ctrl_ia_config_t_reset : std_logic_vector(8 downto 0) :=
   std_logic_vector'("000000000") ;
  type $_DUMMY365 is
  record
    part0 : std_logic_vector(12 downto 0) ;
  end record ;
  subtype DUMMY365 is $_DUMMY365 std_logic_vector(12 downto 0) ;
type $_DUMMY366
   is
  record
    code : std_logic_vector(2 downto 0) ;
    datawords : std_logic_vector(4 downto 0) ;
    addr : std_logic_vector(4 downto 0) ;
  end record ;
  subtype DUMMY366 is $_DUMMY366 std_logic_vector(12 downto 0) ;
type
   $_sa_ctrl_ia_status_t is
  record
    r : DUMMY365 ;
    f : DUMMY366 ;
  end record _unpacked_union_ ;
  subtype sa_ctrl_ia_status_t is $_sa_ctrl_ia_status_t std_logic_vector(12
   downto 0) ;
  constant sa_ctrl_ia_status_t_reset : std_logic_vector(12 downto 0) :=
   std_logic_vector'("0000000011111") ;
  type $_DUMMY367 is
  record
    part0 : std_logic_vector(19 downto 0) ;
  end record ;
  subtype DUMMY367 is $_DUMMY367 std_logic_vector(19 downto 0) ;
type $_DUMMY368
   is
  record
    mem_type : std_logic_vector(3 downto 0) ;
    ack_error : std_logic ;
    sim_tmo : std_logic ;
    reserved_op : std_logic_vector(3 downto 0) ;
    compare : std_logic ;
    set_init_start : std_logic ;
    initialize_inc : std_logic ;
    initialize : std_logic ;
    reset : std_logic ;
    disabled : std_logic ;
    enable : std_logic ;
    write : std_logic ;
    read : std_logic ;
    nop : std_logic ;
  end record ;
  subtype DUMMY368 is $_DUMMY368 std_logic_vector(19 downto 0) ;
type
   $_sa_ctrl_ia_capability_t is
  record
    r : DUMMY367 ;
    f : DUMMY368 ;
  end record _unpacked_union_ ;
  subtype sa_ctrl_ia_capability_t is $_sa_ctrl_ia_capability_t std_logic_vector
  (19 downto 0) ;
  constant sa_ctrl_ia_capability_t_reset : std_logic_vector(19 downto 0) :=
   std_logic_vector'("00000000000000000000") ;
  type $_DUMMY369 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY369 is $_DUMMY369 std_logic_vector(31 downto 0) ;
type $_DUMMY370
   is
  record
    num_key_tlvs_in_flight : std_logic_vector(19 downto 0) ;
    cddip0_key_tlv_rsm_idle : std_logic ;
    cddip1_key_tlv_rsm_idle : std_logic ;
    cddip2_key_tlv_rsm_idle : std_logic ;
    cddip3_key_tlv_rsm_idle : std_logic ;
    cceip0_key_tlv_rsm_idle : std_logic ;
    cceip1_key_tlv_rsm_idle : std_logic ;
    cceip2_key_tlv_rsm_idle : std_logic ;
    cceip3_key_tlv_rsm_idle : std_logic ;
    no_key_tlv_in_flight : std_logic ;
    tlv_parser_idle : std_logic ;
    drng_idle : std_logic ;
    kme_slv_empty : std_logic ;
  end record ;
  subtype DUMMY370 is $_DUMMY370 std_logic_vector(31 downto 0) ;
type $_idle_t
   is
  record
    r : DUMMY369 ;
    f : DUMMY370 ;
  end record _unpacked_union_ ;
  subtype idle_t is $_idle_t std_logic_vector(31 downto 0) ;
  constant idle_t_reset : std_logic_vector(31 downto 0) := std_logic_vector'
  ("00000000000000000000000000000000") ;
  type $_DUMMY371 is
  record
    part0 : std_logic_vector(6 downto 0) ;
  end record ;
  subtype DUMMY371 is $_DUMMY371 std_logic_vector(6 downto 0) ;
type $_DUMMY372
   is
  record
    gcm_status_data_fifo : std_logic ;
    tlv_sb_data_fifo : std_logic ;
    kdf_cmd_fifo : std_logic ;
    kdfstream_cmd_fifo : std_logic ;
    keyfilter_cmd_fifo : std_logic ;
    gcm_tag_data_fifo : std_logic ;
    gcm_cmd_fifo : std_logic ;
  end record ;
  subtype DUMMY372 is $_DUMMY372 std_logic_vector(6 downto 0) ;
type
   $_kop_fifo_override_t is
  record
    r : DUMMY371 ;
    f : DUMMY372 ;
  end record _unpacked_union_ ;
  subtype kop_fifo_override_t is $_kop_fifo_override_t std_logic_vector(6 downto
   0) ;
  constant kop_fifo_override_t_reset : std_logic_vector(6 downto 0) :=
   std_logic_vector'("0000000") ;
  type $_DUMMY373 is
  record
    part0 : std_logic_vector(8 downto 0) ;
  end record ;
  subtype DUMMY373 is $_DUMMY373 std_logic_vector(8 downto 0) ;
type $_DUMMY374
   is
  record
    op : std_logic_vector(3 downto 0) ;
    addr : std_logic_vector(4 downto 0) ;
  end record ;
  subtype DUMMY374 is $_DUMMY374 std_logic_vector(8 downto 0) ;
type
   $_sa_count_ia_config_t is
  record
    r : DUMMY373 ;
    f : DUMMY374 ;
  end record _unpacked_union_ ;
  subtype sa_count_ia_config_t is $_sa_count_ia_config_t std_logic_vector(8
   downto 0) ;
  constant sa_count_ia_config_t_reset : std_logic_vector(8 downto 0) :=
   std_logic_vector'("000000000") ;
  type $_DUMMY375 is
  record
    part0 : std_logic_vector(12 downto 0) ;
  end record ;
  subtype DUMMY375 is $_DUMMY375 std_logic_vector(12 downto 0) ;
type $_DUMMY376
   is
  record
    code : std_logic_vector(2 downto 0) ;
    datawords : std_logic_vector(4 downto 0) ;
    addr : std_logic_vector(4 downto 0) ;
  end record ;
  subtype DUMMY376 is $_DUMMY376 std_logic_vector(12 downto 0) ;
type
   $_sa_count_ia_status_t is
  record
    r : DUMMY375 ;
    f : DUMMY376 ;
  end record _unpacked_union_ ;
  subtype sa_count_ia_status_t is $_sa_count_ia_status_t std_logic_vector(12
   downto 0) ;
  constant sa_count_ia_status_t_reset : std_logic_vector(12 downto 0) :=
   std_logic_vector'("0000000111111") ;
  type $_DUMMY377 is
  record
    part0 : std_logic_vector(19 downto 0) ;
  end record ;
  subtype DUMMY377 is $_DUMMY377 std_logic_vector(19 downto 0) ;
type $_DUMMY378
   is
  record
    mem_type : std_logic_vector(3 downto 0) ;
    ack_error : std_logic ;
    sim_tmo : std_logic ;
    reserved_op : std_logic_vector(3 downto 0) ;
    compare : std_logic ;
    set_init_start : std_logic ;
    initialize_inc : std_logic ;
    initialize : std_logic ;
    reset : std_logic ;
    disabled : std_logic ;
    enable : std_logic ;
    write : std_logic ;
    read : std_logic ;
    nop : std_logic ;
  end record ;
  subtype DUMMY378 is $_DUMMY378 std_logic_vector(19 downto 0) ;
type
   $_sa_count_ia_capability_t is
  record
    r : DUMMY377 ;
    f : DUMMY378 ;
  end record _unpacked_union_ ;
  subtype sa_count_ia_capability_t is $_sa_count_ia_capability_t
   std_logic_vector(19 downto 0) ;
  constant sa_count_ia_capability_t_reset : std_logic_vector(19 downto 0) :=
   std_logic_vector'("00000000000000000000") ;
  type $_DUMMY379 is
  record
    part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY379 is $_DUMMY379 std_logic_vector(31 downto 0) ;
type $_DUMMY380
   is
  record
    key_size : std_logic_vector(31 downto 0) ;
  end record ;
  subtype DUMMY380 is $_DUMMY380 std_logic_vector(31 downto 0) ;
type
   $_kdf_test_key_size_t is
  record
    r : DUMMY379 ;
    f : DUMMY380 ;
  end record _unpacked_union_ ;
  subtype kdf_test_key_size_t is $_kdf_test_key_size_t std_logic_vector(31
   downto 0) ;
  constant kdf_test_key_size_t_reset : std_logic_vector(31 downto 0) :=
   std_logic_vector'("00000000000000000000000000000000") ;
end cr_kme_regfilePKG ;
