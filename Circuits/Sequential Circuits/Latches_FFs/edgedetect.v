module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    
    reg [1:0] q [0:7];
    
    always @(posedge clk) begin
        q[0][1] <= q[0][0];
        q[0][0] <= in[0];
        q[1][1] <= q[1][0];
        q[1][0] <= in[1];
        q[2][1] <= q[2][0];
        q[2][0] <= in[2];
        q[3][1] <= q[3][0];
        q[3][0] <= in[3];
        q[4][1] <= q[4][0];
        q[4][0] <= in[4];
        q[5][1] <= q[5][0];
        q[5][0] <= in[5];
        q[6][1] <= q[6][0];
        q[6][0] <= in[6];
        q[7][1] <= q[7][0];
        q[7][0] <= in[7];
    end
    assign pedge = {q[7][0]&~q[7][1],q[6][0]&~q[6][1],q[5][0]&~q[5][1],q[4][0]&~q[4][1],
                    q[3][0]&~q[3][1],q[2][0]&~q[2][1],q[1][0]&~q[1][1],q[0][0]&~q[0][1]};

endmodule
