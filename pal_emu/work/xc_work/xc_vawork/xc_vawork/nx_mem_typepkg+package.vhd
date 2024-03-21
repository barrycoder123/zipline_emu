library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
package nx_mem_typePKG is
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of nx_mem_typePKG: package is 1 ;
  subtype bool_t is std_logic ;
  constant DUMMY0 : bool_t := std_logic'('0') ;
  constant DUMMY1 : bool_t := std_logic'('1') ;
  -- next() function DUMMY2 for enum type bool_t
  function DUMMY2 (__v : bool_t ; __n : integer) return bool_t is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when DUMMY0 => posn := 0 ;
    when DUMMY1 => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn + __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- prev() function DUMMY3 for enum type bool_t
  function DUMMY3 (__v : bool_t ; __n : integer) return bool_t is
  variable posn : integer range 0 to 1 := 0;
  variable __m : integer range 0 to 1 := 0;
  begin
  case __v is
    when DUMMY0 => posn := 0 ;
    when DUMMY1 => posn := 1 ;
    when others => return '0' ;
  end case;
  __m := (posn - __n) mod 2 ;
  return integer_to_std(__m) ;
  end;
  -- name() function DUMMY4 for enum type bool_t
  function DUMMY4 (__v : bool_t) return std_logic_vector is
  begin
  case __v is
    when DUMMY0 => return ext(X"46414C5345", 40) ;
    when DUMMY1 => return ext(X"54525545", 40) ;
    when others => return ext(X"00", 40) ;
  end case ;
  end ;
  subtype mem_type_e is std_logic_vector(3 downto 0) ;
  constant SPRAM : mem_type_e := std_logic_vector'("0000") ;
  constant SRFRAM : mem_type_e := std_logic_vector'("0001") ;
  constant REG : mem_type_e := std_logic_vector'("0010") ;
  constant TCAM : mem_type_e := std_logic_vector'("0011") ;
  -- next() function DUMMY5 for enum type mem_type_e
  function DUMMY5 (__v : mem_type_e ; __n : integer) return mem_type_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when SPRAM => posn := 0 ;
    when SRFRAM => posn := 1 ;
    when REG => posn := 2 ;
    when TCAM => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn + __n) mod 4 ;
  return integer_to_std(__m,4) ;
  end;
  -- prev() function DUMMY6 for enum type mem_type_e
  function DUMMY6 (__v : mem_type_e ; __n : integer) return mem_type_e is
  variable posn : integer range 0 to 3 := 0;
  variable __m : integer range 0 to 3 := 0;
  begin
  case __v is
    when SPRAM => posn := 0 ;
    when SRFRAM => posn := 1 ;
    when REG => posn := 2 ;
    when TCAM => posn := 3 ;
    when others => return (others => '0') ;
  end case;
  __m := (posn - __n) mod 4 ;
  return integer_to_std(__m,4) ;
  end;
  -- name() function DUMMY7 for enum type mem_type_e
  function DUMMY7 (__v : mem_type_e) return std_logic_vector is
  begin
  case __v is
    when SPRAM => return ext(X"535052414D", 48) ;
    when SRFRAM => return ext(X"53524652414D", 48) ;
    when REG => return ext(X"524547", 48) ;
    when TCAM => return ext(X"5443414D", 48) ;
    when others => return ext(X"00", 48) ;
  end case ;
  end ;
  type $_capabilities_t is
  record
    ack_error : bool_t ;
    sim_tmo : bool_t ;
    reserved_op : std_logic_vector(3 downto 0) ;
    compare : bool_t ;
    set_init_start : bool_t ;
    init_inc : bool_t ;
    init : bool_t ;
    reset : bool_t ;
    disabled : bool_t ;
    enable : bool_t ;
    write : bool_t ;
    read : bool_t ;
    nop : bool_t ;
  end record ;
  subtype capabilities_t is $_capabilities_t std_logic_vector(15 downto 0) ;
end nx_mem_typePKG ;
