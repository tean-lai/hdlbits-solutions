module top_module(
    input clk,
    input areset,    // Asynchronous reset to state B
    input in,
    output out);//  

    parameter A=0, B=1; 
    reg state, next_state;

    always @(*) begin    // This is a combinational always block
        // State transition logic
        if (in == 1) next_state = state;
        else begin 
            if (state == A) next_state = B;
            else next_state = A;
        end
    end

    always @(posedge clk, posedge areset) begin    // This is a sequential always block
        if (areset) state = B;
        else state <= next_state;
    end

    assign out = (state == B);

endmodule
