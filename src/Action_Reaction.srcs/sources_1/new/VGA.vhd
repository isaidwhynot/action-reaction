--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity VGA is
--port(
--VGA_clk: IN STD_LOGIC;
--VGA_HS,VGA_VS: OUT STD_LOGIC;
--VGA_R,VGA_G,VGA_B: OUT STD_LOGIC_VECTOR(3 downto 0);
--swh: in std_logic;
--swh_multi: in std_logic;
--selection: in std_logic;
--start: in std_logic  
--);
--end VGA;

--architecture behavioral of VGA is

--Component SYNC is
--port(
--CLK: IN STD_LOGIC;
--HSYNC: OUT STD_LOGIC;
--VSYNC: OUT STD_LOGIC;
--R: OUT STD_LOGIC_VECTOR(3 downto 0);
--G: OUT STD_LOGIC_VECTOR(3 downto 0);
--B: OUT STD_LOGIC_VECTOR(3 downto 0);
--swh: in std_logic;
--swh_multi: in Std_logic;
--selection: in std_logic;
--start: in std_logic  
--);
--end component;

--signal xpos: integer range 0 to 1800:=0;
--signal ypos: integer range 0 to 795:=0;

-- begin
 
-- vga_sync: SYNC port map( clk => vga_clk , hsync => VGA_HS, vsync => VGA_VS, R => VGA_R, G => VGA_G, B => VGA_B, swh => swh,swh_multi => swh_multi,selection => selection, start => start);

--end behavioral;
