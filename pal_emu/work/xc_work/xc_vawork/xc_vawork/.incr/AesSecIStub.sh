`begin_keywords "1800-2012"
module AesSecIStub ( AesCiphOutR, AesCiphOutVldR, KeyInitStall, CiphInStall, Aes128, Aes192, Aes256, CiphIn, CiphInVldR, CiphInLastR, EncryptEn, KeyIn, KeyInitVldR, AesCiphOutStall, clk, rst_n );
output wire logic [127 : 0] AesCiphOutR ;
output wire logic AesCiphOutVldR ;
output wire logic KeyInitStall ;
output wire logic CiphInStall ;
input wire logic Aes128 ;
input wire logic Aes192 ;
input wire logic Aes256 ;
input wire logic [127 : 0] CiphIn ;
input wire logic CiphInVldR ;
input wire logic CiphInLastR ;
input wire logic EncryptEn ;
input wire logic [255 : 0] KeyIn ;
input wire logic KeyInitVldR ;
input wire logic AesCiphOutStall ;
input wire logic clk ;
input wire logic rst_n ;
endmodule
`end_keywords
/**portGenericDumpBegin AesCiphOutR AesCiphOutVldR KeyInitStall CiphInStall Aes128 Aes192 Aes256 CiphIn CiphInVldR CiphInLastR EncryptEn KeyIn KeyInitVldR AesCiphOutStall clk rst_n portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
