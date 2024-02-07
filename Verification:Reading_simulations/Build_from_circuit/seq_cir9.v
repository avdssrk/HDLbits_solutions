module top_module (
    input clk,
    input a,
    output reg [3:0] q );
    
    always @(posedge clk) begin
        if(a)
            q<= 4'b0100;
        else if(q==4'b0110)
            q<= 4'b0000;
        else
            q<= q+1'b0001;
    end

endmodule
