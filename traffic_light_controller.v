module traffic_light_controller(
    input clk,
    input reset,
    output reg [1:0] rA,
    output reg [1:0] rB
);

parameter RED    = 2'b00;
parameter YELLOW = 2'b01;
parameter GREEN  = 2'b10;

parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10,
          S3 = 2'b11;

reg [1:0] state;
reg [3:0] count;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        state <= S0;
        count <= 0;
    end
    else
    begin
        case(state)

        S0:
        begin
            if(count == 9)
            begin
                state <= S1;
                count <= 0;
            end
            else
                count <= count + 1;
        end

        S1:
        begin
            if(count == 2)
            begin
                state <= S2;
                count <= 0;
            end
            else
                count <= count + 1;
        end

        S2:
        begin
            if(count == 9)
            begin
                state <= S3;
                count <= 0;
            end
            else
                count <= count + 1;
        end

        S3:
        begin
            if(count == 2)
            begin
                state <= S0;
                count <= 0;
            end
            else
                count <= count + 1;
        end

        default:
        begin
            state <= S0;
            count <= 0;
        end

        endcase
    end
end

always @(*)
begin
    case(state)

    S0:
    begin
        rA = GREEN;
        rB = RED;
    end

    S1:
    begin
        rA = YELLOW;
        rB = RED;
    end

    S2:
    begin
        rA = RED;
        rB = GREEN;
    end

    S3:
    begin
        rA = RED;
        rB = YELLOW;
    end

    default:
    begin
        rA = RED;
        rB = RED;
    end

    endcase
end

endmodule
