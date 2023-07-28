module top_module (
    input clk,
    input reset,
    output [3:0] q);
	
    reg [3:0] count;
    
    always @(posedge clk) begin
        if(reset)
            count<=1;
        else if(count==10)
            count<=1;
        else
            count<=count+1;
    end
    assign q = count;
endmodule
