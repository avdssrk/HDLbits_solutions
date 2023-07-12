module top_module (
    input clk,
    input x,
    output z
); 
    reg [2:0] Q,Qbar;
    assign Qbar = ~Q;
    assign z = ~|Q;
    initial begin
        Q = 3'b000;
    end
    
    always @(posedge clk) begin
        Q[0] <=Q[0]^x;
        Q[1] <= Qbar[1]&x;
        Q[2] <= Qbar[2] ||x;
        
    end
    

endmodule
