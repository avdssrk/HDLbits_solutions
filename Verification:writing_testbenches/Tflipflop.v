module top_module ();
    reg clk=0;
    reg reset=0;
    reg t;
    wire q;
    tff dut(clk,reset,t,q);
    always #5 clk=~clk;
    initial begin
        reset = 1'b1;
        t=0;
        #10 reset=1'b0;
        t=1;
    end

endmodule
