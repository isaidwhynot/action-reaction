library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_textio.all;
use IEEE.std_logic_signed.all;

library work;
use work.operations.all;
use work.xox.all;
use work.color.all;
use work.opening_screen.all;
use work.closer_Screen.all;

entity SYNC is
port(
clk: in STD_LOGIC;

Hsync: out STD_LOGIC;
Vsync: out STD_LOGIC;

R: out STD_LOGIC_VECTOR(3 downto 0);
G: out STD_LOGIC_VECTOR(3 downto 0);
B: out STD_LOGIC_VECTOR(3 downto 0);

swh: in std_logic;
swh_multi: in Std_logic;

selection: in std_logic;
start: in std_logic    
);
end SYNC;

architecture Behavioral of SYNC is
--Keep tracking the location on VGA
signal xpos: integer range 0 to 1800:=0;
signal ypos: integer range 0 to 795:=0;

--Keep Tracking the Seconds for Sequential Showing Purpose
signal sequantative : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0'); --27 Bit is chosen to BE ABLE TO exceed 74 250 000 
signal qesuantative : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0'); --27 Bit is chosen to BE ABLE TO exceed 74 250 000 

--'Count' counts the real-time seconds and 'scorer' counts onr hundred of a second (salise) for score purpose 
signal count  : integer := 0;
signal scorer : integer := 0;

--Keeping the Score 
signal skor  : integer := 0;
signal skor_multi  : integer := 0;
--Enabling keeping the score of the multist player
signal multi_player_score : boolean := false;

--Interesting Signals
signal enough1, enough2, enough3, enough4, enough5, enough6, enough7, enough8, enough9 : boolean := true;
signal enough_multi1, enough_multi2, enough_multi3, enough_multi4, enough_multi5, enough_multi6, enough_multi7, enough_multi8, enough_multi9 : boolean := true;

--Indicating that game is on, actions are flowing
signal game_is_on : boolean := false;

--Preventing the game from restarting while playing
signal enable : boolean := true;
--Opens the game's opening screen
signal open_the_game: boolean := true;

--Providing a kind of randomness to the game
signal seed : integer := 0;
--The timing constants of actions of sequence
constant t_initial : integer := 2;
constant period : integer := 2;  

--Scor drawing constants for right player
constant scorx : integer := 1400;
constant scory : integer := 180;

--Scor drawing constants for left player
constant scorx_multi : integer := 466;
constant scory_multi : integer := 180;


begin
 
process( CLK)
begin
   if (rising_edge(CLK)) then 
   --------------------------------
   --------------------------------
   -------------------------------- 
      if( xpos < 1648) then
         xpos <= xpos + 1;
      else
         xpos <= 0; 
         if ( ypos < 750) then
            ypos <= ypos + 1;
         else
            ypos <= 0;                
         end if;
      end if;
            
      if( (xpos > 0 and xpos < 368) or (ypos > 0 and ypos < 30)) then
         R <= (OTHERS=> '0');
         G <= (OTHERS=> '0');
         B <= (OTHERS=> '1');
      end if; 
       
      if( xpos > 72 and xpos < 152) then
         HSYNC <= '1';
      else
         HSYNC <= '0';
      end if;   
      
      if( ypos > 3 and ypos < 8) then
         VSYNC <= '1';
      else
         VSYNC <= '0';
      end if;       
       
      if( (xpos > 368 and xpos < 1648) and ( ypos > 30 and ypos < 750)) then
         R <= (OTHERS=> '1');
         G <= (OTHERS=> '1');
         B <= (OTHERS=> '1');
      end if;    
--------------------------------
-------------------------------- Synchronization of fp, bp and whole line etc. ends here
--------------------------------  
      
      --Drawing the opening screen
      if ( open_the_game ) then
          R <= DRAW_opening_Screen(xpos,ypos,selection)(8 to 11);
          G <= DRAW_opening_Screen(xpos,ypos,selection)(4 to 7);
          B <= DRAW_opening_Screen(xpos,ypos,selection)(0 to 3);       
          
          skor <= 0;
          skor_multi <= 0;  
          
          enough1 <= true; enough2 <= true; enough3 <= true; enough4 <= true; enough5 <= true; enough6 <= true; enough7 <= true; enough8 <= true; enough9 <= true;
          enough_multi1 <= true; enough_multi2 <= true; enough_multi3 <= true; enough_multi4 <= true; enough_multi5 <= true; enough_multi6 <= true; enough_multi7 <= true; enough_multi8 <= true; enough_multi9 <= true;
          multi_player_score <= false;
      end if;
      
      --Triggering the game to start  
      if ( start = '1' and enable) then 
         game_is_on <= true;
         enable <= false;
         open_the_game <= false; 
         seed <= seed + 1;
      end if;   
      
--      if ( reset = 1 ) then
--          count <= 0;
--          open_the_game <= true;
--          enable <= true;
--          game_is_on <= false;
--      end if;
      
      if ( seed = 4 ) then
        seed <= 1;
      end if;
      --Enabling the multist player's score to be displayed
      if (  start  = '1' and selection = '1' ) then
         multi_player_score <= true;
      end if;
   
 
   if ( game_is_on ) then
      --Generating a sequantation <= true; a second-counter like objective        
      sequantative <= sequantative + 1;
      qesuantative <= qesuantative + 1;
        
      --Counting salise's
      if( qesuantative = 742500 - 1 ) then 
         qesuantative <= (others => '0');
         scorer <= scorer + 1;
      end if;
        
      --Counting seconds
      if( sequantative = 74250000 - 1 ) then --as it's 74.25MHz clock 
         sequantative <= (others => '0');
         count <= count + 1;
      end if;
      
