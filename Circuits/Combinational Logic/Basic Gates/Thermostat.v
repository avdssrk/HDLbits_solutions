module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
    assign heater = mode?too_cold:0;
    assign aircon = mode?0:too_hot;
    assign fan = heater|aircon|fan_on;

endmodule
