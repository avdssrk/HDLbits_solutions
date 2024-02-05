module top_module();
    reg clk=0;
    reg in=0;
    reg [2:0] s;
    wire out;
    q7 dut(clk,in,s,out);
    always #5 clk=~clk;
    initial begin
		s=3'b010;
        #10 s=3'b110;
        #10 in=1'b1;
        s=3'b010;
        #10 in=1'b0;
        s=3'b111;
        #10 in=1'b1;
        s=3'b000;
        #30 in=1'b0;
    end
endmodule
