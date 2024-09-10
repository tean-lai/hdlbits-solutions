module top_module (
  input clk,
  input w, R, E, L,
  output Q
);
  wire w1 = (E) ? w : Q;
  wire d = (L) ? R : w1;
  always @(posedge clk) begin
    Q <= d;
  end

endmodule
