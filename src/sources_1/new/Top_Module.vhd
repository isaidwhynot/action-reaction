library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity the_gf is
    Port (
           CLK100MHZ : in STD_LOGIC;
           
           Hsync : out STD_LOGIC;
           Vsync : out STD_LOGIC;
           
           vgaRed0 : out STD_LOGIC;
           vgaRed1 : out STD_LOGIC;
           vgaRed2 : out STD_LOGIC;
           vgaRed3 : out STD_LOGIC; 
           
           vgaGreen0 : out STD_LOGIC;
           vgaGreen1 : out STD_LOGIC;
           vgaGreen2 : out STD_LOGIC;
           vgaGreen3 : out STD_LOGIC;     
                           
           vgaBlue0 : out STD_LOGIC;
           vgaBlue1 : out STD_LOGIC;
           vgaBlue2 : out STD_LOGIC;
           vgaBlue3 : out STD_LOGIC;
           
           swh : in std_logic;
           swh_multi: in Std_logic;
           selection: in std_logic;
           start: in std_logic      
           );
end the_gf;

architecture Behavioral of the_gf is

--Component VGA is
--port(
--VGA_clk: IN STD_LOGIC;
--VGA_HS,VGA_VS: OUT STD_LOGIC;
--VGA_R,VGA_G,VGA_B: OUT STD_LOGIC_VECTOR(3 downto 0);
--swh: in std_logic;
--swh_multi: in std_logic;
--selection: in std_logic;
--start: in std_logic  
--);
--end component;
Component SYNC is
port(
CLK: IN STD_LOGIC;
HSYNC: OUT STD_LOGIC;
VSYNC: OUT STD_LOGIC;
R: OUT STD_LOGIC_VECTOR(3 downto 0);
G: OUT STD_LOGIC_VECTOR(3 downto 0);
B: OUT STD_LOGIC_VECTOR(3 downto 0);
swh: in std_logic;
swh_multi: in Std_logic;
selection: in std_logic;
start: in std_logic  
);
end component;
Component clk_divider
port
 (clk_out          : out    std_logic;
  clk_in1           : in     std_logic
 );
end component;

signal vga_clock: STD_LOGIC; 

signal VGA_red: STD_LOGIC_VECTOR( 3 DOWNTO 0);
signal VGA_blue: STD_LOGIC_VECTOR( 3 DOWNTO 0);
signal VGA_green: STD_LOGIC_VECTOR( 3 DOWNTO 0);

begin

--VGA signal assignments
vgaRed3 <= VGA_red(3);
vgaRed2 <= VGA_red(2);
vgaRed1 <= VGA_red(1);
vgaRed0 <= VGA_red(0);
vgaGreen3 <= VGA_green(3);
vgaGreen2 <= VGA_green(2);
vgaGreen1 <= VGA_green(1);
vgaGreen0 <= VGA_green(0);
vgaBlue3 <= VGA_blue(3);
vgaBlue2 <= VGA_blue(2);
vgaBlue1 <= VGA_blue(1);
vgaBlue0 <= VGA_blue(0);

VGA_module: SYNC PORT MAP( CLK => vga_clock, HSYNC => Hsync, VSYNC => Vsync, R => VGA_red, G => VGA_green, B => VGA_blue, swh => swh, swh_multi => swh_multi, selection => selection, start => start);
    
clock_generator: clk_divider PORT MAP( clk_out => vga_clock, clk_in1 => CLK100MHZ);

end Behavioral;