---------------------------------------------------------------------------------------
------------------------------Actions start--------------------------------------------
---------------------------------------------------------------------------------------     
      if ( seed = 1 ) then 
      --"Draw_xox1" is the function that draws an XOX 
      if (  count >= 0 * t_initial and count<= t_initial + period*0) then
            R <= DRAW_xox1(xpos,ypos)(8 to 11);
            G <= DRAW_xox1(xpos,ypos)(4 to 7);
            B <= DRAW_xox1(xpos,ypos)(0 to 3);
            
      --"Draw_op1" is the function that draws 2 - 1 = 1
      elsif ( count >= t_initial + period*0 and count <= t_initial + period*1 ) then
           R <= DRAW_op1(xpos,ypos)(8 to 11);
           G <= DRAW_op1(xpos,ypos)(4 to 7);
           B <= DRAW_op1(xpos,ypos)(0 to 3);
        
      --"draw_GREENf" is the function that draws a red GREEN 
      elsif ( count >= t_initial + period*1 and count <= t_initial + period*2 ) then
           R <= draw_GREENf(xpos,ypos)(8 to 11);
           G <= draw_GREENf(xpos,ypos)(4 to 7);
           B <= draw_GREENf(xpos,ypos)(0 to 3);
        
      --"Draw_xox2" is the function that draws an XOX table 
      elsif ( count >= t_initial + period*2 and count <= t_initial + period*3 ) then
           R <= DRAW_XOX2(xpos,ypos)(8 to 11);
           G <= DRAW_XOX2(xpos,ypos)(4 to 7);
           B <= DRAW_XOX2(xpos,ypos)(0 to 3);     
        
      --"Draw_op2" is the function that draws 2 + 2 =  3
      elsif ( count >= t_initial + period*3 and count <= t_initial + period*4 ) then
           R <= DRAW_OP6(xpos,ypos)(8 to 11);
           G <= DRAW_OP6(xpos,ypos)(4 to 7);
           B <= DRAW_OP6(xpos,ypos)(0 to 3);
        
      --"draw_REDf" is the function that draws a blue RED 
      elsif ( count >= t_initial + period*4 and count <= t_initial + period*5) then
           R <= draw_grayf(xpos,ypos)(8 to 11);
           G <= draw_grayf(xpos,ypos)(4 to 7);
           B <= draw_grayf(xpos,ypos)(0 to 3);
       
      --"Draw_xox3" is the function that draws an XOX table       
      elsif ( count >= t_initial + period*5 and count <= t_initial + period*6 ) then
           R <= DRAW_XOX3(xpos,ypos)(8 to 11);
           G <= DRAW_XOX3(xpos,ypos)(4 to 7);
           B <= DRAW_XOX3(xpos,ypos)(0 to 3);
           
      --"Draw_op3" is the function that draws 5 - 3 = 2
      elsif ( count >= t_initial + period*6 and count <= t_initial + period*7 ) then
           R <= DRAW_OP3(xpos,ypos)(8 to 11);
           G <= DRAW_OP3(xpos,ypos)(4 to 7);
           B <= DRAW_OP3(xpos,ypos)(0 to 3);
        
      --"Draw_xox4" is the function that draws an XOX table 
      elsif ( count >= t_initial + period*7 and count <= t_initial + period*8 ) then
           R <= DRAW_maze(xpos,ypos)(8 to 11);
           G <= DRAW_maze(xpos,ypos)(4 to 7);
           B <= DRAW_maze(xpos,ypos)(0 to 3);
   
      end if;
      
elsif ( seed = 2 ) then   
         --"Draw_xox1" is the function that draws an XOX 
if (  count >= 0 * t_initial and count<= t_initial + period*0) then
      R <= DRAW_op5(xpos,ypos)(8 to 11);
      G <= DRAW_op5(xpos,ypos)(4 to 7);
      B <= DRAW_op5(xpos,ypos)(0 to 3);
      
--"Draw_op1" is the function that draws 2 - 1 = 1
elsif ( count >= t_initial + period*0 and count <= t_initial + period*1 ) then
     R <= DRAW_xox6(xpos,ypos)(8 to 11);
     G <= DRAW_xox6(xpos,ypos)(4 to 7);
     B <= DRAW_xox6(xpos,ypos)(0 to 3);
  
--"draw_GREENf" is the function that draws a red GREEN 
elsif ( count >= t_initial + period*1 and count <= t_initial + period*2 ) then
     R <= draw_redt(xpos,ypos)(8 to 11);
     G <= draw_redt(xpos,ypos)(4 to 7);
     B <= draw_redt(xpos,ypos)(0 to 3);
  
--"Draw_xox2" is the function that draws an XOX table 
elsif ( count >= t_initial + period*2 and count <= t_initial + period*3 ) then
     R <= DRAW_XOX2(xpos,ypos)(8 to 11);
     G <= DRAW_XOX2(xpos,ypos)(4 to 7);
     B <= DRAW_XOX2(xpos,ypos)(0 to 3);     
  
--"Draw_op2" is the function that draws 2 + 2 =  3
elsif ( count >= t_initial + period*3 and count <= t_initial + period*4 ) then
     R <= DRAW_OP7(xpos,ypos)(8 to 11);
     G <= DRAW_OP7(xpos,ypos)(4 to 7);
     B <= DRAW_OP7(xpos,ypos)(0 to 3);
  
--"draw_REDf" is the function that draws a blue RED 
elsif ( count >= t_initial + period*4 and count <= t_initial + period*5) then
     R <= draw_grayf(xpos,ypos)(8 to 11);
     G <= draw_grayf(xpos,ypos)(4 to 7);
     B <= draw_grayf(xpos,ypos)(0 to 3);
 
--"Draw_xox3" is the function that draws an XOX table       
elsif ( count >= t_initial + period*5 and count <= t_initial + period*6 ) then
     R <= DRAW_XOX12(xpos,ypos)(8 to 11);
     G <= DRAW_XOX12(xpos,ypos)(4 to 7);
     B <= DRAW_XOX12(xpos,ypos)(0 to 3);
     
--"Draw_op3" is the function that draws 5 - 3 = 2
elsif ( count >= t_initial + period*6 and count <= t_initial + period*7 ) then
     R <= DRAW_OP8(xpos,ypos)(8 to 11);
     G <= DRAW_OP8(xpos,ypos)(4 to 7);
     B <= DRAW_OP8(xpos,ypos)(0 to 3);
  
