module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 5'h1
    output [4:0] q
); 
    reg [4:0] d;
    
    always @(posedge clk) begin
        if(reset)
            d<=5'b00001;
    	else begin
            d[0] <= d[1];
            d[1] <= d[2];
            d[2] <= d[3]^d[0];
            d[3] <= d[4];
            d[4] <= 1'b0 ^ d[0];
        end
    end
    
    assign q = d;
    

endmodule
