// 2. TESTBENCH KODU (Verilog Standart)
module tb_mux4to1_8bit;

    // logic yerine reg (kaydedici) ve wire (kablo) kullanıyoruz
    reg [7:0] in0, in1, in2, in3;
    reg [1:0] sel;
    wire [7:0] out;

    mux4to1_8bit uut (
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .sel(sel),
        .out(out)
    );

    initial begin
        // Dalga formunu oluşturmak için komutlar
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_mux4to1_8bit);

        // Girişlere test değerleri (Hexadecimal)
        in0 = 8'hAA; 
        in1 = 8'hBB; 
        in2 = 8'hCC; 
        in3 = 8'hDD; 

        // Seçici sinyalleri değiştirip test etme
        sel = 2'b00; #10;
        $display("Zaman=%0t | sel=%b | Cikis=%h (Beklenen: %h)", $time, sel, out, in0);

        sel = 2'b01; #10;
        $display("Zaman=%0t | sel=%b | Cikis=%h (Beklenen: %h)", $time, sel, out, in1);

        sel = 2'b10; #10;
        $display("Zaman=%0t | sel=%b | Cikis=%h (Beklenen: %h)", $time, sel, out, in2);

        sel = 2'b11; #10;
        $display("Zaman=%0t | sel=%b | Cikis=%h (Beklenen: %h)", $time, sel, out, in3);

        #10 $finish;
    end

endmodule