--"Draw_xox4" is the function that draws an XOX table 
elsif ( count >= t_initial + period*7 and count <= t_initial + period*8 ) then
     R <= DRAW_maze2(xpos,ypos)(8 to 11);
     G <= DRAW_maze2(xpos,ypos)(4 to 7);
     B <= DRAW_maze2(xpos,ypos)(0 to 3);

end if;
   elsif ( seed = 3 ) then   
         --"Draw_xox1" is the function that draws an XOX 
if (  count >= 0 * t_initial and count<= t_initial + period*0) then
      R <= DRAW_op4(xpos,ypos)(8 to 11);
      G <= DRAW_op4(xpos,ypos)(4 to 7);
      B <= DRAW_op4(xpos,ypos)(0 to 3);
      
--"Draw_op1" is the function that draws 2 - 1 = 1
elsif ( count >= t_initial + period*0 and count <= t_initial + period*1 ) then
     R <= DRAW_xox6(xpos,ypos)(8 to 11);
     G <= DRAW_xox6(xpos,ypos)(4 to 7);
     B <= DRAW_xox6(xpos,ypos)(0 to 3);
  
--"draw_GREENf" is the function that draws a red GREEN 
elsif ( count >= t_initial + period*1 and count <= t_initial + period*2 ) then
     R <= draw_greenf(xpos,ypos)(8 to 11);
     G <= draw_greenf(xpos,ypos)(4 to 7);
     B <= draw_greenf(xpos,ypos)(0 to 3);
  
--"Draw_xox2" is the function that draws an XOX table 
elsif ( count >= t_initial + period*2 and count <= t_initial + period*3 ) then
     R <= DRAW_XOX12(xpos,ypos)(8 to 11);
     G <= DRAW_XOX12(xpos,ypos)(4 to 7);
     B <= DRAW_XOX12(xpos,ypos)(0 to 3);     
  
--"Draw_op2" is the function that draws 2 + 2 =  3
elsif ( count >= t_initial + period*3 and count <= t_initial + period*4 ) then
     R <= DRAW_OP5(xpos,ypos)(8 to 11);
     G <= DRAW_OP5(xpos,ypos)(4 to 7);
     B <= DRAW_OP5(xpos,ypos)(0 to 3);
  
--"draw_REDf" is the function that draws a blue RED 
elsif ( count >= t_initial + period*4 and count <= t_initial + period*5) then
     R <= draw_redt(xpos,ypos)(8 to 11);
     G <= draw_redt(xpos,ypos)(4 to 7);
     B <= draw_redt(xpos,ypos)(0 to 3);
 
--"Draw_xox3" is the function that draws an XOX table       
elsif ( count >= t_initial + period*5 and count <= t_initial + period*6 ) then
     R <= DRAW_XOX3(xpos,ypos)(8 to 11);
     G <= DRAW_XOX3(xpos,ypos)(4 to 7);
     B <= DRAW_XOX3(xpos,ypos)(0 to 3);
     
--"Draw_op3" is the function that draws 5 - 3 = 2
elsif ( count >= t_initial + period*6 and count <= t_initial + period*7 ) then
     R <= DRAW_OP1(xpos,ypos)(8 to 11);
     G <= DRAW_OP1(xpos,ypos)(4 to 7);
     B <= DRAW_OP1(xpos,ypos)(0 to 3);
  
--"Draw_xox4" is the function that draws an XOX table 
elsif ( count >= t_initial + period*7 and count <= t_initial + period*8 ) then
     R <= DRAW_XOX7(xpos,ypos)(8 to 11);
     G <= DRAW_XOX7(xpos,ypos)(4 to 7);
     B <= DRAW_XOX7(xpos,ypos)(0 to 3);

