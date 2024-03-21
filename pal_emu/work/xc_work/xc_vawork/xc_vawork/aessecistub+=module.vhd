architecture module of AesSecIStub is

begin
  AesCiphOutR <=
   "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
   ;
  AesCiphOutVldR <= '0' when (AesCiphOutStall)='1' else '1' ;
  KeyInitStall <= '0' ;
  CiphInStall <= '0' ;
end module;
