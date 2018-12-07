## lab10

Pb17030889

吉志远

----

### 1. lab10_1_1

使用mearly型电路实现模3检测

1. 代码

   ```verilog
   `timescale 1ns / 1ps
   module mod3check(input clk, input reset, input ain,output reg [3:0]count, output  yout);
   reg [1:0] state, nextstate;
   parameter S0=2'b00,//0mod3  
             S1=2'b01,//1mod3
             S2=2'b10,//2mod3
             S3=2'b11;//3
   always @(posedge clk or negedge reset)
   begin
       if(reset)
           count<=4'b0000;//清零
       else if(ain)
           count=count+1;
   end
   always @(posedge clk or posedge reset) // always block to update state
   if (reset)
   state <= S0;
   else 
   state<=nextstate;
   
   always @(*) // always block to compute nextstate
       begin
       nextstate = S0;
   case(state)
   S0: if(ain)
           nextstate = S1;
   S1: if(ain)
           nextstate = S2;
       else
           nextstate = S1;
   S2: if(!ain)
           nextstate = S2;
           else nextstate = S3;
   S3: if(ain)
          nextstate  = S1;
       else
          nextstate  = S3;
   endcase
   end
   assign  yout = (state==S3)&&(ain);
   endmodule%                           
   ```

2. 仿真

   ![1544168765431](/home/alicemare/.config/Typora/typora-user-images/1544168765431.png)

3. bitstream

   ![1544168460380](/home/alicemare/.config/Typora/typora-user-images/1544168460380.png)



### 2. lab10_2_1

1. moore电路

   ```verilog
   `timescale 1ns / 1ps
   
   module moore(
       input rst,
       input clk,
       input [1:0] ain,
       output reg yout  
       );
   reg [3:0]curr_state,next_state;
   parameter S0=4'b0000;
   always@(posedge clk or posedge rst)
   begin
       if(rst)
           curr_state  <= S0;
       else
           curr_state  <= next_state;
   end
   
   always@(*)
   begin
       next_state = {curr_state[1:0],ain[1:0]};
   end
   
   always@(posedge clk or posedge rst)
   begin
       if(rst)
           yout <= 1'b0;
       else if(curr_state==4'b0100)
           yout <= 1'b0;
       else if(curr_state==4'b1100)
           yout <= 1'b1;
       else if(curr_state==4'b1000)
           yout <=  ~yout;
   end
   
   endmodule
   
   ```

2. 仿真

   ```verilog
   `timescale 1ns / 1ps
   module tb(
   
       );
       reg clk,reset;
       reg [1:0] x;
       wire [3:0] state;
       wire [3:0] nextstate;
       wire yout;
       //cao,这里yout第一次用reg不行 sim说eleborate step failed with error
       //wire [2:0]state,nstate;
    //debug 用，方便看state nextstatemoore testb(clk,reset,state,nstate,x,yout);
       moore test(reset,clk,x,yout);
    initial begin
       x=2'b00;
       clk = 0;
       reset = 1;
       
    end
    
    always @(*) begin
    #5 clk <= ~clk;
    end
    initial begin
    #20 reset = 0;
    #20 x[1:0] = 11;
    #10 x[1:0] = 10;
    #10 x[1:0] = 00;
    #20 x[1:0] = 10;
    #10 x[1:0] = 00;
    #10 x[1:0] = 10;
    #10 x[1:0] = 00;
    #10 x[1:0] = 01;
    #10 x[1:0] = 00;
    #10 x[1:0] = 10;
    #10 x[1:0] = 11;
    #10 x[1:0] = 00;
    #10 reset = 1;
    #10 reset = 0;
    #10 x[1:0] = 10;
    #20 x[1:0] = 00;
    end    
   endmodule
   ```

#### 仿真

![1544167775045](/home/alicemare/.config/Typora/typora-user-images/1544167775045.png)

#### bitstream

![1544168435462](/home/alicemare/.config/Typora/typora-user-images/1544168435462.png)