end if;     
 end if; --end of seed if      
        
        
        
        
      --Showing the closing screen
      if ( count >= 19 and count <= 23  ) then
       R <= DRAW_gameover(xpos,ypos)(8 to 11);
       G <= DRAW_gameover(xpos,ypos)(4 to 7);
       B <= DRAW_gameover(xpos,ypos)(0 to 3);

      end if;
         
      --Resetting the counter  
      if ( count = 23 ) then
        count <= 0;
        open_the_game <= true;
        enable <= true;
        game_is_on <= false;
       end if;  
      if( scorer = 2300) then
         scorer <= 0;
      end if;
      
      
      
      
      
      
      
      
     if ( seed = 1 ) then 
      
      --Process of "Keeping the score" begins
    if (    scorer >= 100*(t_initial + period*0) - 20 and scorer <= 100*(t_initial + period*0) and count >= t_initial + period*(-1) and count <= t_initial + period*0 and swh =  is_correct_xox1 and enough1) then
               skor <= skor + 1;
               enough1 <= false;            
    elsif ( scorer >= 100*(t_initial + period*1) - 20 and scorer <= 100*(t_initial + period*1)    and count >= t_initial + period*0 and count <= t_initial + period*1 and  swh =  is_correct_op1  and enough2) then
               skor <= skor + 1;
               enough2 <= false;
    elsif ( scorer >= 100*(t_initial + period*2) - 20 and scorer <= 100*(t_initial + period*2) and count >= t_initial + period*1 and count <= t_initial + period*2 and  swh =  is_GREENf        and enough3) then
               skor <= skor + 1;
               enough3 <= false;
    elsif ( scorer >= 100*(t_initial + period*3) - 20 and scorer <= 100*(t_initial + period*3) and count >= t_initial + period*2 and count <= t_initial + period*3 and    swh =  is_correct_xox2 and enough4) then
               skor <= skor + 1;
               enough4 <= false;
    elsif ( scorer >= 100*(t_initial + period*4) - 20 and scorer <= 100*(t_initial + period*4) and count >= t_initial + period*3 and count <= t_initial + period*4 and    swh =  is_correct_op2  and enough5) then
               skor <= skor + 1;
               enough5 <= false;
    elsif ( scorer >= 100*(t_initial + period*5) - 20 and scorer <= 100*(t_initial + period*5) and count >= t_initial + period*4 and count <= t_initial + period*5 and    swh =  is_REDf          and enough6) then
               skor <= skor + 1;
               enough6 <= false;
    elsif ( scorer >= 100*(t_initial + period*6) - 20 and scorer <= 100*(t_initial + period*6) and count >= t_initial + period*5 and count <= t_initial + period*6 and    swh =  is_correct_xox3 and enough7) then
               skor <= skor + 1;
               enough7 <= false;
    elsif ( scorer >= 100*(t_initial + period*7) - 20 and scorer <= 100*(t_initial + period*7) and count >= t_initial + period*6 and count <= t_initial + period*7 and    swh =  is_correct_op3  and enough8) then
               skor <= skor + 1;
               enough8 <= false;
    elsif ( scorer >= 100*(t_initial + period*8) - 20 and scorer <= 100*(t_initial + period*8) and count >= t_initial + period*7 and count <= t_initial + period*8 and    swh =  is_correct_maze and enough9) then
                skor <= skor + 1;
                enough9 <= false;
    end if;   
    
    --Keeping the score of the multist-player    
        if (    scorer >= 100*(t_initial + period*0) - 20 and scorer <= 100*(t_initial + period*0) and count >= t_initial + period*(-1) and count <= t_initial + period*0 and swh_multi =  is_correct_xox1 and enough_multi1) then
               skor <= skor + 1;
               enough_multi1 <= false;    
    
    elsif ( scorer >= 100*(t_initial + period*1) - 20 and scorer <= 100*(t_initial + period*1)    and count >= t_initial + period*0 and count <= t_initial + period*1 and  swh_multi =  is_correct_op1  and enough_multi2) then
               skor_multi <= skor_multi + 1;
               enough_multi2 <= false;
    elsif ( scorer >= 100*(t_initial + period*2) - 20 and scorer <= 100*(t_initial + period*2) and count >= t_initial + period*1 and count <= t_initial + period*2 and  swh_multi =  is_GREENf        and enough_multi3) then
               skor_multi <= skor_multi + 1;
               enough_multi3 <= false;
    elsif ( scorer >= 100*(t_initial + period*3) - 20 and scorer <= 100*(t_initial + period*3) and count >= t_initial + period*2 and count <= t_initial + period*3 and    swh_multi =  is_correct_xox2 and enough_multi4) then
               skor_multi <= skor_multi + 1;
               enough_multi4 <= false;
    elsif ( scorer >= 100*(t_initial + period*4) - 20 and scorer <= 100*(t_initial + period*4) and count >= t_initial + period*3 and count <= t_initial + period*4 and    swh_multi =  is_correct_op2  and enough_multi5) then
               skor_multi <= skor_multi + 1;
               enough_multi5 <= false;
    elsif ( scorer >= 100*(t_initial + period*5) - 20 and scorer <= 100*(t_initial + period*5) and count >= t_initial + period*4 and count <= t_initial + period*5 and    swh_multi =  is_REDf          and enough_multi6) then
               skor_multi <= skor_multi + 1;
               enough_multi6 <= false;
    elsif ( scorer >= 100*(t_initial + period*6) - 20 and scorer <= 100*(t_initial + period*6) and count >= t_initial + period*5 and count <= t_initial + period*6 and    swh_multi =  is_correct_xox3 and enough_multi7) then
               skor_multi <= skor_multi + 1;
               enough_multi7 <= false;
    elsif ( scorer >= 100*(t_initial + period*7) - 20 and scorer <= 100*(t_initial + period*7) and count >= t_initial + period*6 and count <= t_initial + period*7 and    swh_multi =  is_correct_op3  and enough_multi8) then
               skor_multi <= skor_multi + 1;
               enough_multi8 <= false;
    elsif ( scorer >= 100*(t_initial + period*8) - 20 and scorer <= 100*(t_initial + period*8) and count >= t_initial + period*7 and count <= t_initial + period*8 and    swh_multi =  is_correct_maze and enough_multi9) then
                skor_multi <= skor_multi + 1;
                enough_multi9 <= false;
    end if;   
  
  
  
  
  
  
  
  elsif ( seed = 2 ) then
      if (    scorer >= 100*(t_initial + period*0) - 20 and scorer <= 100*(t_initial + period*0) and count >= t_initial + period*(-1) and count <= t_initial + period*0 and swh =  is_correct_op5 and enough1) then
             skor <= skor + 1;
             enough1 <= false;            
  elsif ( scorer >= 100*(t_initial + period*1) - 20 and scorer <= 100*(t_initial + period*1)    and count >= t_initial + period*0 and count <= t_initial + period*1 and  swh =  is_correct_xox6  and enough2) then
             skor <= skor + 1;
             enough2 <= false;
  elsif ( scorer >= 100*(t_initial + period*2) - 20 and scorer <= 100*(t_initial + period*2) and count >= t_initial + period*1 and count <= t_initial + period*2 and  swh =  is_redt        and enough3) then
             skor <= skor + 1;
             enough3 <= false;
  elsif ( scorer >= 100*(t_initial + period*3) - 20 and scorer <= 100*(t_initial + period*3) and count >= t_initial + period*2 and count <= t_initial + period*3 and    swh =  is_correct_xox2 and enough4) then
             skor <= skor + 1;
             enough4 <= false;
  elsif ( scorer >= 100*(t_initial + period*4) - 20 and scorer <= 100*(t_initial + period*4) and count >= t_initial + period*3 and count <= t_initial + period*4 and    swh =  is_correct_op7 and enough5) then
             skor <= skor + 1;
             enough5 <= false;
  elsif ( scorer >= 100*(t_initial + period*5) - 20 and scorer <= 100*(t_initial + period*5) and count >= t_initial + period*4 and count <= t_initial + period*5 and    swh =  is_grayf          and enough6) then
             skor <= skor + 1;
             enough6 <= false;
  elsif ( scorer >= 100*(t_initial + period*6) - 20 and scorer <= 100*(t_initial + period*6) and count >= t_initial + period*5 and count <= t_initial + period*6 and    swh =  is_correct_xox12 and enough7) then
             skor <= skor + 1;
             enough7 <= false;
  elsif ( scorer >= 100*(t_initial + period*7) - 20 and scorer <= 100*(t_initial + period*7) and count >= t_initial + period*6 and count <= t_initial + period*7 and    swh =  is_correct_op8  and enough8) then
             skor <= skor + 1;
             enough8 <= false;
  elsif ( scorer >= 100*(t_initial + period*8) - 20 and scorer <= 100*(t_initial + period*8) and count >= t_initial + period*7 and count <= t_initial + period*8 and    swh =  is_correct_maze2 and enough9) then
              skor <= skor + 1;
              enough9 <= false;
  end if;   
  
  --Keeping the score of the multist-player    
      if (    scorer >= 100*(t_initial + period*0) - 20 and scorer <= 100*(t_initial + period*0) and count >= t_initial + period*(-1) and count <= t_initial + period*0 and swh_multi =  is_correct_op5 and enough_multi1) then
             skor <= skor + 1;
             enough_multi1 <= false;    
  
  elsif ( scorer >= 100*(t_initial + period*1) - 20 and scorer <= 100*(t_initial + period*1)    and count >= t_initial + period*0 and count <= t_initial + period*1 and  swh_multi =  is_correct_xox6  and enough_multi2) then
             skor_multi <= skor_multi + 1;
             enough_multi2 <= false;
  elsif ( scorer >= 100*(t_initial + period*2) - 20 and scorer <= 100*(t_initial + period*2) and count >= t_initial + period*1 and count <= t_initial + period*2 and  swh_multi =  is_redt        and enough_multi3) then
             skor_multi <= skor_multi + 1;
             enough_multi3 <= false;
  elsif ( scorer >= 100*(t_initial + period*3) - 20 and scorer <= 100*(t_initial + period*3) and count >= t_initial + period*2 and count <= t_initial + period*3 and    swh_multi =  is_correct_xox2 and enough_multi4) then
             skor_multi <= skor_multi + 1;
             enough_multi4 <= false;
  elsif ( scorer >= 100*(t_initial + period*4) - 20 and scorer <= 100*(t_initial + period*4) and count >= t_initial + period*3 and count <= t_initial + period*4 and    swh_multi =  is_correct_op7  and enough_multi5) then
             skor_multi <= skor_multi + 1;
             enough_multi5 <= false;
  elsif ( scorer >= 100*(t_initial + period*5) - 20 and scorer <= 100*(t_initial + period*5) and count >= t_initial + period*4 and count <= t_initial + period*5 and    swh_multi =  is_grayf          and enough_multi6) then
             skor_multi <= skor_multi + 1;
             enough_multi6 <= false;
  elsif ( scorer >= 100*(t_initial + period*6) - 20 and scorer <= 100*(t_initial + period*6) and count >= t_initial + period*5 and count <= t_initial + period*6 and    swh_multi =  is_correct_xox12 and enough_multi7) then
             skor_multi <= skor_multi + 1;
             enough_multi7 <= false;
  elsif ( scorer >= 100*(t_initial + period*7) - 20 and scorer <= 100*(t_initial + period*7) and count >= t_initial + period*6 and count <= t_initial + period*7 and    swh_multi =  is_correct_op8  and enough_multi8) then
             skor_multi <= skor_multi + 1;
             enough_multi8 <= false;
  elsif ( scorer >= 100*(t_initial + period*8) - 20 and scorer <= 100*(t_initial + period*8) and count >= t_initial + period*7 and count <= t_initial + period*8 and    swh_multi =  is_correct_maze2 and enough_multi9) then
              skor_multi <= skor_multi + 1;
              enough_multi9 <= false;
  end if;  
    
    
