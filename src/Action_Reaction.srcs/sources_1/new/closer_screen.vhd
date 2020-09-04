library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package closer_screen is

constant gx_gray : integer := 708;
constant gy_gray : integer := 240;
--------------
function draw_gameover(xpos,ypos : integer) return std_logic_vector;   
end closer_screen;

package body closer_screen is function draw_gameover( xpos, ypos : integer ) return std_logic_vector is

VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);

--Drawing     game over
begin
   if (   (xpos > gx_gray AND xpos < gx_gray + 100) AND ( ypos > gy_gray AND ypos < gy_gray + 15)) then
                   R := (others => '1');
                   G := (others => '0');
                   B := (others => '1');
elsif ( (xpos > gx_gray AND xpos < gx_gray + 15) AND ( ypos > gy_gray AND ypos < gy_gray + 100/2) ) then
                   R := (others => '1');
                   G := (others => '0');
                   B := (others => '1');      
elsif ( (xpos > gx_gray AND xpos < gx_gray + 100) AND ( ypos > gy_gray + 100 - 15 AND ypos < gy_gray + 100)) then
                   R := (others => '1');
                   G := (others => '0');
                   B := (others => '1'); 
elsif ( (xpos > gx_gray AND xpos < gx_gray + 100) AND ( ypos > gy_gray + 100 / 2 - 15 AND ypos < gy_gray + 100 / 2)) then
                   R := (others => '1');
                   G := (others => '0');
                   B := (others => '1');
elsif ( (xpos > gx_gray + 100 - 15 AND xpos < gx_gray + 100) AND ( ypos > gy_gray AND ypos < gy_gray + 100) ) then
                   R := (others => '1');
                   G := (others => '0');
                   B := (others => '1');
    
     elsif ( (xpos > gx_gray + 300 AND xpos < gx_gray + 300 + 100) AND ( ypos > gy_gray  AND ypos < gy_gray + 15) ) then
                                         R := (others => '1');
                                         G := (others => '0');
                                         B := (others => '1');
                   elsif ( (xpos > gx_gray + 300  AND xpos < gx_gray + 300 + 15) AND ( ypos > gy_gray AND ypos < gy_gray + 100) ) then
                                         R := (others => '1');
                                         G := (others => '0');
                                         B := (others => '1');
                   elsif (   (xpos > gx_gray + 300 + 100 - 15 AND xpos < gx_gray + 300 + 100) AND ( ypos > gy_gray AND ypos < gy_gray + 100)) then
                                         R := (others => '1');
                                         G := (others => '0');
                                         B := (others => '1'); 
                   elsif (   (xpos > gx_gray + 300 + 42 AND xpos < gx_gray + 300 + 57) AND ( ypos > gy_gray AND ypos < gy_gray + 100)) then
                                           R := (others => '1');
                                           G := (others => '0');
                                           B := (others => '1');   
