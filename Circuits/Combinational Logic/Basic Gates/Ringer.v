module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
    assign ringer = vibrate_mode?0:ring;
    assign motor = vibrate_mode?ring:0;

endmodule
