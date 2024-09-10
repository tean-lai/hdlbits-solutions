module top_module( 
    input [99:0] in,
    output [99:0] out
);
  always_comb begin
    for (int i = 0; i <= 99; i++) begin
        out[99 - i] = in[i];
    end
  end
  

endmodule
