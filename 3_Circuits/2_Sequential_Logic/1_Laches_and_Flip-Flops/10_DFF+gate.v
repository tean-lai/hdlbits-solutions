module top_module (
    input clk,
    input in, 
    output out);

    wire d = in ^ out;

    always @(posedge clk) begin
        out <= d;
    end

endmodule
module top_module (
    input clk,
    input in, 
    output out);

    wire d = in ^ out;

    always @(posedge clk) begin
        out <= d;
    end

endmodule
