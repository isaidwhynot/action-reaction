library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package opening_screen is

--Action constants
constant  ax_action  :  integer  :=  718;
constant  ay_action  :  integer  :=  105; 

constant  cx_action  :  integer  :=  ax_action + 150;
constant  cy_action  :  integer  :=  ay_action;

constant  tx_action  :  integer  :=  cx_action + 150;
constant  ty_action  :  integer  :=  ay_action; 

constant  ix_action  :  integer  :=  tx_action + 150;
constant  iy_action  :  integer  :=  ay_action; 

constant  ox_action  :  integer  :=  ix_action + 64;
constant  oy_action  :  integer  :=  ay_action;

constant  nx_action  :  integer  :=  ox_action + 150;
constant  ny_action  :  integer  :=  ay_action; 

--Reaction constants
constant  rx_reaction  :  integer  :=  418;
constant  ry_reaction  :  integer  :=  255;
 
constant  ex_reaction  :  integer  :=  rx_reaction + 150;
constant  ey_reaction  :  integer  :=  ry_reaction; 

constant  ax_reaction  :  integer  :=  ex_reaction + 150;
constant  ay_reaction  :  integer  :=  ry_reaction; 

constant  cx_reaction  :  integer  :=  ax_reaction + 150;
constant  cy_reaction  :  integer  :=  ry_reaction;

constant  tx_reaction  :  integer  :=  cx_reaction + 150;
constant  ty_reaction  :  integer  :=  ry_reaction; 

constant  ix_reaction  :  integer  :=  tx_reaction + 150;
constant  iy_reaction  :  integer  :=  ry_reaction; 

constant  ox_reaction  :  integer  :=  ix_reaction + 64;
constant  oy_reaction  :  integer  :=  ry_reaction;

constant  nx_reaction  :  integer  :=  ox_reaction + 150;
constant  ny_reaction  :  integer  :=  ry_reaction; 

--"Single" constants
constant  sx_single  :  integer  :=  518;
constant  sy_single  :  integer  :=  505 + 25; 

constant  ix_single  :  integer  :=  sx_single + 75;
constant  iy_single  :  integer  :=  sy_single;

constant  nx_single  :  integer  :=  ix_single + 39;
constant  ny_single  :  integer  :=  sy_single; 

constant  gx_single  :  integer  :=  nx_single + 75;
constant  gy_single  :  integer  :=  sy_single; 

constant  lx_single  :  integer  :=  gx_single + 75;
constant  ly_single  :  integer  :=  sy_single;

constant  ex_single  :  integer  :=  lx_single + 75;
constant  ey_single  :  integer  :=  sy_single; 

--"Multi" constants
constant  mx_multi  :  integer  :=  ex_single + 200;
constant  my_multi  :  integer  :=  505 + 25; 

constant  ux_multi  :  integer  :=  mx_multi + 75;
constant  uy_multi  :  integer  :=  my_multi;

constant  lx_multi  :  integer  :=  ux_multi + 75;
constant  ly_multi  :  integer  :=  my_multi; 

constant  tx_multi  :  integer  :=  lx_multi + 75;
constant  ty_multi  :  integer  :=  my_multi; 

constant  ix_multi  :  integer  :=  tx_multi + 75;
constant  iy_multi  :  integer  :=  my_multi;




-------Function Declarations
function draw_opening_screen(xpos,ypos : integer; selection : std_logic) return STD_LOGIC_VECTOR;

end opening_screen;

package body opening_screen is

function draw_opening_screen(xpos,ypos : integer; selection : std_logic) return STD_LOGIC_VECTOR is

VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
--------------------------------------------- 2 - 1 = 1 ---------------------------------------------
begin
     --Writing a c t i o n 
        
     --Writing a
     if (   (xpos > ax_action AND xpos < ax_action + 100) AND ( ypos > ay_action AND ypos < ay_action + 15)) then
                        R := (others => '1');
                        G := (others => '0');
                        B := (others => '1');
     elsif ( (xpos > ax_action + 100 - 15 AND xpos < ax_action + 100) AND ( ypos > ay_action AND ypos < ay_action + 100) ) then
                        R := (others => '1');
                        G := (others => '0');
                        B := (others => '1');
     elsif ( (xpos > ax_action AND xpos < ax_action + 100) AND ( ypos > ay_action + 100 / 2 - 15 AND ypos < ay_action + 100 / 2)) then
                        R := (others => '1');
                        G := (others => '0');
                        B := (others => '1');
     elsif ( (xpos > ax_action AND xpos < ax_action + 15) AND ( ypos > ay_action + 100/2 - 15 AND ypos < ay_action + 100) ) then
                        R := (others => '1');
                        G := (others => '0');
                        B := (others => '1'); 
     elsif ( (xpos > ax_action AND xpos < ax_action + 100) AND ( ypos > ay_action + 100 - 15 AND ypos < ay_action + 100)) then
                        R := (others => '1');
                        G := (others => '0');
                        B := (others => '1'); 

          
     --Writing c
     elsif (   (xpos > cx_action AND xpos < cx_action + 100) AND ( ypos > cy_action AND ypos < cy_action + 15)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');
     elsif ( (xpos > cx_action AND xpos < cx_action + 15) AND ( ypos > cy_action AND ypos < cy_action + 100) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');      
     elsif ( (xpos > cx_action AND xpos < cx_action + 100) AND ( ypos > cy_action + 100 - 15 AND ypos < cy_action + 100)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1'); 
     --Writing t
     elsif ( (xpos > tx_action AND xpos < tx_action + 15) AND ( ypos > ty_action AND ypos < ty_action + 100) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1'); 
     elsif ( (xpos > tx_action AND xpos < tx_action + 100) AND ( ypos > ty_action + 100 - 15 AND ypos < ty_action + 100) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1'); 
     elsif ( (xpos > tx_action - 40 AND xpos < tx_action + 100 - 40) AND ( ypos > ty_action + 100*1/2 - 15 AND ypos < ty_action + 100 / 2)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1'); 

     --Writing i
     elsif ( (xpos > ix_action AND xpos < ix_action + 15) AND ( ypos > iy_action AND ypos < iy_action + 100) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1'); 
     elsif ( (xpos - ix_action - 7) * (xpos - ix_action - 7) + (ypos - iy_action + 17) * (ypos - iy_action + 17) <= 49 ) then
                        R := (others => '0');
                        G := (others => '0');
                        B := (others => '1');
     --Writing o
     elsif ( (xpos > ox_action AND xpos < ox_action + 100) AND ( ypos > oy_action AND ypos < oy_action + 15) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');
     elsif ( (xpos > ox_action + 100 - 15 AND xpos < ox_action + 100) AND ( ypos > oy_action AND ypos < oy_action + 100)  ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');
     elsif ( (xpos > ox_action AND xpos < ox_action + 100) AND ( ypos > oy_action + 100 - 15 AND ypos < oy_action + 100) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');
     elsif ( (xpos > ox_action  AND xpos < ox_action + 15) AND ( ypos > oy_action AND ypos < oy_action + 100)  ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');
     --Writing n
     elsif ( (xpos > nx_action AND xpos < nx_action + 100) AND ( ypos > ny_action  AND ypos < ny_action + 15) ) then
                        R := (others => '1');
                        G := (others => '0');
                        B := (others => '1');
     elsif ( (xpos > nx_action  AND xpos < nx_action + 15) AND ( ypos > ny_action AND ypos < ny_action + 100) ) then
                        R := (others => '1');
                        G := (others => '0');
                        B := (others => '1');
     elsif (   (xpos > nx_action + 100 - 15 AND xpos < nx_action + 100) AND ( ypos > ny_action AND ypos < ny_action + 100)) then
                        R := (others => '1');
                        G := (others => '0');
                        B := (others => '1');
                        
---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
                        
     --Writing r e a c t i o n 
      
     --Writing r
     elsif (   (xpos > rx_reaction AND xpos < rx_reaction + 100) AND ( ypos > ry_reaction AND ypos < ry_reaction + 15)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');
     elsif ( (xpos > rx_reaction AND xpos < rx_reaction + 15) AND ( ypos > ry_reaction AND ypos < ry_reaction + 100) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');      
     --Writing e
     elsif (   (xpos > ex_reaction AND xpos < ex_reaction + 100) AND ( ypos > ey_reaction AND ypos < ey_reaction + 15)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');
     elsif ( (xpos > ex_reaction AND xpos < ex_reaction + 15) AND ( ypos > ey_reaction AND ypos < ey_reaction + 100) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');      
     elsif ( (xpos > ex_reaction AND xpos < ex_reaction + 100) AND ( ypos > ey_reaction + 100 - 15 AND ypos < ey_reaction + 100)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1'); 
     elsif ( (xpos > ex_reaction AND xpos < ex_reaction + 100) AND ( ypos > ey_reaction + 100 / 2 - 15 AND ypos < ey_reaction + 100 / 2)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');
     elsif ( (xpos > ex_reaction + 100 - 15 AND xpos < ex_reaction + 100) AND ( ypos > ey_reaction AND ypos < ey_reaction + 100 / 2) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');
     --Writing a
     elsif (   (xpos > ax_reaction AND xpos < ax_reaction + 100) AND ( ypos > ay_reaction AND ypos < ay_reaction + 15)) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1');
     elsif ( (xpos > ax_reaction + 100 - 15 AND xpos < ax_reaction + 100) AND ( ypos > ay_reaction AND ypos < ay_reaction + 100) ) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1');
     elsif ( (xpos > ax_reaction AND xpos < ax_reaction + 100) AND ( ypos > ay_reaction + 100 / 2 - 15 AND ypos < ay_reaction + 100 / 2)) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1');
     elsif ( (xpos > ax_reaction AND xpos < ax_reaction + 15) AND ( ypos > ay_reaction + 100 / 2 - 15 AND ypos < ay_reaction + 100) ) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1'); 
     elsif ( (xpos > ax_reaction AND xpos < ax_reaction + 100) AND ( ypos > ay_reaction + 100 - 15 AND ypos < ay_reaction + 100)) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1'); 
                
        --Writing c
     elsif (   (xpos > cx_reaction AND xpos < cx_reaction + 100) AND ( ypos > cy_reaction AND ypos < cy_reaction + 15)) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '1');
     elsif ( (xpos > cx_reaction AND xpos < cx_reaction + 15) AND ( ypos > cy_reaction AND ypos < cy_reaction + 100) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '1');      
     elsif ( (xpos > cx_reaction AND xpos < cx_reaction + 100) AND ( ypos > cy_reaction + 100 - 15 AND ypos < cy_reaction + 100)) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '1'); 
        --Writing t
     elsif ( (xpos > tx_reaction AND xpos < tx_reaction + 15) AND ( ypos > ty_reaction AND ypos < ty_reaction + 100) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '1'); 
     elsif ( (xpos > tx_reaction AND xpos < tx_reaction + 100) AND ( ypos > ty_reaction + 100 - 15 AND ypos < ty_reaction + 100) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '1'); 
     elsif ( (xpos > tx_reaction - 40 AND xpos < tx_reaction + 100 - 40) AND ( ypos > ty_reaction + 100*1/2 - 15 AND ypos < ty_reaction + 100 / 2)) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '1'); 
    
        --Writing i
     elsif ( (xpos > ix_reaction AND xpos < ix_reaction + 15) AND ( ypos > iy_reaction AND ypos < iy_reaction + 100) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '1'); 
     elsif ( (xpos - ix_reaction - 7) * (xpos - ix_reaction - 7) + (ypos - iy_reaction + 17) * (ypos - iy_reaction + 17) <= 49 ) then
                           R := (others => '0');
                           G := (others => '0');
                           B := (others => '1');
        --Writing o
     elsif ( (xpos > ox_reaction AND xpos < ox_reaction + 100) AND ( ypos > oy_reaction AND ypos < oy_reaction + 15) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '1');
     elsif ( (xpos > ox_reaction + 100 - 15 AND xpos < ox_reaction + 100) AND ( ypos > oy_reaction AND ypos < oy_reaction + 100)  ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '1');
     elsif ( (xpos > ox_reaction AND xpos < ox_reaction + 100) AND ( ypos > oy_reaction + 100 - 15 AND ypos < oy_reaction + 100) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '1');
     elsif ( (xpos > ox_reaction  AND xpos < ox_reaction + 15) AND ( ypos > oy_reaction AND ypos < oy_reaction + 100)  ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '1');
        --Writing n
     elsif ( (xpos > nx_reaction AND xpos < nx_reaction + 100) AND ( ypos > ny_reaction  AND ypos < ny_reaction + 15) ) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1');
     elsif ( (xpos > nx_reaction  AND xpos < nx_reaction + 15) AND ( ypos > ny_reaction AND ypos < ny_reaction + 100) ) then
                            R := (others => '1');
                           G := (others => '0');
                           B := (others => '1');
     elsif (   (xpos > nx_reaction + 100 - 15 AND xpos < nx_reaction + 100) AND ( ypos > ny_reaction AND ypos < ny_reaction + 100)) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1');   
---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------

     --Drawing the modes: single player or multi player
     
     --Writing s i n g l e
     --Writing s
     elsif ( (xpos > sx_single AND xpos < sx_single + 50) AND ( ypos > sy_single AND ypos < sy_single + 5)) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');
     elsif ( (xpos > sx_single AND xpos < sx_single + 5) AND ( ypos > sy_single AND ypos < sy_single + 25) ) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');
     elsif ( (xpos > sx_single AND xpos < sx_single + 50) AND ( ypos > sy_single + 20 AND ypos < sy_single + 25)) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');
     elsif ( (xpos > sx_single + 45 AND xpos < sx_single + 50) AND ( ypos > sy_single + 20 AND ypos < sy_single + 50) ) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0'); 
     elsif ( (xpos > sx_single AND xpos < sx_single + 50) AND ( ypos > sy_single + 45 AND ypos < sy_single + 50)) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');                      
     --Writing i of single
     elsif ( (xpos > ix_single AND xpos < ix_single + 6) AND ( ypos > iy_single AND ypos < iy_single + 50) ) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '1'); 
     elsif ( (xpos - ix_single - 3) * (xpos - ix_single - 3) + (ypos - iy_single + 13) * (ypos - iy_single + 13) <= 9 ) then
                         R := (others => '0');
                         G := (others => '0');
                         B := (others => '1');                      
     --Writing n of single                      
     elsif ( (xpos > nx_single AND xpos < nx_single + 50) AND ( ypos > ny_single  AND ypos < ny_single + 5) ) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1');
     elsif ( (xpos > nx_single  AND xpos < nx_single + 5) AND ( ypos > ny_single AND ypos < ny_single + 50) ) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1');
     elsif (   (xpos > nx_single + 50 - 5 AND xpos < nx_single + 50) AND ( ypos > ny_single AND ypos < ny_single + 50)) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1');   
     --Writing g of single
     elsif (   (xpos > gx_single AND xpos < gx_single + 50) AND ( ypos > gy_single AND ypos < gy_single + 5)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');
     elsif ( (xpos > gx_single AND xpos < gx_single + 5) AND ( ypos > gy_single AND ypos < gy_single + 50/2) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');      
     elsif ( (xpos > gx_single AND xpos < gx_single + 50) AND ( ypos > gy_single + 50 - 5 AND ypos < gy_single + 50)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1'); 
     elsif ( (xpos > gx_single AND xpos < gx_single + 50) AND ( ypos > gy_single + 50 / 2 - 5 AND ypos < gy_single + 50 / 2)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');
     elsif ( (xpos > gx_single + 50 - 5 AND xpos < gx_single + 50) AND ( ypos > gy_single AND ypos < gy_single + 50) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');
     --Writing l of single
     elsif ( (xpos > lx_single AND xpos < lx_single + 5) AND ( ypos > ly_single AND ypos < ly_single + 50) ) then
                          R := (others => '0');
                          G := (others => '1');
                          B := (others => '1'); 
     elsif ( (xpos > lx_single AND xpos < lx_single + 50) AND ( ypos > ly_single + 50 - 5 AND ypos < ly_single + 50) ) then
                          R := (others => '0');
                          G := (others => '1');
                          B := (others => '1'); 
     --Writing e of single
     elsif (   (xpos > ex_single AND xpos < ex_single + 50) AND ( ypos > ey_single AND ypos < ey_single + 5)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');
     elsif ( (xpos > ex_single AND xpos < ex_single + 5) AND ( ypos > ey_single AND ypos < ey_single + 50) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');      
     elsif ( (xpos > ex_single AND xpos < ex_single + 50) AND ( ypos > ey_single + 50 - 5 AND ypos < ey_single + 50)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1'); 
     elsif ( (xpos > ex_single AND xpos < ex_single + 50) AND ( ypos > ey_single + 50 / 2 - 5 AND ypos < ey_single + 50 / 2)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');
     elsif ( (xpos > ex_single + 50 - 5 AND xpos < ex_single + 50) AND ( ypos > ey_single AND ypos < ey_single + 50 / 2) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '1');                           
     --Writing m u l t i
     
     --Writing m
     elsif ( (xpos > mx_multi AND xpos < mx_multi + 50) AND ( ypos > my_multi  AND ypos < my_multi + 5) ) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1');
     elsif ( (xpos > mx_multi  AND xpos < mx_multi + 5) AND ( ypos > my_multi AND ypos < my_multi + 50) ) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1');
     elsif (   (xpos > mx_multi + 50 - 5 AND xpos < mx_multi + 50) AND ( ypos > my_multi AND ypos < my_multi + 50)) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1'); 
     elsif (   (xpos > mx_multi + 22 AND xpos < mx_multi + 27) AND ( ypos > my_multi AND ypos < my_multi + 50)) then
                             R := (others => '1');
                             G := (others => '0');
                             B := (others => '1'); 
     --Writing u
     elsif ( (xpos > ux_multi AND xpos < ux_multi + 50) AND ( ypos > uy_multi + 50 - 5  AND ypos < uy_multi + 50) ) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1');
     elsif ( (xpos > ux_multi  AND xpos < ux_multi + 5) AND ( ypos > uy_multi AND ypos < uy_multi + 50) ) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1');
     elsif (   (xpos > ux_multi + 50 - 5 AND xpos < ux_multi + 50) AND ( ypos > uy_multi AND ypos < uy_multi + 50)) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '1');  
     --Writing l 
     elsif ( (xpos > lx_multi AND xpos < lx_multi + 5) AND ( ypos > ly_multi AND ypos < ly_multi + 50) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '1'); 
     elsif ( (xpos > lx_multi AND xpos < lx_multi + 50) AND ( ypos > ly_multi + 50 - 5 AND ypos < ly_multi + 50) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '1'); 
     --Writing t  
     elsif ( (xpos > tx_multi AND xpos < tx_multi + 5) AND ( ypos > ty_multi AND ypos < ty_multi + 50) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '1'); 
     elsif ( (xpos > tx_multi AND xpos < tx_multi + 50) AND ( ypos > ty_multi + 50 - 5 AND ypos < ty_multi + 50) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '1'); 
     elsif ( (xpos > tx_multi - 20 AND xpos < tx_multi + 50 - 20) AND ( ypos > ty_multi + 15 AND ypos < ty_multi + 20) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '1'); 
     --Writing i
     elsif ( (xpos > ix_multi AND xpos < ix_multi + 6) AND ( ypos > iy_multi AND ypos < iy_multi + 50) ) then
                             R := (others => '0');
                             G := (others => '1');
                             B := (others => '1'); 
     elsif ( (xpos - ix_multi - 3) * (xpos - ix_multi - 3) + (ypos - iy_multi + 13) * (ypos - iy_multi + 13) <= 9 ) then
                             R := (others => '0');
                             G := (others => '0');
                             B := (others => '1');   
                                            
               
     end if;
       if (selection = '0' ) then       
        if ( (xpos > sx_single - 20  AND xpos < sx_single - 20 +  450) AND ( ypos > 505 - 7  AND ypos < 505 - 7 + 10)) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
        elsif ( (xpos > sx_single - 20   AND xpos < sx_single - 20 + 450) AND ( ypos > 505 - 7 + 90 AND ypos < 505 - 7 + 100) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
        elsif ( (xpos > sx_single - 20 + 440 AND xpos < sx_single - 20 + 450) AND ( ypos > 505 - 7  AND ypos < 505 - 7 +100)) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
        elsif ( (xpos > sx_single - 20  AND xpos < sx_single - 20 +10) AND ( ypos > 505 - 7  AND ypos < 505 - 7 + 100) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
        end if;
     elsif ( selection = '1' ) then   
      if ( (xpos > mx_multi - 20  AND xpos < mx_multi - 20 +  400) AND ( ypos > 505 - 7  AND ypos < 505 - 7 + 10)) then
                          R := (others => '0');
                          G := (others => '1');
                          B := (others => '0');
      elsif ( (xpos > mx_multi - 20   AND xpos < mx_multi - 20 + 400) AND ( ypos > 505 - 7 + 90 AND ypos < 505 - 7 + 100) ) then
                          R := (others => '0');
                          G := (others => '1');
                          B := (others => '0');
      elsif ( (xpos > mx_multi - 20 + 390 AND xpos < mx_multi - 20 + 400) AND ( ypos > 505 - 7  AND ypos < 505 - 7 +100)) then
                          R := (others => '0');
                          G := (others => '1');
                          B := (others => '0');
      elsif ( (xpos > mx_multi - 20  AND xpos < mx_multi - 20 +10) AND ( ypos > 505 - 7  AND ypos < 505 - 7 + 100) ) then
                          R := (others => '0');
                          G := (others => '1');
                          B := (others => '0');
     end if;    
     end if;   
     
     
   return B & G & R;
 end draw_opening_screen; 
------ ------ ------ ------ ------ ------ ------ ------ ------ ------ ------ ------ ------ ------ ------ ------ ------ ------ ------ ------ ------ 

end opening_screen;
