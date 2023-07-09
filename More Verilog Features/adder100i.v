module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    wire [100:0] carry;
    assign carry[0] = cin;
    
    genvar i;
    generate 
        for(i=0;i<100;i=i+1)
        begin: fa_block
            wire t1,t2,t3;
            xor s1(t1,a[i],b[i]);
            xor s2(sum[i],t1,carry[i]);
            and a1(t2,a[i],b[i]);
            and a2(t3,t1,carry[i]);
            or  o1(carry[i+1],t2,t3);
        end
    endgenerate   
    assign cout = carry[100:1];

endmodule

