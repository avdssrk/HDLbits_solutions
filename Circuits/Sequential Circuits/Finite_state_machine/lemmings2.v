module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    output walk_left,
    output walk_right,
    output aaah ); 
    
    parameter LEFT=0, RIGHT=1;
    reg state, next_state;
    reg fly;
    
    always @* begin
        case(state)
            LEFT: next_state = (~fly)?((ground&bump_left)?RIGHT:LEFT):next_state;
            RIGHT: next_state = (~fly)?((ground&bump_right)?LEFT:RIGHT):next_state;
            default: next_state = LEFT;
        endcase
    end
    
    always @(posedge clk or posedge areset) begin
       
        if(areset) begin state <=LEFT; fly = 1'b0; end
        else if(ground==1'b0) begin fly=1'b1;state <= state; end
        else begin state <= next_state; fly=1'b0; end
    end
    assign walk_left = (~fly)&(state == LEFT);
    assign walk_right = (~fly)&(state == RIGHT);
    assign aaah = fly;
    
    

endmodule
