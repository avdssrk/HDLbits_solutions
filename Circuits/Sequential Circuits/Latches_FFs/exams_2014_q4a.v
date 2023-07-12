module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    always @(posedge clk) begin
        if(L==1) 
            Q<=R;
        else if(E==1)
            Q<=w;
        else
            Q<=Q;
    end
            

endmodule
