library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package color is
constant gx_green : integer := 633;
constant gy_green : integer := 240;

constant gx_gray : integer := 708;
constant gy_gray : integer := 240;
-----------------
function draw_REDf(xpos,ypos : integer) return std_logic_vector; 
constant is_REDf : std_logic := '0'; 
------------------
function draw_GREENf(xpos,ypos : integer) return std_logic_vector;   
constant is_GREENf : std_logic := '0'; 
-----------------
function draw_REDt(xpos,ypos : integer) return std_logic_vector; 
constant is_REDt : std_logic := '1'; 
------------------
function draw_GREENt(xpos,ypos : integer) return std_logic_vector;   
constant is_GREENt : std_logic := '1'; 
--------------------
----function draw_grayt(xpos,ypos : integer) return std_logic_vector; 
--constant is_grayt : std_logic := '1'; 
--------------------
function draw_grayF(xpos,ypos : integer) return std_logic_vector;   
constant is_grayF : std_logic := '0'; 
end color;

package body color is 

function draw_REDf( xpos, ypos : integer ) return std_logic_vector is

VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);

--Drawing     a    gray RED
begin
    ----Writing             R
    if ( (xpos > 808 AND xpos < 808 + 100) AND ( ypos > 280 AND ypos < 280 + 20)) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0');
    elsif ( (xpos > 808 + 85 AND xpos < 808 + 100) AND ( ypos > 280 AND ypos < 280 + 120) ) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0');
    elsif ( (xpos > 808 AND xpos < 808 + 100) AND ( ypos > 280 + 100 AND ypos < 280 + 120)) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0');
    elsif ( (xpos > 808 AND xpos < 808 + 15) AND ( ypos > 280 + 100 AND ypos < 280 + 220) ) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0'); 
    elsif ( (xpos > 808 AND xpos < 808 + 15) AND ( ypos > 280 AND ypos < 280 + 120) ) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0');
    elsif ( ( xpos + ypos >= 1203) AND ( xpos + ypos <= 1413) AND ( xpos - ypos <= 443) AND ( xpos - ypos >= 413)  ) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0'); 
    
    ----Writing           E
    elsif ( (xpos > 958 AND xpos < 958 + 100) AND ( ypos > 280 AND ypos < 280 + 20)) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0');
    elsif ( (xpos > 958 AND xpos < 958 + 15) AND ( ypos > 280 AND ypos < 280 + 120) ) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0');
    elsif ( (xpos > 958 AND xpos < 958 + 70) AND ( ypos > 280 + 100 AND ypos < 280 + 120)) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0');
    elsif ( (xpos > 958  AND xpos < 958 + 15) AND ( ypos > 280 + 100 AND ypos < 280 + 220) ) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0'); 
    elsif ( (xpos > 958 AND xpos < 958 + 100) AND ( ypos > 280 + 200 AND ypos < 280 + 220)) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0'); 
    ----Writing           D
--    elsif ( (xpos > 1050 AND xpos < 1050 + 70) AND ( ypos > 350 AND ypos < 350 + 20) ) then
--                               R := (others => '1');
--                               G := (others => '0');
--                               B := (others => '0');
--    elsif ( (xpos > 1050 + 55 AND xpos < 1050 + 70) AND ( ypos > 350 AND ypos < 350 + 220)  ) then
--                               R := (others => '1');
--                               G := (others => '0');
--                               B := (others => '0');
--    elsif ( (xpos > 1050 AND xpos < 1050 + 70) AND ( ypos > 350 + 200 AND ypos < 350 + 220) ) then
--                               R := (others => '1');
--                               G := (others => '0');
--                               B := (others => '0');
    elsif ( (xpos > 1108  AND xpos < 1108 + 15) AND ( ypos > 280 AND ypos < 280 + 220)  ) then
                               R := (others => '1');
                               G := (others => '0');
                               B := (others => '0'); 
    elsif ( (xpos >= 1108)  AND ((xpos - 1108) * (xpos - 1108) + (ypos -390) * (ypos -390) <= 110*110) and ((xpos - 1108) * (xpos - 1108) + (ypos -390) * (ypos -390) >= 100*100)  ) then
                               R := (others => '1');
                               G := (others => '0');
                               B := (others => '0'); 
    
    end if;
  return R & G & b;
