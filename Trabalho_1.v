module pisca (input clock, output led);
  assign led = clock;
endmodule

module testclock;
  reg clock;
  wire led;
  always #1 clock = ~clock;
  pisca A(clock, led);
  initial begin
    $dumpvars(0, A);
    clock <= 0;
    #100;
    $finish;
  end
endmodule
