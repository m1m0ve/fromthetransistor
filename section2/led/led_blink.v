module led_blink(
    input clk,
    output reg led
);

reg [32:0] bcount = 0;
reg [24:0] count; // Use a 25-bit register for the counter (2^25 = 33,554,432, which is more than 1 second at 100 MHz)

always @(posedge clk) begin
    /* verilator lint_off BLKSEQ */
    $display("Hello");
    // if (bcount <10) begin 
        if (count == 1000) begin // Time is up (100 MHz for 1 second) count = 33554431 = 1 sec blink)

            count <= 0;              // Reset count register
            led <= ~led;             // Toggle led (once per second)
            bcount <= bcount + 1;
            $display("* blinked %d times", bcount);

        end else begin
            count <= count + 10; // Count 100MHz clock
        end 
    //end else begin
        //$display("DONE!");
        //$finish;
    //end 
end
endmodule
