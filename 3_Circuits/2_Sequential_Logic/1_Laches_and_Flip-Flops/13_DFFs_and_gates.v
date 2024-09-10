module top_module (
  input clk,
  input x,
  output z
);
  wire q1;
  wire q2;
  wire q3;
  
  dff d1 (clk, (x ^ q1), q1);
  dff d2 (clk, (x & ~q2), q2);
  dff d3 (clk, (x | ~q3), q3);

  assign z = ~(q1 | q2 | q3);
endmodule

module dff (
  input clk,
  input d,
  output q
);
  always @(posedge clk) begin
    q <= d;
  end

endmodule
