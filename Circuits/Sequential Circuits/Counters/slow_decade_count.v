module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);

    reg [3:0] count;
    
    always @(posedge clk) begin
        if(reset)
            count<=0;
        else if(slowena) begin
            if(count==9)
                count<=0;
            else
                count<=count+1;
        end
        else
            count<=count;
    end
    assign q = count;
    
endmodule
