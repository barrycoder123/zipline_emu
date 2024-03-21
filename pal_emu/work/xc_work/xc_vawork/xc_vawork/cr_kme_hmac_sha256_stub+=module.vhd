architecture module of cr_kme_hmac_sha256_stub is

begin
  hash_cmdfifo_ack <= '1' ;
  hash_keyfifo_ack <= '1' ;
  hash_len_data_out_ack <= '1' ;
  hash_in_stall <= '0' ;
  sha_tag_data <=
   "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
   ;
  sha_tag_valid <= '0' when (sha_tag_stall)='1' else '1' ;
  sha_tag_last <= '0' ;
end module;
