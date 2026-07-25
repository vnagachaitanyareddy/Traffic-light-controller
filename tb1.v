module tb1;

    reg clk;
    reg reset;

    wire [1:0] rA;
    wire [1:0] rB;

    traffic_light_controller uut (
        .clk(clk),
        .reset(reset),
        .rA(rA),
        .rB(rB)
    );

    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

  
    initial
    begin
        reset = 1;
        #10;
        reset = 0;

        
        #300;

        $finish;
    end

    // Display outputs
    initial
    begin
        $display("Time\treset\tState of RoadA\tState of RoadB");
        $monitor("%0t\t%b\t%b\t\t%b", $time, reset, rA, rB);
    end

endmodule
