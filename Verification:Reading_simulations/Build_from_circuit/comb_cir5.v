module top_module (
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    input [3:0] d,
    input [3:0] e,
    output [3:0] q );
    
    reg [3:0] out;
    
    always @* begin
        case(c)
            4'b0000: out = b;
            4'b0001: out = e;
            4'b0010: out = a;
            4'b0011: out = d;
            default: out = 4'b1111;
        endcase
    end
    assign q = out;

endmodule
