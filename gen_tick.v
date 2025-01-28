//=========================================================================
// Name & Email must be EXACTLY as in Gradescope roster!
// Name: 
// Email: 
// 
// Assignment name: 
// Lab section: 
// TA: 
// 
// I hereby certify that I have not received assistance on this assignment,
// or used code, from ANY outside source other than the instruction team
// (apart from what was provided in the starter file).
//
//=========================================================================

module gen_tick # ( parameter SRC_FREQ = 5000, parameter TICK_FREQ = 1) (
    input src_clk,
    input enable,
    output reg tick
);
initial begin
    tick = 0; 
end
// Declare registers and wires here
 localparam integer period = SRC_FREQ / TICK_FREQ;
 reg [31:0] count = 0;
 always @(posedge src_clk) begin
   if(enable)begin
        if(count == period-1)begin
            count <= 0;
            tick <= ~tick;
        end else begin
            count <= count+1;
            end 
   end else begin
    count<=0;
    tick<=0;
    end
end


endmodule
