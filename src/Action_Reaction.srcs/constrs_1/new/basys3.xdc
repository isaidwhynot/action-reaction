# Clock signal
set_property PACKAGE_PIN W5 [get_ports CLK100MHZ]							
	set_property IOSTANDARD LVCMOS33 [get_ports CLK100MHZ]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports CLK100MHZ]

##VGA Connector
set_property PACKAGE_PIN G19 [get_ports {vgaRed0}]                
    set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed0}]
set_property PACKAGE_PIN H19 [get_ports {vgaRed1}]                
    set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed1}]
set_property PACKAGE_PIN J19 [get_ports {vgaRed2}]                
    set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed2}]
set_property PACKAGE_PIN N19 [get_ports {vgaRed3}]                
    set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed3}]
set_property PACKAGE_PIN N18 [get_ports {vgaBlue0}]                
    set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue0}]
set_property PACKAGE_PIN L18 [get_ports {vgaBlue1}]                
    set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue1}]
set_property PACKAGE_PIN K18 [get_ports {vgaBlue2}]                
    set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue2}]
set_property PACKAGE_PIN J18 [get_ports {vgaBlue3}]                
    set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue3}]
set_property PACKAGE_PIN J17 [get_ports {vgaGreen0}]                
    set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen0}]
set_property PACKAGE_PIN H17 [get_ports {vgaGreen1}]                
    set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen1}]
set_property PACKAGE_PIN G17 [get_ports {vgaGreen2}]                
    set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen2}]
set_property PACKAGE_PIN D17 [get_ports {vgaGreen3}]                
    set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen3}]
set_property PACKAGE_PIN P19 [get_ports Hsync]                        
    set_property IOSTANDARD LVCMOS33 [get_ports Hsync]
set_property PACKAGE_PIN R19 [get_ports Vsync]                        
    set_property IOSTANDARD LVCMOS33 [get_ports Vsync]

# Switches
set_property PACKAGE_PIN R2 [get_ports {swh_multi}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {swh_multi}]
set_property PACKAGE_PIN V17 [get_ports {swh}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {swh}]
    
set_property PACKAGE_PIN V2 [get_ports {selection}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {selection}]

##Button
##Center Button
set_property PACKAGE_PIN U18 [get_ports start]						
	set_property IOSTANDARD LVCMOS33 [get_ports start]

##Right Button
#set_property PACKAGE_PIN T17 [get_ports reset]						
        #set_property IOSTANDARD LVCMOS33 [get_ports reset]