`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/20 11:43:40
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
input   clk,
input   rst,
input   sclr,
input   enable,
output  [7:0]   an,
output  [6:0]   seg
    );

wire    clk_5m;
wire    rst_n;
wire    cout;
reg     pulse_1hz;
wire    [3:0]   tens_dout;
wire    [3:0]   units_dout;
reg     [7:0]   seg_sel;
reg     [3:0]   seg_din;    
reg     [22:0]  cnt;    
clk_wiz_0   clk_wiz_0(
.clk_in1    (clk),
.clk_out1   (clk_5m),
.reset      (rst),
.locked     (rst_n)
);    

c_counter_binary_0 units(
.CLK            (clk_5m), 
.CE             (pulse_1hz & enable), 
.SCLR           (sclr),
.THRESH0        (cout), 
.Q              (units_dout)
);    //units

c_counter_binary_0 tens(
.CLK            (clk_5m),
.SCLR           (sclr), 
.CE             (cout & pulse_1hz & enable), 
.THRESH0        (), 
.Q              (tens_dout)
);    //units
 
seg_ctrl        seg_ctrl(
.x              (seg_din),
.sel            (seg_sel),
.an             (an),
.seg            (seg)
    ); 
 
 always@(posedge clk_5m or negedge rst_n)
 begin
    if(~rst_n)
        cnt <= 23'h0;
    else if(cnt<23'd5000000)
        cnt <= cnt + 1;
    else
        cnt <= 23'h0;
 end

 always@(posedge clk_5m or negedge rst_n)
 begin
    if(~rst_n)
        pulse_1hz   <= 1'b0;
    else if(cnt==23'd4999999)
        pulse_1hz   <= 1'b1;
    else
        pulse_1hz   <= 1'b0;
end

 always@(posedge clk_5m or negedge rst_n)
begin
    if(~rst_n)
    begin
        seg_sel <= 8'b0;
        seg_din <= 4'h0;
    end
    else case(cnt[15:13])
        3'b000:
        begin
            seg_sel <= 8'b1111_1110;
            seg_din <= units_dout;
        end
        3'b001:
        begin
            seg_sel <= 8'b1111_1101;
            seg_din <= tens_dout;
        end
        3'b010:
        begin
            seg_sel <= 8'b1111_1011;
            seg_din <= 4'h0;
        end        
        3'b011:
        begin
            seg_sel <= 8'b1111_0111;
            seg_din <= 4'h0;
        end        
        3'b100:
        begin
            seg_sel <= 8'b1110_1111;
            seg_din <= 4'h0;
        end        
        3'b101:
        begin
            seg_sel <= 8'b1101_1111;
            seg_din <= 4'h0;
        end        
        3'b110:
        begin
            seg_sel <= 8'b1011_1111;
            seg_din <= 4'h0;
        end        
        3'b111:  
        begin
            seg_sel <= 8'b0111_1111;
            seg_din <= 4'h0;
        end        
        endcase      
end

    
endmodule
