module top_module( 
    input [254:0] in,
    output [7:0] out );
	
    reg [7:0] count;
    always @(*) begin
        count=0;
        for(int i=0;i<$bits(in);i=i+1)
            if(in[i]==1)
                count = count+1;
        	else
                count = count;
    end
    
    assign out = count;
endmodule
