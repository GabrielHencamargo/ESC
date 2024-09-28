iverilog -o design.vvp "../testeb/tb_mux4way16.v"
vvp design.vvp
gtkwave signals.vcd