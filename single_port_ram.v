module  single_port_ram (
   input wire clk,          //we = 1 write, we = 0 read    
    input wire we,               
    input wire [5:0] addr,       
    input wire [7:0] data_in,    
    output reg [7:0] data_out    
);
  reg[7:0] ram[0:63];
  always @(posedge clk) begin
    if(we)
      ram[addr]<= data_in;
    else
      data_out<= ram[addr];
  end
endmodule
      
