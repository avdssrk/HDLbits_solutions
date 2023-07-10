module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
    wire [7:0] temp1;
    wire [8:0] temp2;
    assign temp1 = a[6:0] + b[6:0];
    assign temp2 = a+b;
    
    assign s = a+b;
    assign overflow = temp1[7] ^ temp2[8];

endmodule
