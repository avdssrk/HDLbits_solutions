module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    //module bcd_fadd ([3:0] a,[3:0] b,cin, cout,[3:0] sum );
    
    wire [100:0] carry;
    
    assign carry[0] = cin;
    assign cout = carry[100];
    
    genvar i;
    
    generate
        for(i=0;i<100;i++)
            begin: adder
                
                bcd_fadd add(a[(i<<2)+3:i<<2],b[(i<<2)+3:i<<2],carry[i],carry[i+1],sum[(i<<2)+3:i<<2]);
            end
    endgenerate    

endmodule
