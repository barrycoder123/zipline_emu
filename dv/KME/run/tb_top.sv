/*****************************************************************************
* Module:   TB_TOP
* About:    new testbench wrapper after palladium migration; old kme_tb.sv is now 
*           a synth'ble DUT
* Author:   Ibrahima Barry SVG AE 
* Date:     05/06/2024
*****************************************************************************/
`include "kme_tb.sv"
module tb_top;
    // kme_tb.sv DUT inst
    kme_tb kme_tb_dut();
    // call new kme_tb.sv task here
    initial begin
        fork begin kme_tb_dut.tb_task; end join_none
        //$finish;
    end
endmodule: tb_top
