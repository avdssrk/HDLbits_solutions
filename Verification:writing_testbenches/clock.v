module top_module ( );
    reg clk=0;
    
    dut dd(clk);
    
    always #5 clk=~clk;

endmodule