end draw_REDf;                       
        
function draw_REDT( xpos, ypos : integer ) return std_logic_vector is

VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);

--Drawing     a    gray RED
begin
    ----Writing             R
    if ( (xpos > 808 AND xpos < 808 + 100) AND ( ypos > 280 AND ypos < 280 + 20)) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0');
    elsif ( (xpos > 808 + 85 AND xpos < 808 + 100) AND ( ypos > 280 AND ypos < 280 + 120) ) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0');
    elsif ( (xpos > 808 AND xpos < 808 + 100) AND ( ypos > 280 + 100 AND ypos < 280 + 120)) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0');
    elsif ( (xpos > 808 AND xpos < 808 + 15) AND ( ypos > 280 + 100 AND ypos < 280 + 220) ) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0'); 
    elsif ( (xpos > 808 AND xpos < 808 + 15) AND ( ypos > 280 AND ypos < 280 + 120) ) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0');
    elsif ( ( xpos + ypos >= 1203) AND ( xpos + ypos <= 1413) AND ( xpos - ypos <= 443) AND ( xpos - ypos >= 413)  ) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0'); 
    
    ----Writing           E
    elsif ( (xpos > 958 AND xpos < 958 + 100) AND ( ypos > 280 AND ypos < 280 + 20)) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0');
    elsif ( (xpos > 958 AND xpos < 958 + 15) AND ( ypos > 280 AND ypos < 280 + 120) ) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0');
    elsif ( (xpos > 958 AND xpos < 958 + 70) AND ( ypos > 280 + 100 AND ypos < 280 + 120)) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0');
    elsif ( (xpos > 958  AND xpos < 958 + 15) AND ( ypos > 280 + 100 AND ypos < 280 + 220) ) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0'); 
    elsif ( (xpos > 958 AND xpos < 958 + 100) AND ( ypos > 280 + 200 AND ypos < 280 + 220)) then
                                R := (others => '1');
                                G := (others => '0');
                                B := (others => '0'); 
    ----Writing           D
--    elsif ( (xpos > 1050 AND xpos < 1050 + 70) AND ( ypos > 350 AND ypos < 350 + 20) ) then
--                               R := (others => '1');
--                               G := (others => '0');
--                               B := (others => '0');
--    elsif ( (xpos > 1050 + 55 AND xpos < 1050 + 70) AND ( ypos > 350 AND ypos < 350 + 220)  ) then
--                               R := (others => '1');
--                               G := (others => '0');
--                               B := (others => '0');
--    elsif ( (xpos > 1050 AND xpos < 1050 + 70) AND ( ypos > 350 + 200 AND ypos < 350 + 220) ) then
--                               R := (others => '1');
--                               G := (others => '0');
--                               B := (others => '0');
    elsif ( (xpos > 1108  AND xpos < 1108 + 15) AND ( ypos > 280 AND ypos < 280 + 220)  ) then
                               R := (others => '1');
                               G := (others => '0');
                               B := (others => '0'); 
    elsif ( (xpos >= 1108)  AND ((xpos - 1108) * (xpos - 1108) + (ypos -390) * (ypos -390) <= 110*110) and ((xpos - 1108) * (xpos - 1108) + (ypos -390) * (ypos -390) >= 100*100)  ) then
                               R := (others => '1');
                               G := (others => '0');
                               B := (others => '0'); 
    
    end if;
  return B & G & r;
end draw_REDT;                                    
function draw_GREENf( xpos, ypos : integer ) return std_logic_vector is

VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);

--Drawing     a    red GREEN
begin
        --Writing g of single
