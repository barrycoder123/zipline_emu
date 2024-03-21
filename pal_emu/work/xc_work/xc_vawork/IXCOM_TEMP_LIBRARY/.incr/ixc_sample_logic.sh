`begin_keywords "1800-2012"
module ixc_sample_logic ( sv, v );
parameter WIDTH = 1 ;
parameter RD_TYPE = 0 ;
parameter type StateType = logic ;
output StateType[(WIDTH - 1) : 0] sv ;
input StateType[(WIDTH - 1) : 0] v ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH RD_TYPE StateType DUMMY2 sv v portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
