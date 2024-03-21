`begin_keywords "1800-2012"
module cr_sa_counter ( sa_count, sa_snapshot, clk, rst_n, sa_event_sel, sa_events, sa_clear, sa_snap );
output logic [49 : 0] sa_count ;
output logic [49 : 0] sa_snapshot ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic [9 : 0] sa_event_sel ;
input wire logic [63 : 0] sa_events[15 : 0] ;
input wire logic sa_clear ;
input wire logic sa_snap ;
endmodule
`end_keywords
/**portGenericDumpBegin DUMMY0 sa_count sa_snapshot clk rst_n sa_event_sel sa_events sa_clear sa_snap portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