if (   (xpos > gx_green AND xpos < gx_green + 100) AND ( ypos > gy_green AND ypos < gy_green + 15)) then
                   R := (others => '0');
                   G := (others => '0');
                   B := (others => '1');
elsif ( (xpos > gx_green AND xpos < gx_green + 15) AND ( ypos > gy_green AND ypos < gy_green + 100/2) ) then
                   R := (others => '0');
                   G := (others => '0');
                   B := (others => '1');      
elsif ( (xpos > gx_green AND xpos < gx_green + 100) AND ( ypos > gy_green + 100 - 15 AND ypos < gy_green + 100)) then
                   R := (others => '0');
                   G := (others => '0');
                   B := (others => '1'); 
elsif ( (xpos > gx_green AND xpos < gx_green + 100) AND ( ypos > gy_green + 100 / 2 - 15 AND ypos < gy_green + 100 / 2)) then
                   R := (others => '0');
                   G := (others => '0');
                   B := (others => '1');
elsif ( (xpos > gx_green + 100 - 15 AND xpos < gx_green + 100) AND ( ypos > gy_green AND ypos < gy_green + 100) ) then
                   R := (others => '0');
                   G := (others => '0');
                   B := (others => '1');
 --Writing r
                       elsif (   (xpos > (gx_green +  150) AND xpos < (gx_green +  150) + 100) AND ( ypos > (gy_green ) AND ypos < (gy_green) + 15)) then
                                          R := (others => '0');
                                          G := (others => '0');
                                          B := (others => '1');
                       elsif ( (xpos > (gx_green +  150) AND xpos < (gx_green +  150) + 15) AND ( ypos > (gy_green) AND ypos < (gy_green) + 100) ) then
                                          R := (others => '0');
                                          G := (others => '0');
                                          B := (others => '1');      
                       --Writing e
                       elsif (   (xpos > (gx_green +  300) AND xpos < (gx_green +  300) + 100) AND ( ypos > (gy_green ) AND ypos < (gy_green ) + 15)) then
                                          R := (others => '0');
                                          G := (others => '0');
                                          B := (others => '1');
                       elsif ( (xpos > (gx_green +  300) AND xpos < (gx_green +  300) + 15) AND ( ypos > (gy_green ) AND ypos < (gy_green ) + 100) ) then
                                          R := (others => '0');
                                          G := (others => '0');
                                          B := (others => '1');      
                       elsif ( (xpos > (gx_green +  300) AND xpos < (gx_green +  300) + 100) AND ( ypos > (gy_green ) + 100 - 15 AND ypos < (gy_green ) + 100)) then
                                          R := (others => '0');
                                          G := (others => '0');
                                          B := (others => '1'); 
                       elsif ( (xpos > (gx_green +  300) AND xpos < (gx_green +  300) + 100) AND ( ypos > (gy_green ) + 100 / 2 - 15 AND ypos < (gy_green ) + 100 / 2)) then
                                          R := (others => '0');
                                          G := (others => '0');
                                          B := (others => '1');
                       elsif ( (xpos > (gx_green +  300) + 100 - 15 AND xpos < (gx_green +  300) + 100) AND ( ypos > (gy_green ) AND ypos < (gy_green ) + 100 / 2) ) then
                                          R := (others => '0');
                                          G := (others => '0');
                                          B := (others => '1'); 
        
        --
                       --Writing e
        elsif (   (xpos > (gx_green +  450) AND xpos < (gx_green +  450) + 100) AND ( ypos > (gy_green ) AND ypos < (gy_green ) + 15)) then
                           R := (others => '0');
                           G := (others => '0');
                           B := (others => '1');
        elsif ( (xpos > (gx_green +  450) AND xpos < (gx_green +  450) + 15) AND ( ypos > (gy_green ) AND ypos < (gy_green ) + 100) ) then
                           R := (others => '0');
                           G := (others => '0');
                           B := (others => '1');      
        elsif ( (xpos > (gx_green +  450) AND xpos < (gx_green +  450) + 100) AND ( ypos > (gy_green ) + 100 - 15 AND ypos < (gy_green ) + 100)) then
                           R := (others => '0');
                           G := (others => '0');
                           B := (others => '1'); 
        elsif ( (xpos > (gx_green +  450) AND xpos < (gx_green +  450) + 100) AND ( ypos > (gy_green ) + 100 / 2 - 15 AND ypos < (gy_green ) + 100 / 2)) then
                           R := (others => '0');
                           G := (others => '0');
                           B := (others => '1');
        elsif ( (xpos > (gx_green +  450) + 100 - 15 AND xpos < (gx_green +  450) + 100) AND ( ypos > (gy_green ) AND ypos < (gy_green ) + 100 / 2) ) then
                           R := (others => '0');
                           G := (others => '0');
                           B := (others => '1');    
                                  
      --Writing N OF GREEN
                    
        --Writing n
   elsif ( (xpos > gx_green + 600 AND xpos < gx_green + 600 + 100) AND ( ypos > gy_green  AND ypos < gy_green + 15) ) then
                         R := (others => '0');
                         G := (others => '0');
                         B := (others => '1');
   elsif ( (xpos > gx_green + 600  AND xpos < gx_green + 600 + 15) AND ( ypos > gy_green AND ypos < gy_green + 100) ) then
                          R := (others => '0');
                         G := (others => '0');
                         B := (others => '1');
   elsif (   (xpos > gx_green + 600 + 100 - 15 AND xpos < gx_green + 600 + 100) AND ( ypos > gy_green AND ypos < gy_green + 100)) then
                         R := (others => '0');
                         G := (others => '0'); 
                         B := (others => '1');    
     end if;
   return B & G & R;
