module top_module (
    input [2:0] a,
    output [15:0] q ); 
    
    reg [15:0] out;
    
    always @* begin
        case(a)
            3'b000: out = 16'h1232;
            3'b001: out = 16'haee0;
            3'b010: out = 16'h27d4;
            3'b011: out = 16'h5a0e;
            3'b100: out = 16'h2066;
            3'b101: out = 16'h64ce;
            3'b110: out = 16'hc526;
            3'b111: out = 16'h2f19;
            default: out = 16'h1232;
        endcase
    end
    
    assign q = out;

endmodule
