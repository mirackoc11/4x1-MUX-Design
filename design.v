 1. TASARIM KODU (Verilog Standart)
module mux4to1_8bit (
    input  wire [70] in0,
    input  wire [70] in1,
    input  wire [70] in2,
    input  wire [70] in3,
    input  wire [10] sel,
    output reg  [70] out
);

     always_comb yerine Verilog standardı olan always @() kullanıyoruz
    always @() begin
        case (sel)
            2'b00 out = in0;
            2'b01 out = in1;
            2'b10 out = in2;
            2'b11 out = in3;
            default out = 8'h00;
        endcase
    end

endmodule