module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
	
    assign out = (~c)&&(~b) || (~a)&&(~d) || (~a)&&(c)&&b || a&&c&&d;
    
endmodule