elsif ( seed = 3 ) then
        if (    scorer >= 100*(t_initial + period*0) - 20 and scorer <= 100*(t_initial + period*0) and count >= t_initial + period*(-1) and count <= t_initial + period*0 and swh =  is_correct_op4 and enough1) then
               skor <= skor + 1;
               enough1 <= false;            
    elsif ( scorer >= 100*(t_initial + period*1) - 20 and scorer <= 100*(t_initial + period*1)    and count >= t_initial + period*0 and count <= t_initial + period*1 and  swh =  is_correct_xox6  and enough2) then
               skor <= skor + 1;
               enough2 <= false;
    elsif ( scorer >= 100*(t_initial + period*2) - 20 and scorer <= 100*(t_initial + period*2) and count >= t_initial + period*1 and count <= t_initial + period*2 and  swh =  is_greenf        and enough3) then
               skor <= skor + 1;
               enough3 <= false;
    elsif ( scorer >= 100*(t_initial + period*3) - 20 and scorer <= 100*(t_initial + period*3) and count >= t_initial + period*2 and count <= t_initial + period*3 and    swh =  is_correct_xox12 and enough4) then
               skor <= skor + 1;
               enough4 <= false;
    elsif ( scorer >= 100*(t_initial + period*4) - 20 and scorer <= 100*(t_initial + period*4) and count >= t_initial + period*3 and count <= t_initial + period*4 and    swh =  is_correct_op5 and enough5) then
               skor <= skor + 1;
               enough5 <= false;
    elsif ( scorer >= 100*(t_initial + period*5) - 20 and scorer <= 100*(t_initial + period*5) and count >= t_initial + period*4 and count <= t_initial + period*5 and    swh =  is_redt          and enough6) then
               skor <= skor + 1;
               enough6 <= false;
    elsif ( scorer >= 100*(t_initial + period*6) - 20 and scorer <= 100*(t_initial + period*6) and count >= t_initial + period*5 and count <= t_initial + period*6 and    swh =  is_correct_xox3 and enough7) then
               skor <= skor + 1;
               enough7 <= false;
    elsif ( scorer >= 100*(t_initial + period*7) - 20 and scorer <= 100*(t_initial + period*7) and count >= t_initial + period*6 and count <= t_initial + period*7 and    swh =  is_correct_op1  and enough8) then
               skor <= skor + 1;
               enough8 <= false;
    elsif ( scorer >= 100*(t_initial + period*8) - 20 and scorer <= 100*(t_initial + period*8) and count >= t_initial + period*7 and count <= t_initial + period*8 and    swh =  is_correct_xox7 and enough9) then
                skor <= skor + 1;
                enough9 <= false;
    end if;   
    
    --Keeping the score of the multist-player    
        if (    scorer >= 100*(t_initial + period*0) - 20 and scorer <= 100*(t_initial + period*0) and count >= t_initial + period*(-1) and count <= t_initial + period*0 and swh_multi =  is_correct_op4 and enough_multi1) then
               skor <= skor + 1;
               enough_multi1 <= false;    
    
    elsif ( scorer >= 100*(t_initial + period*1) - 20 and scorer <= 100*(t_initial + period*1)    and count >= t_initial + period*0 and count <= t_initial + period*1 and  swh_multi =  is_correct_xox6  and enough_multi2) then
               skor_multi <= skor_multi + 1;
               enough_multi2 <= false;
    elsif ( scorer >= 100*(t_initial + period*2) - 20 and scorer <= 100*(t_initial + period*2) and count >= t_initial + period*1 and count <= t_initial + period*2 and  swh_multi =  is_greenf        and enough_multi3) then
               skor_multi <= skor_multi + 1;
               enough_multi3 <= false;
    elsif ( scorer >= 100*(t_initial + period*3) - 20 and scorer <= 100*(t_initial + period*3) and count >= t_initial + period*2 and count <= t_initial + period*3 and    swh_multi =  is_correct_xox12 and enough_multi4) then
               skor_multi <= skor_multi + 1;
               enough_multi4 <= false;
    elsif ( scorer >= 100*(t_initial + period*4) - 20 and scorer <= 100*(t_initial + period*4) and count >= t_initial + period*3 and count <= t_initial + period*4 and    swh_multi =  is_correct_op5  and enough_multi5) then
               skor_multi <= skor_multi + 1;
               enough_multi5 <= false;
    elsif ( scorer >= 100*(t_initial + period*5) - 20 and scorer <= 100*(t_initial + period*5) and count >= t_initial + period*4 and count <= t_initial + period*5 and    swh_multi =  is_redt         and enough_multi6) then
               skor_multi <= skor_multi + 1;
               enough_multi6 <= false;
    elsif ( scorer >= 100*(t_initial + period*6) - 20 and scorer <= 100*(t_initial + period*6) and count >= t_initial + period*5 and count <= t_initial + period*6 and    swh_multi =  is_correct_xox3 and enough_multi7) then
               skor_multi <= skor_multi + 1;
               enough_multi7 <= false;
    elsif ( scorer >= 100*(t_initial + period*7) - 20 and scorer <= 100*(t_initial + period*7) and count >= t_initial + period*6 and count <= t_initial + period*7 and    swh_multi =  is_correct_op1  and enough_multi8) then
               skor_multi <= skor_multi + 1;
               enough_multi8 <= false;
    elsif ( scorer >= 100*(t_initial + period*8) - 20 and scorer <= 100*(t_initial + period*8) and count >= t_initial + period*7 and count <= t_initial + period*8 and    swh_multi =  is_correct_xox7 and enough_multi9) then
                skor_multi <= skor_multi + 1;
                enough_multi9 <= false;
    end if;  
    
    
    
    
    
    
    
 end if; ----end of seed if
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
------------------------------------DRAWING SCORE-------------------------------- ------------------------------------DRAWING SCORE-------------------------------- ------------------------------------DRAWING SCORE----------------
      ---SCORE IS 0
      if (    (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory AND ypos < scory + 20) AND SKOR = 0) then
                        R <= (others => '1');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx + 85 AND xpos < scorx + 100) AND ( ypos > scory AND ypos < scory + 220) AND SKOR = 0 ) then
                        R <= (others => '1');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory + 200 AND ypos < scory + 220) AND SKOR = 0) then
                        R <= (others => '1');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx  AND xpos < scorx + 15) AND ( ypos > scory AND ypos < scory + 220) AND SKOR = 0 ) then
                        R <= (others => '1');
                        G <= (others => '1');
                        B <= (others => '0');
      --SCORE IS 1
      elsif ( (xpos > scorx + 50 - 10 AND xpos < scorx + 50 + 10) AND ( ypos > scory AND ypos < scory + 220) AND SKOR = 1 ) then
                        R <= (others => '1');
                        G <= (others => '1');
                        B <= (others => '0'); 
      --SCORE IS 2
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory AND ypos < scory + 20) AND SKOR = 2 ) then
                        R <= (others => '1');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx + 85 AND xpos < scorx + 100) AND ( ypos > scory AND ypos < scory + 120) AND  SKOR = 2  ) then
                        R <= (others => '1');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory + 100 AND ypos < scory + 120) AND  SKOR = 2 ) then
                        R <= (others => '1');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx AND xpos < scorx + 15) AND ( ypos > scory + 100 AND ypos < scory + 220) AND SKOR = 2  ) then
                        R <= (others => '1');
                        G <= (others => '1');
                        B <= (others => '0'); 
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory + 200 AND ypos < scory + 220) AND SKOR = 2 ) then
                        R <= (others => '1');
                        G <= (others => '1');
                        B <= (others => '0'); 
      --SCORE IS 3
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory AND ypos < scory + 20) AND SKOR = 3) then
                       R <= (others => '1');
                       G <= (others => '1');
                       B <= (others => '0');
      elsif ( (xpos > scorx + 85 AND xpos < scorx + 100) AND ( ypos > scory AND ypos < scory + 120) AND SKOR = 3 ) then
                       R <= (others => '1');
                       G <= (others => '1');
                       B <= (others => '0');
      elsif ( (xpos > scorx + 30 AND xpos < scorx + 100) AND ( ypos > scory + 100 AND ypos < scory + 120) AND SKOR = 3) then
                       R <= (others => '1');
                       G <= (others => '1');
                       B <= (others => '0');
      elsif ( (xpos > scorx + 85 AND xpos < scorx + 100) AND ( ypos > scory + 100 AND ypos < scory + 220) AND SKOR = 3 ) then
                       R <= (others => '1');
                       G <= (others => '1');
                       B <= (others => '0'); 
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory + 200 AND ypos < scory + 220) AND SKOR = 3 ) then
                       R <= (others => '1');
                       G <= (others => '1');
                       B <= (others => '0');  
      --SCORE IS 4   
      elsif ( (xpos > scorx AND xpos < scorx + 15) AND ( ypos > scory AND ypos < scory + 120) AND SKOR = 4 ) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory + 100 AND ypos < scory + 120) AND SKOR = 4 ) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx + 85 AND xpos < scorx + 100) AND ( ypos > scory + 60 AND ypos < scory + 180) AND SKOR = 4 ) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0'); 
      --SCORE IS 5
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory AND ypos < scory + 20) AND SKOR = 5) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx AND xpos < scorx + 15) AND ( ypos > scory AND ypos < scory + 120) AND SKOR = 5 ) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory + 100 AND ypos < scory + 120) AND SKOR = 5) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx + 85 AND xpos < scorx + 100) AND ( ypos > scory + 100 AND ypos < scory + 220) AND SKOR = 5 ) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0'); 
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory + 200 AND ypos < scory + 220) AND SKOR = 5) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');        
      --SCORE IS 6
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory AND ypos < scory + 20) AND SKOR = 6) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx AND xpos < scorx + 15) AND ( ypos > scory AND ypos < scory + 120) AND SKOR = 6 ) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory + 100 AND ypos < scory + 120) AND SKOR = 6) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx + 85 AND xpos < scorx + 100) AND ( ypos > scory + 100 AND ypos < scory + 220) AND SKOR = 6 ) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0'); 
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory + 200 AND ypos < scory + 220) AND SKOR = 6) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');   
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory + 200 AND ypos < scory + 220) AND SKOR = 6) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');       
      elsif ( (xpos > scorx AND xpos < scorx + 15) AND ( ypos > scory + 100 AND ypos < scory + 220) AND SKOR = 6 ) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0'); 
      --SCORE IS 7
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory AND ypos < scory + 20) AND SKOR = 7 ) then
                        R <= (others => '1');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx + 85 AND xpos < scorx + 100) AND ( ypos > scory AND ypos < scory + 120) AND  SKOR = 7  ) then
                        R <= (others => '1');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx + 35 AND xpos < scorx + 135) AND ( ypos > scory + 100 AND ypos < scory + 120) AND  SKOR = 7 ) then
                        R <= (others => '1');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx + 85 AND xpos < scorx + 100) AND ( ypos > scory + 100 AND ypos < scory + 220) AND SKOR = 7 ) then
                        R <= (others => '1');
                        G <= (others => '1');
                        B <= (others => '0'); 
      --SCORE IS 8
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory AND ypos < scory + 20) AND SKOR = 8) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx AND xpos < scorx + 15) AND ( ypos > scory AND ypos < scory + 120) AND SKOR = 8 ) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory + 100 AND ypos < scory + 120) AND SKOR = 8) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx + 85 AND xpos < scorx + 100) AND ( ypos > scory + 100 AND ypos < scory + 220) AND SKOR = 8 ) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0'); 
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory + 200 AND ypos < scory + 220) AND SKOR = 8) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');   
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory + 200 AND ypos < scory + 220) AND SKOR = 8) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');       
      elsif ( (xpos > scorx AND xpos < scorx + 15) AND ( ypos > scory + 100 AND ypos < scory + 220) AND SKOR = 8 ) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0'); 
      elsif ( (xpos > scorx + 85 AND xpos < scorx + 100) AND ( ypos > scory AND ypos < scory + 120) AND  SKOR = 8  ) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');
      --SCORE IS 9
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory AND ypos < scory + 20) AND SKOR = 9) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx AND xpos < scorx + 15) AND ( ypos > scory AND ypos < scory + 120) AND SKOR = 9 ) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory + 100 AND ypos < scory + 120) AND SKOR = 9) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx + 85 AND xpos < scorx + 100) AND ( ypos > scory + 100 AND ypos < scory + 220) AND SKOR = 9 ) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0'); 
      elsif ( (xpos > scorx AND xpos < scorx + 100) AND ( ypos > scory + 200 AND ypos < scory + 220) AND SKOR = 9) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');             
      elsif ( (xpos > scorx + 85 AND xpos < scorx + 100) AND ( ypos > scory AND ypos < scory + 120) AND  SKOR = 9  ) then
                          R <= (others => '1');
                          G <= (others => '1');
                          B <= (others => '0');     
      end if;

   --Keeping the score of the multist player
   if ( multi_player_score ) then  
      --SCORE IS 0
      if (    (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi AND ypos < scory_multi + 20) AND skor_multi = 0) then
                        R <= (others => '0');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx_multi + 85 AND xpos < scorx_multi + 100) AND ( ypos > scory_multi AND ypos < scory_multi + 220) AND skor_multi = 0 ) then
                        R <= (others => '0');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 200 AND ypos < scory_multi + 220) AND skor_multi = 0) then
                        R <= (others => '0');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx_multi  AND xpos < scorx_multi + 15) AND ( ypos > scory_multi AND ypos < scory_multi + 220) AND skor_multi = 0 ) then
                        R <= (others => '0');
                        G <= (others => '1');
                        B <= (others => '0');
      --SCORE IS 1
      elsif ( (xpos > scorx_multi + 50 - 10 AND xpos < scorx_multi + 50 + 10) AND ( ypos > scory_multi AND ypos < scory_multi + 220) AND skor_multi = 1 ) then
                        R <= (others => '0');
                        G <= (others => '1');
                        B <= (others => '0'); 
      --SCORE IS 2
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi AND ypos < scory_multi + 20) AND skor_multi = 2 ) then
                        R <= (others => '0');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx_multi + 85 AND xpos < scorx_multi + 100) AND ( ypos > scory_multi AND ypos < scory_multi + 120) AND  skor_multi = 2  ) then
                        R <= (others => '0');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 120) AND  skor_multi = 2 ) then
                        R <= (others => '0');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 15) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 220) AND skor_multi = 2  ) then
                        R <= (others => '0');
                        G <= (others => '1');
                        B <= (others => '0'); 
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 200 AND ypos < scory_multi + 220) AND skor_multi = 2 ) then
                        R <= (others => '0');
                        G <= (others => '1');
                        B <= (others => '0'); 
      --SCORE IS 3
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi AND ypos < scory_multi + 20) AND skor_multi = 3) then
                       R <= (others => '0');
                       G <= (others => '1');
                       B <= (others => '0');
      elsif ( (xpos > scorx_multi + 85 AND xpos < scorx_multi + 100) AND ( ypos > scory_multi AND ypos < scory_multi + 120) AND skor_multi = 3 ) then
                       R <= (others => '0');
                       G <= (others => '1');
                       B <= (others => '0');
      elsif ( (xpos > scorx_multi + 30 AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 120) AND skor_multi = 3) then
                       R <= (others => '0');
                       G <= (others => '1');
                       B <= (others => '0');
      elsif ( (xpos > scorx_multi + 85 AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 220) AND skor_multi = 3 ) then
                       R <= (others => '0');
                       G <= (others => '1');
                       B <= (others => '0'); 
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 200 AND ypos < scory_multi + 220) AND skor_multi = 3 ) then
                       R <= (others => '0');
                       G <= (others => '1');
                       B <= (others => '0');  
      --SCORE IS 4   
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 15) AND ( ypos > scory_multi AND ypos < scory_multi + 120) AND skor_multi = 4 ) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 120) AND skor_multi = 4 ) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx_multi + 85 AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 60 AND ypos < scory_multi + 180) AND skor_multi = 4 ) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0'); 
      --SCORE IS 5
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi AND ypos < scory_multi + 20) AND skor_multi = 5) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 15) AND ( ypos > scory_multi AND ypos < scory_multi + 120) AND skor_multi = 5 ) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 120) AND skor_multi = 5) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx_multi + 85 AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 220) AND skor_multi = 5 ) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0'); 
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 200 AND ypos < scory_multi + 220) AND skor_multi = 5) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');        
      --SCORE IS 6
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi AND ypos < scory_multi + 20) AND skor_multi = 6) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 15) AND ( ypos > scory_multi AND ypos < scory_multi + 120) AND skor_multi = 6 ) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 120) AND skor_multi = 6) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx_multi + 85 AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 220) AND skor_multi = 6 ) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0'); 
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 200 AND ypos < scory_multi + 220) AND skor_multi = 6) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');   
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 200 AND ypos < scory_multi + 220) AND skor_multi = 6) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');       
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 15) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 220) AND skor_multi = 6 ) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0'); 
      --SCORE IS 7
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi AND ypos < scory_multi + 20) AND skor_multi = 7 ) then
                        R <= (others => '0');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx_multi + 85 AND xpos < scorx_multi + 100) AND ( ypos > scory_multi AND ypos < scory_multi + 120) AND  skor_multi = 7  ) then
                        R <= (others => '0');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx_multi + 35 AND xpos < scorx_multi + 135) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 120) AND  skor_multi = 7 ) then
                        R <= (others => '0');
                        G <= (others => '1');
                        B <= (others => '0');
      elsif ( (xpos > scorx_multi + 85 AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 220) AND skor_multi = 7 ) then
                        R <= (others => '0');
                        G <= (others => '1');
                        B <= (others => '0'); 
      --SCORE IS 8
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi AND ypos < scory_multi + 20) AND skor_multi = 8) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 15) AND ( ypos > scory_multi AND ypos < scory_multi + 120) AND skor_multi = 8 ) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 120) AND skor_multi = 8) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx_multi + 85 AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 220) AND skor_multi = 8 ) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0'); 
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 200 AND ypos < scory_multi + 220) AND skor_multi = 8) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');   
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 200 AND ypos < scory_multi + 220) AND skor_multi = 8) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');       
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 15) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 220) AND skor_multi = 8 ) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0'); 
      elsif ( (xpos > scorx_multi + 85 AND xpos < scorx_multi + 100) AND ( ypos > scory_multi AND ypos < scory_multi + 120) AND  skor_multi = 8  ) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');
      --SCORE IS 9
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi AND ypos < scory_multi + 20) AND skor_multi = 9) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 15) AND ( ypos > scory_multi AND ypos < scory_multi + 120) AND skor_multi = 9 ) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 120) AND skor_multi = 9) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');
      elsif ( (xpos > scorx_multi + 85 AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 100 AND ypos < scory_multi + 220) AND skor_multi = 9 ) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0'); 
      elsif ( (xpos > scorx_multi AND xpos < scorx_multi + 100) AND ( ypos > scory_multi + 200 AND ypos < scory_multi + 220) AND skor_multi = 9) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');             
      elsif ( (xpos > scorx + 85 AND xpos < scorx + 100) AND ( ypos > scory_multi AND ypos < scory_multi + 120) AND  skor_multi = 9  ) then
                          R <= (others => '0');
                          G <= (others => '1');
                          B <= (others => '0');     
      end if;
   end if;   
      
      
      
      
      
    end if;                                             
  end if; ----------->>>>>>RISING EDGE FINISHES HERE<<<<<<<<-----------
end process;

end Behavioral;