--Writing a
elsif (   (xpos > gx_gray + 150 AND xpos < gx_gray + 150 + 100) AND ( ypos > gy_gray AND ypos < gy_gray + 15)) then
R := (others => '1');
G := (others => '0');
B := (others => '1');
elsif ( (xpos > gx_gray + 150 + 100 - 15 AND xpos < gx_gray + 150 + 100) AND ( ypos > gy_gray AND ypos < gy_gray + 100) ) then
R := (others => '1');
G := (others => '0');
B := (others => '1');
elsif ( (xpos > gx_gray + 150 AND xpos < gx_gray + 150 + 100) AND ( ypos > gy_gray + 100 / 2 - 15 AND ypos < gy_gray + 100 / 2)) then
R := (others => '1'); 
G := (others => '0');
B := (others => '1');
elsif ( (xpos > gx_gray + 150 AND xpos < gx_gray + 150 + 15) AND ( ypos > gy_gray + 100 / 2 - 15 AND ypos < gy_gray + 100) ) then
R := (others => '1');
G := (others => '0');
B := (others => '1'); 
elsif ( (xpos > gx_gray + 150 AND xpos < gx_gray + 150 + 100) AND ( ypos > gy_gray + 100 - 15 AND ypos < gy_gray + 100)) then
R := (others => '1');
G := (others => '0');
B := (others => '1'); 

     --Writing e
     elsif (   (xpos > gx_gray + 450 AND xpos < gx_gray + 450 + 100) AND ( ypos > gy_gray AND ypos < gy_gray + 15)) then
                        R := (others => '1');
                        G := (others => '0');
                        B := (others => '1');
     elsif ( (xpos > gx_gray + 450 AND xpos < gx_gray + 450 + 15) AND ( ypos > gy_gray AND ypos < gy_gray + 100) ) then
                        R := (others => '1');
                        G := (others => '0');
                        B := (others => '1');      
     elsif ( (xpos > gx_gray + 450 AND xpos < gx_gray + 450 + 100) AND ( ypos > gy_gray + 100 - 15 AND ypos < gy_gray + 100)) then
                        R := (others => '1');
                        G := (others => '0');
                        B := (others => '1'); 
     elsif ( (xpos > gx_gray + 450 AND xpos < gx_gray + 450 + 100) AND ( ypos > gy_gray + 100 / 2 - 15 AND ypos < gy_gray + 100 / 2)) then
                        R := (others => '1');
                        G := (others => '0');
                        B := (others => '1'); 
     elsif ( (xpos > gx_gray + 450 + 100 - 15 AND xpos < gx_gray + 450 + 100) AND ( ypos > gy_gray AND ypos < gy_gray + 100 / 2) ) then
                        R := (others => '1');
                        G := (others => '0');
                        B := (others => '1');
              
          --Writing o
                        elsif ( (xpos > gx_gray AND xpos < gx_gray + 100) AND ( ypos > gy_gray + 150 AND ypos < gy_gray + 150 + 15) ) then
                                           R := (others => '1');
                                           G := (others => '0');
                                           B := (others => '1');
                        elsif ( (xpos > gx_gray + 100 - 15 AND xpos < gx_gray + 100) AND ( ypos > gy_gray + 150 AND ypos < gy_gray + 150 + 100)  ) then
                                           R := (others => '1');
                                           G := (others => '0');
                                           B := (others => '1');
                        elsif ( (xpos > gx_gray AND xpos < gx_gray + 100) AND ( ypos > gy_gray + 150 + 100 - 15 AND ypos < gy_gray + 150 + 100) ) then
                                           R := (others => '1');
                                           G := (others => '0');
                                           B := (others => '1');
                        elsif ( (xpos > gx_gray  AND xpos < gx_gray + 15) AND ( ypos > gy_gray + 150 AND ypos < gy_gray + 150 + 100)  ) then
                                           R := (others => '1');
                                           G := (others => '0');
                                           B := (others => '1');         
              
              
                 --Writing v

                                           elsif ( (xpos > gx_gray+ 150 + 100 - 15 AND xpos < gx_gray+ 150 + 100) AND ( ypos > gy_gray + 150 AND ypos < gy_gray + 150 + 100)  ) then
                                                              R := (others => '1');
                                                              G := (others => '0');
                                                              B := (others => '1');
                                           elsif ( (xpos > gx_gray+ 150 AND xpos < gx_gray+ 150 + 100) AND ( ypos > gy_gray + 150 + 100 - 15 AND ypos < gy_gray + 150 + 100) ) then
                                                              R := (others => '1');
                                                              G := (others => '0');
                                                              B := (others => '1');
                                           elsif ( (xpos > gx_gray+ 150  AND xpos < gx_gray+ 150 + 15) AND ( ypos > gy_gray + 150 AND ypos < gy_gray + 150 + 100)  ) then
                                                              R := (others => '1');
                                                              G := (others => '0');
                                                              B := (others => '1');  
              
              
              
                 --Writing e
                                                               elsif (   (xpos > gx_gray +  300 AND xpos < gx_gray +  300 + 100) AND ( ypos > gy_gray + 150 AND ypos < gy_gray + 150 + 15)) then
                                                                                  R := (others => '1');
                                                                                  G := (others => '0');
                                                                                  B := (others => '1');
                                                               elsif ( (xpos > gx_gray +  300 AND xpos < gx_gray + 300 + 15) AND ( ypos > gy_gray + 150 AND ypos < gy_gray + 150 + 100) ) then
                                                                                  R := (others => '1');
                                                                                  G := (others => '0');
                                                                                  B := (others => '1');      
                                                               elsif ( (xpos > gx_gray +  300 AND xpos < gx_gray + 300 + 100) AND ( ypos > gy_gray + 150 + 100 - 15 AND ypos < gy_gray + 150 + 100)) then
                                                                                  R := (others => '1');
                                                                                  G := (others => '0');
                                                                                  B := (others => '1'); 
                                                               elsif ( (xpos > gx_gray +  300 AND xpos < gx_gray +  300 + 100) AND ( ypos > gy_gray + 150 + 100 / 2 - 15 AND ypos < gy_gray + 150 + 100 / 2)) then
                                                                                  R := (others => '1');
                                                                                  G := (others => '0');
                                                                                  B := (others => '1'); 
                                                               elsif ( (xpos > gx_gray +  300 + 100 - 15 AND xpos < gx_gray + 300 + 100) AND ( ypos > gy_gray + 150 AND ypos < gy_gray + 150 + 100 / 2) ) then
                                                                                  R := (others => '1');
                                                                                  G := (others => '0');
                                                                                  B := (others => '1'); 
              
                   --Writing r
                                                                                  elsif (   (xpos > gx_gray + 450 AND xpos < gx_gray + 450 + 100) AND ( ypos > gy_gray + 150 AND ypos < gy_gray + 150 + 15)) then
                                                                                                     R := (others => '1');
                                                                                                     G := (others => '0');
                                                                                                     B := (others => '1');
                                                                                  elsif ( (xpos > gx_gray + 450 AND xpos < gx_gray + 450 + 15) AND ( ypos > gy_gray + 150 AND ypos < gy_gray + 150 + 100) ) then
                                                                                                     R := (others => '1');
                                                                                                     G := (others => '0');
                                                                                                     B := (others => '1');  
              
              
              
              
              
              
              
              
              
              
              
                        

    end if;
  return R & G & b;
end draw_gameover;       
end closer_screen; 