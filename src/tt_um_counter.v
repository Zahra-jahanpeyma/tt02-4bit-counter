module tt_um_counter (
    input clk,              
    input ena,              
    input [7:0] ui_in,      
    output [7:0] uo_out     
);

    reg [3:0] count;

    always @(posedge clk) begin
        if (ena) begin
            if (ui_in[0]) begin
                count <= 4'b0000;
            end else begin
                count <= count + 1;
            end
        end
    end

    assign uo_out = {4'b0000, count};  // 

endmodule
