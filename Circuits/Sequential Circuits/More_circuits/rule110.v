module top_module(
    input clk,
    input load,
    input [511:0] data,
    output [511:0] q
); 
    reg [511:0] d;
    always @(posedge clk) begin
        if(load)
            d<=data;
        else begin
            d<= (q^{q[510:0],1'b0}) | {1'b1,~q[511:1]}&q;
        end
    end

    assign q=d;
endmodule
