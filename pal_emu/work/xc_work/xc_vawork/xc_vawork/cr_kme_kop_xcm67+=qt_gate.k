
module cr_kme_kop_xcm67 ;
//pragma CVASTRPROP MODULE SKELETON MODULEINFO "0.000000"
ixc_assign_106 _zz_strnp_0 ();
ixc_assign_611 _zz_strnp_1 ();
ixc_assign _zz_strnp_2 ();
ixc_assign_263 _zz_strnp_3 ();
ixc_assign_4 _zz_strnp_4 ();
ixc_assign _zz_strnp_5 ();
ixc_assign_106 _zz_strnp_6 ();
ixc_assign_611 _zz_strnp_7 ();
ixc_assign _zz_strnp_8 ();
ixc_assign_4 _zz_strnp_9 ();
ixc_assign_263 _zz_strnp_10 ();
ixc_assign _zz_strnp_11 ();
cr_kme_kop_tlv_inspector_xcm69 tlv_inspector ();
cr_kme_kop_upsizer_x2_xcm72 upsizer ();
cr_kme_kop_gcm gcm ();
cr_kme_kop_kdf kdf ();
cr_kme_kop_keybuilder key_builder ();
cr_kme_fifo_xcm50 gcm_cmd_fifo ();
cr_kme_fifo_xcm49 keyfilter_cmd_fifo ();
cr_kme_fifo_xcm48 kdf_cmd_fifo ();
cr_kme_fifo_xcm47 kdfstream_cmd_fifo ();
cr_kme_fifo_xcm46 tlv_sb_data_fifo ();
cr_kme_fifo_xcm45 gcm_tag_data_fifo ();
cr_kme_fifo_xcm49 gcm_status_data_fifo ();
endmodule
