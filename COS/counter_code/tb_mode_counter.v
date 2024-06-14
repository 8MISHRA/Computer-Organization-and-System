`include "mode_counter.v"

module tb_model_counter();
  reg clk, reset, mode;
  wire [7:0] counter;

  mode_counter #(.sz(8)) c1(clk, reset, mode, counter);

  initial begin
    clk <= 1;
    forever begin
      #2 clk <= ~clk;
    end
  end

  initial begin 
    $monitor("counter=%d", counter);

    reset = 1'b1; mode=1'd0;
    #2 reset = 1'b0;
    #40 mode=1'd1;
    #200 $finish;
  end

  initial begin
    $dumpfile("out.vcd");
    $dumpvars;
  end
endmodule




//   initial begin
//     clk = 1'b0; // Initialize clock
//     reset = 1'b1; // Set reset initially
//     mode = 1'b0; // Set mode initially

//     $dumpfile("out.vcd");
//     $dumpvars(0, tb_model_counter); // Dump all variables in the module

//     // Toggle clock using a @(posedge clk) block
//     forever begin
//       #5 clk = ~clk; // Toggle the clock every 5 time units
//     end
//   end

//   // Stimulus generation
//   initial begin
//     // Reset the circuit and then deassert reset after 20 time units
//     #10 reset = 1'b0;
//     #20 reset = 1'b1;

//     // Change mode after 40 time units
//     #40 mode = 1'b1;

//     // Finish simulation after 100 time units
//     #100 $finish;
//   end

//   // Monitor the counter output
//   always @(posedge clk) begin
//     $display("counter=%d", counter);
//   end
// endmodule