module mod_a (input x, input y, output z); 
  assign z = (x ^ y) & x;
endmodule

module mod_b (input x, input y, output z);
  assign z = ~(x ^ y);
endmodule

module top_module (input x, input y, output z);

  wire z1, z2, z3, z4;
  mod_a IA1 (x, y, z1);
  mod_b IB1 (x, y, z2);
  mod_a IA2 (x, y, z3);
  mod_b IB2 (x, y, z4);
  assign z = (z1 | z2) ^ (z3 & z4);

endmodule