end draw_GREENf;                                 
function draw_GREENt( xpos, ypos : integer ) return std_logic_vector is

VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);

--Drawing     a    red GREEN
begin
        --Writing g of single
if (   (xpos > gx_green AND xpos < gx_green + 100) AND ( ypos > gy_green AND ypos < gy_green + 15)) then
                   R := (others => '0');
                   G := (others => '1');
                   B := (others => '0');
elsif ( (xpos > gx_green AND xpos < gx_green + 15) AND ( ypos > gy_green AND ypos < gy_green + 100/2) ) then
                   R := (others => '0');
                   G := (others => '1');
                   B := (others => '0');      
elsif ( (xpos > gx_green AND xpos < gx_green + 100) AND ( ypos > gy_green + 100 - 15 AND ypos < gy_green + 100)) then
                   R := (others => '0');
                   G := (others => '1');
                   B := (others => '0'); 
elsif ( (xpos > gx_green AND xpos < gx_green + 100) AND ( ypos > gy_green + 100 / 2 - 15 AND ypos < gy_green + 100 / 2)) then
                   R := (others => '0');
                   G := (others => '1');
                   B := (others => '0');
elsif ( (xpos > gx_green + 100 - 15 AND xpos < gx_green + 100) AND ( ypos > gy_green AND ypos < gy_green + 100) ) then
                   R := (others => '0');
                   G := (others => '1');
                   B := (others => '0');
 --Writing r
                       elsif (   (xpos > (gx_green +  150) AND xpos < (gx_green +  150) + 100) AND ( ypos > (gy_green ) AND ypos < (gy_green) + 15)) then
                                          R := (others => '0');
                                          G := (others => '1');
                                          B := (others => '0');
                       elsif ( (xpos > (gx_green +  150) AND xpos < (gx_green +  150) + 15) AND ( ypos > (gy_green) AND ypos < (gy_green) + 100) ) then
                                          R := (others => '0');
                                          G := (others => '1');
                                          B := (others => '0');      
                       --Writing e
                       elsif (   (xpos > (gx_green +  300) AND xpos < (gx_green +  300) + 100) AND ( ypos > (gy_green ) AND ypos < (gy_green ) + 15)) then
                                          R := (others => '0');
                                          G := (others => '1');
                                          B := (others => '0');
                       elsif ( (xpos > (gx_green +  300) AND xpos < (gx_green +  300) + 15) AND ( ypos > (gy_green ) AND ypos < (gy_green ) + 100) ) then
                                          R := (others => '0');
                                          G := (others => '1');
                                          B := (others => '0');      
                       elsif ( (xpos > (gx_green +  300) AND xpos < (gx_green +  300) + 100) AND ( ypos > (gy_green ) + 100 - 15 AND ypos < (gy_green ) + 100)) then
                                          R := (others => '0');
                                          G := (others => '1');
                                          B := (others => '0'); 
                       elsif ( (xpos > (gx_green +  300) AND xpos < (gx_green +  300) + 100) AND ( ypos > (gy_green ) + 100 / 2 - 15 AND ypos < (gy_green ) + 100 / 2)) then
                                          R := (others => '0');
                                          G := (others => '1');
                                          B := (others => '0');
                       elsif ( (xpos > (gx_green +  300) + 100 - 15 AND xpos < (gx_green +  300) + 100) AND ( ypos > (gy_green ) AND ypos < (gy_green ) + 100 / 2) ) then
                                          R := (others => '0');
                                          G := (others => '1');
                                          B := (others => '0'); 
        
        --
                       --Writing e
        elsif (   (xpos > (gx_green +  450) AND xpos < (gx_green +  450) + 100) AND ( ypos > (gy_green ) AND ypos < (gy_green ) + 15)) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0');
        elsif ( (xpos > (gx_green +  450) AND xpos < (gx_green +  450) + 15) AND ( ypos > (gy_green ) AND ypos < (gy_green ) + 100) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0');      
        elsif ( (xpos > (gx_green +  450) AND xpos < (gx_green +  450) + 100) AND ( ypos > (gy_green ) + 100 - 15 AND ypos < (gy_green ) + 100)) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0'); 
        elsif ( (xpos > (gx_green +  450) AND xpos < (gx_green +  450) + 100) AND ( ypos > (gy_green ) + 100 / 2 - 15 AND ypos < (gy_green ) + 100 / 2)) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0');
        elsif ( (xpos > (gx_green +  450) + 100 - 15 AND xpos < (gx_green +  450) + 100) AND ( ypos > (gy_green ) AND ypos < (gy_green ) + 100 / 2) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0');    
                                  
      --Writing N OF GREEN
                    
        --Writing n
   elsif ( (xpos > gx_green + 600 AND xpos < gx_green + 600 + 100) AND ( ypos > gy_green  AND ypos < gy_green + 15) ) then
                         R := (others => '0');
                         G := (others => '0');
                         B := (others => '0');
   elsif ( (xpos > gx_green + 600  AND xpos < gx_green + 600 + 15) AND ( ypos > gy_green AND ypos < gy_green + 100) ) then
                          R := (others => '0');
                         G := (others => '0');
                         B := (others => '0');
   elsif (   (xpos > gx_green + 600 + 100 - 15 AND xpos < gx_green + 600 + 100) AND ( ypos > gy_green AND ypos < gy_green + 100)) then
                         R := (others => '0');
                         G := (others => '0'); 
                         B := (others => '0');    
     end if;
   return B & G & R;
end draw_GREENt; 
function draw_grayf( xpos, ypos : integer ) return std_logic_vector is

VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);

--Drawing     a    gray RED
begin
   if (   (xpos > gx_gray AND xpos < gx_gray + 100) AND ( ypos > gy_gray AND ypos < gy_gray + 15)) then
                   R := (others => '0');
                   G := (others => '1');
                   B := (others => '1');
elsif ( (xpos > gx_gray AND xpos < gx_gray + 15) AND ( ypos > gy_gray AND ypos < gy_gray + 100/2) ) then
                   R := (others => '0');
                   G := (others => '1');
                   B := (others => '1');      
elsif ( (xpos > gx_gray AND xpos < gx_gray + 100) AND ( ypos > gy_gray + 100 - 15 AND ypos < gy_gray + 100)) then
                   R := (others => '0');
                   G := (others => '1');
                   B := (others => '1'); 
elsif ( (xpos > gx_gray AND xpos < gx_gray + 100) AND ( ypos > gy_gray + 100 / 2 - 15 AND ypos < gy_gray + 100 / 2)) then
                   R := (others => '0');
                   G := (others => '1');
                   B := (others => '1');
elsif ( (xpos > gx_gray + 100 - 15 AND xpos < gx_gray + 100) AND ( ypos > gy_gray AND ypos < gy_gray + 100) ) then
                   R := (others => '0');
                   G := (others => '1');
                   B := (others => '1');
    
 --Writing r
elsif (   (xpos > (gx_gray +  150) AND xpos < (gx_gray +  150) + 100) AND ( ypos > (gy_gray ) AND ypos < (gy_gray) + 15)) then
R := (others => '0');
G := (others => '1');
B := (others => '1');
elsif ( (xpos > (gx_gray +  150) AND xpos < (gx_gray +  150) + 15) AND ( ypos > (gy_gray) AND ypos < (gy_gray) + 100) ) then
R := (others => '0');
G := (others => '1');
B := (others => '1');    
--Writing a
elsif (   (xpos > gx_gray + 300 AND xpos < gx_gray + 300 + 100) AND ( ypos > gy_gray AND ypos < gy_gray + 15)) then
R := (others => '0');
G := (others => '1');
B := (others => '1');
elsif ( (xpos > gx_gray + 300 + 100 - 15 AND xpos < gx_gray + 300 + 100) AND ( ypos > gy_gray AND ypos < gy_gray + 100) ) then
R := (others => '0');
G := (others => '1');
B := (others => '1');
elsif ( (xpos > gx_gray + 300 AND xpos < gx_gray + 300 + 100) AND ( ypos > gy_gray + 100 / 2 - 15 AND ypos < gy_gray + 100 / 2)) then
R := (others => '0'); 
G := (others => '1');
B := (others => '1');
elsif ( (xpos > gx_gray + 300 AND xpos < gx_gray + 300 + 15) AND ( ypos > gy_gray + 100 / 2 - 15 AND ypos < gy_gray + 100) ) then
R := (others => '0');
G := (others => '1');
B := (others => '1'); 
elsif ( (xpos > gx_gray + 300 AND xpos < gx_gray + 300 + 100) AND ( ypos > gy_gray + 100 - 15 AND ypos < gy_gray + 100)) then
R := (others => '0');
G := (others => '1');
B := (others => '1'); 

--Writing y     
elsif ( (xpos > gx_gray + 150 + 300 AND xpos < gx_gray + 150 + 300 + 15) AND ( ypos > gy_gray AND ypos < gy_gray + 100/2) ) then
R := (others => '0');
G := (others => '1');
B := (others => '1');      
elsif ( (xpos > gx_gray + 150 + 300 AND xpos < gx_gray + 150 + 300 + 100) AND ( ypos > gy_gray + 100 - 15 AND ypos < gy_gray + 100)) then
R := (others => '0');
G := (others => '1');
B := (others => '1');  
elsif ( (xpos > gx_gray + 150 + 300 AND xpos < gx_gray + 150 + 300 + 100) AND ( ypos > gy_gray + 100 / 2 - 15 AND ypos < gy_gray + 100 / 2)) then
R := (others => '0');
G := (others => '1');
B := (others => '1'); 
elsif ( (xpos > gx_gray + 150 + 300 + 100 - 15 AND xpos < gx_gray + 150 + 300 + 100) AND ( ypos > gy_gray AND ypos < gy_gray + 100) ) then
R := (others => '0');
G := (others => '1');
B := (others => '1'); 
    end if;
  return b & G & r;
end draw_grayf;                       
                          
end color;