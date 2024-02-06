module top_module (
    input clk,
    input d,
    output q
);
    reg out1,out2;
    
    always @(posedge clk) begin
        out1<=d;
    end
    
    always @(negedge clk) begin
        out2 <=d;
    end
    assign q=clk?out1:out2;

endmodule
