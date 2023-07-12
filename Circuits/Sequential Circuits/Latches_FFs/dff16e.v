module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output [15:0] q
);
    always @(posedge clk) begin
        if(resetn==0)
            q<=0;
        else
            case(byteena)
                2'b00: q<=q;
                2'b01: q<= {q[15:8],d[7:0]};
                2'b10: q<= {d[15:8],q[7:0]};
                2'b11: q<= d;
                default: q<=q;
            endcase
    end

endmodule
