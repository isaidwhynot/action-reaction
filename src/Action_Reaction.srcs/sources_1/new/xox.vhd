--12 XOX Functions
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package xox is
--Constants for the skeleton of the Table
constant table_x : integer := 758;
constant table_y : integer := 155;

--Constants for X
constant a1x : integer := 990 - 92;
constant b1x : integer := 200 - 25;

constant a2x : integer := 1160 - 92;
constant b2x : integer := 200 - 25;

constant a3x : integer := 1320 - 92;
constant b3x : integer := 200 - 25;

constant a4x : integer := 990 - 92;
constant b4x : integer := 380 - 25;

constant a5x : integer := 1160 - 92;
constant b5x : integer := 380 - 25;

constant a6x : integer := 1320 - 92;
constant b6x : integer := 380 - 25;

constant a7x : integer := 990 - 92;
constant b7x : integer := 530 - 25;

constant a8x : integer := 1160 - 92;
constant b8x : integer := 530 - 25;

constant a9x : integer := 1320 - 92;
constant b9x : integer := 530 - 25;

--Constants for O
constant a1o : integer := 932 - 92;
constant b1o : integer := 262 - 25;

constant a2o : integer := 1102 - 92;
constant b2o : integer := 262 - 25;

constant a3o : integer := 1272 - 92;
constant b3o : integer := 262 - 25;

constant a4o : integer := 932 - 92;
constant b4o : integer := 427 - 25;

constant a5o : integer := 1102 - 92;
constant b5o : integer := 427 - 25;

constant a6o : integer := 1272 - 92;
constant b6o : integer := 427 - 25;

constant a7o : integer := 932 - 92;
constant b7o : integer := 592 - 25;

constant a8o : integer := 1102 - 92;
constant b8o : integer := 592 - 25;

constant a9o : integer := 1272 - 92;
constant b9o : integer := 592 - 25;

----
function draw_xox1(xpos,ypos : integer) return std_logic_vector;  
constant is_correct_xox1 : std_logic := '1'; 
----
function draw_xox2(xpos,ypos : integer) return std_logic_vector; 
constant is_correct_xox2 : std_logic := '0';---------0
----
function draw_xox3(xpos,ypos : integer) return std_logic_vector;   
constant is_correct_xox3 : std_logic := '1'; 
----
function draw_xox4(xpos,ypos : integer) return std_logic_vector;   
constant is_correct_xox4 :std_logic := '1'; 
----
------
function draw_xox5(xpos,ypos : integer) return std_logic_vector;  
constant is_correct_xox5 : std_logic := '1'; 
------
function draw_xox6(xpos,ypos : integer) return std_logic_vector; 
constant is_correct_xox6 : std_logic := '1';---------0
----
function draw_xox7(xpos,ypos : integer) return std_logic_vector;   
constant is_correct_xox7 : std_logic := '0'; 
----
function draw_xox8(xpos,ypos : integer) return std_logic_vector;   
constant is_correct_xox8 :std_logic := '0'; 
----
----
function draw_xox9(xpos,ypos : integer) return std_logic_vector;  
constant is_correct_xox9 : std_logic := '0'; 
----
function draw_xox10(xpos,ypos : integer) return std_logic_vector; 
constant is_correct_xox10 : std_logic := '1';---------0
----
function draw_xox11(xpos,ypos : integer) return std_logic_vector;   
constant is_correct_xox11 : std_logic := '1'; 
----
function draw_xox12(xpos,ypos : integer) return std_logic_vector;   
constant is_correct_xox12 :std_logic := '1'; 
----
----
function draw_maze(xpos,ypos : integer) return STD_LOGIC_VECTOR;
constant is_correct_maze : std_logic := '1';

function draw_maze2(xpos,ypos : integer) return STD_LOGIC_VECTOR;
constant is_correct_maze2 : std_logic := '0';

end xox;

package body xox is

--This function draws X :: 2 4 6 8 and O :: 1 3 5 7 9
function draw_xox1(xpos,ypos : integer) return STD_LOGIC_VECTOR is

VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);

begin
        --Very Top Line
         if ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 10) ) then
                              R := (others => '0');
                              G := (others => '1');
                              B := (others => '0');  
         --Very Right line
         elsif ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                              R := (others => '0');
                                              G := (others => '1');
                                              B := (others => '0');  
         --Very Left line
         elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                              R := (others => '0');
                                              G := (others => '1');
                                              B := (others => '0');
         --Very Bottom Line
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 490 AND ypos < table_y + 500) ) then
                                              R := (others => '0');
                                              G := (others => '1');
                                              B := (others => '0');                             
          --4 Intermediate Lines                             
             --2 vertical Lines
                 --Left Vertical
         elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                              R := (others => '0');
                                              G := (others => '1');
                                              B := (others => '0');            
                  --Right Vertical                            
         elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0'); 
                                               
                                               
               --2 horizontal Lines
                       --Upper Horizontal
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
                                                R := (others => '0');
                                                G := (others => '1');
                                                B := (others => '0');            
                       --Bottom Horizontal                            
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
                                                 R := (others => '0');
                                                 G := (others => '1');
                                                 B := (others => '0');       
         --Table ends
         
         --Here making X's and 'o's begins
         
         --Putting 'X's into positions 2,4,6 and 8
         --Making an 'X' to position 2
         elsif ( ( xpos + ypos >= a2x + b2x) AND ( xpos + ypos <= a2x + b2x + 10) AND ( xpos - ypos <= a2x - b2x) AND ( xpos - ypos >= a2x - b2x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a2x + b2x - 115) AND ( xpos + ypos <= a2x + b2x + 125) AND ( xpos - ypos <= a2x - b2x - 115) AND ( xpos - ypos >= a2x - b2x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');                                                                                                                                
         --Making an 'X' to position 8
         elsif ( ( xpos + ypos >= a8x + b8x) AND ( xpos + ypos <= a8x + b8x + 10) AND ( xpos - ypos <= a8x - b8x) AND ( xpos - ypos >= a8x - b8x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a8x + b8x - 115) AND ( xpos + ypos <= a8x + b8x + 125) AND ( xpos - ypos <= a8x - b8x - 115) AND ( xpos - ypos >= a8x - b8x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');     
 
         --Making an 'X' to position 4
         elsif ( ( xpos + ypos >= a4x + b4x) AND ( xpos + ypos <= a4x + b4x + 10) AND ( xpos - ypos <= a4x - b4x) AND ( xpos - ypos >= a4x - b4x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a4x + b4x - 115) AND ( xpos + ypos <= a4x + b4x + 125) AND ( xpos - ypos <= a4x - b4x - 115) AND ( xpos - ypos >= a4x - b4x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
                                                 
         --Making an 'X' to position 6
         elsif ( ( xpos + ypos >= a6x + b6x) AND ( xpos + ypos <= a6x + b6x + 10) AND ( xpos - ypos <= a6x - b6x) AND ( xpos - ypos >= a6x - b6x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a6x + b6x - 115) AND ( xpos + ypos <= a6x + b6x + 125) AND ( xpos - ypos <= a6x - b6x - 115) AND ( xpos - ypos >= a6x - b6x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');                                        
 
          --Putting 'O's into positions 1,3,5 and 7
          --Making an 'O' into 1
         elsif ( ((xpos-a1o)*(xpos-a1o) +(ypos-b1o)*(ypos-b1o)) >=50*50 AND ((xpos-a1o)*(xpos-a1o) +(ypos-b1o)*(ypos-b1o) <= 55*55)   ) then
                                                  R := (others => '1');
                                                            G := (others => '1');
                                                            B := (others => '1');
          --Making an 'O' into 3
         elsif ( ((xpos-a3o)*(xpos-a3o) +(ypos-b3o)*(ypos-b3o)) >=50*50 AND ((xpos-a3o)*(xpos-a3o) +(ypos-b3o)*(ypos-b3o) <= 55*55)   ) then
                                                   R := (others => '1');
                                                             G := (others => '1');
                                                             B := (others => '1');                                        
  
          --Making an 'O' into 5
         elsif ( ((xpos-a5o)*(xpos-a5o) +(ypos-b5o)*(ypos-b5o)) >=50*50 AND ((xpos-a5o)*(xpos-a5o) +(ypos-b5o)*(ypos-b5o) <= 55*55)   ) then
                                                   R := (others => '1');
                                                             G := (others => '1');
                                                             B := (others => '1');
 
          --Making an 'O' into 7
         elsif ( ((xpos-a7o)*(xpos-a7o) +(ypos-b7o)*(ypos-b7o)) >=50*50 AND ((xpos-a7o)*(xpos-a7o) +(ypos-b7o)*(ypos-b7o) <= 55*55)   ) then
                                                   R := (others => '1');
                                                   G := (others => '1');
                                                   B := (others => '1');
          --Making an 'O' into 9
         elsif ( ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o)) >=50*50 AND ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o) <= 55*55) ) then
                                                   R := (others => '1');
                                                             G := (others => '1');
                                                             B := (others => '1');
         end if;
      return B & G & R;
 end draw_xox1;
--FUNCTION 1 ENDS 
 
 
 --This function draws X :: 2 4 5 7 9 and O :: 1 3 6 8
 function draw_xox2(xpos,ypos : integer) return STD_LOGIC_VECTOR is
 
 VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
 
 begin
         --Very Top Line
         if ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 10) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');  
         --Very Right line
         elsif ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');  
         --Very Left line
         elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');
         --Very Bottom Line
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 500 -10 AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');                             
         --4 Intermediate Lines                             
            --2 vertical Lines
               --Left Vertical
         elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');            
               --Right Vertical                            
         elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                                R := (others => '0');
                                                G := (others => '1');
                                                B := (others => '0'); 
                                                
                                                
            --2 horizontal Lines
               --Upper Horizontal
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
                                                 R := (others => '0');
                                                 G := (others => '1');
                                                 B := (others => '0');            
               --Bottom Horizontal                            
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
                                                  R := (others => '0');
                                                  G := (others => '1');
                                                  B := (others => '0');       
         --Table ends
         
         --Here making X's and 'o's begins
         
         --Putting 'X's into positions 2,4,5,7 and 9
         --Making an 'X' to position 2
         elsif ( ( xpos + ypos >= a2x + b2x) AND ( xpos + ypos <= a2x + b2x + 10) AND ( xpos - ypos <= a2x - b2x) AND ( xpos - ypos >= a2x - b2x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a2x + b2x - 115) AND ( xpos + ypos <= a2x + b2x + 125) AND ( xpos - ypos <= a2x - b2x - 115) AND ( xpos - ypos >= a2x - b2x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');                                                                                                                                
         --Making an 'X' to position 5
         elsif ( ( xpos + ypos >= a5x + b5x) AND ( xpos + ypos <= a5x + b5x + 10) AND ( xpos - ypos <= a5x - b5x) AND ( xpos - ypos >= a5x - b5x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a5x + b5x - 115) AND ( xpos + ypos <= a5x + b5x + 125) AND ( xpos - ypos <= a5x - b5x - 115) AND ( xpos - ypos >= a5x - b5x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');     
 
         --Making an 'X' to position 4
         elsif ( ( xpos + ypos >= a4x + b4x) AND ( xpos + ypos <= a4x + b4x + 10) AND ( xpos - ypos <= a4x - b4x) AND ( xpos - ypos >= a4x - b4x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a4x + b4x - 115) AND ( xpos + ypos <= a4x + b4x + 125) AND ( xpos - ypos <= a4x - b4x - 115) AND ( xpos - ypos >= a4x - b4x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
                                                 
         --Making an 'X' to position 7
         elsif ( ( xpos + ypos >= a7x + b7x) AND ( xpos + ypos <= a7x + b7x + 10) AND ( xpos - ypos <= a7x - b7x) AND ( xpos - ypos >= a7x - b7x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a7x + b7x - 115) AND ( xpos + ypos <= a7x + b7x + 125) AND ( xpos - ypos <= a7x - b7x - 115) AND ( xpos - ypos >= a7x - b7x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');    
                                                  
          --Making an 'X' to position 9
         elsif ( ( xpos + ypos >= a9x + b9x) AND ( xpos + ypos <= a9x + b9x + 10) AND ( xpos - ypos <= a9x - b9x) AND ( xpos - ypos >= a9x - b9x - 240) ) then
                                                    R := (others => '1');
                                                    G := (others => '0');
                                                    B := (others => '0'); 
         elsif ( ( xpos + ypos >= a9x + b9x - 115) AND ( xpos + ypos <= a9x + b9x + 125) AND ( xpos - ypos <= a9x - b9x - 115) AND ( xpos - ypos >= a9x - b9x - 125)  ) then
                                                    R := (others => '1');
                                                    G := (others => '0');
                                                    B := (others => '0');    

          --Putting 'O's into positions 1,3,6 and 8
          --Making an 'O' into 1
         elsif ( ((xpos-a1o)*(xpos-a1o) +(ypos-b1o)*(ypos-b1o)) >=50*50 AND ((xpos-a1o)*(xpos-a1o) +(ypos-b1o)*(ypos-b1o) <= 55*55)   ) then
                                                  R := (others => '1');
                                                            G := (others => '1');
                                                            B := (others => '1');
          --Making an 'O' into 3
         elsif ( ((xpos-a3o)*(xpos-a3o) +(ypos-b3o)*(ypos-b3o)) >=50*50 AND ((xpos-a3o)*(xpos-a3o) +(ypos-b3o)*(ypos-b3o) <= 55*55)   ) then
                                                   R := (others => '1');
                                                             G := (others => '1');
                                                             B := (others => '1');                                        
  
          --Making an 'O' into 6
         elsif ( ((xpos-a6o)*(xpos-a6o) +(ypos-b6o)*(ypos-b6o)) >=50*50 AND ((xpos-a6o)*(xpos-a6o) +(ypos-b6o)*(ypos-b6o) <= 55*55)   ) then
                                                   R := (others => '1');
                                                             G := (others => '1');
                                                             B := (others => '1');
 
          --Making an 'O' into 8
         elsif ( ((xpos-a8o)*(xpos-a8o) +(ypos-b8o)*(ypos-b8o)) >=50*50 AND ((xpos-a8o)*(xpos-a8o) +(ypos-b8o)*(ypos-b8o) <= 55*55)   ) then
                                                   R := (others => '1');
                                                   G := (others => '1');
                                                   B := (others => '1');
         end if;
      return B & G & R;
  end draw_xox2;
--FUNCTION 2 ENDS

--This function draws X :: 2 4 6 7 8 and O :: 1 3 5 9
function draw_xox3(xpos,ypos : integer) return STD_LOGIC_VECTOR is

VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);

begin
         --Very Top Line
         if ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 10) ) then
                              R := (others => '0');
                              G := (others => '1');
                              B := (others => '0');  
         --Very Right line
         elsif ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                              R := (others => '0');
                                              G := (others => '1');
                                              B := (others => '0');  
         --Very Left line
         elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                              R := (others => '0');
                                              G := (others => '1');
                                              B := (others => '0');
         --Very Bottom Line
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 500 -10 AND ypos < table_y + 500) ) then
                                              R := (others => '0');
                                              G := (others => '1');
                                              B := (others => '0');                             
         --4 Intermediate Lines                             
            --2 vertical Lines
               --Left Vertical
         elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                              R := (others => '0');
                                              G := (others => '1');
                                              B := (others => '0');            
               --Right Vertical                            
         elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0'); 
                                               
                                               
            --2 horizontal Lines
               --Upper Horizontal
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
                                                R := (others => '0');
                                                G := (others => '1');
                                                B := (others => '0');            
               --Bottom Horizontal                            
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
                                                 R := (others => '0');
                                                 G := (others => '1');
                                                 B := (others => '0');       
         --Table ends
         
         --Here making X's and 'o's begins
         
         --Putting 'X's into positions 2 4 6 7 8
         --Making an 'X' to position 2
         elsif ( ( xpos + ypos >= a2x + b2x) AND ( xpos + ypos <= a2x + b2x + 10) AND ( xpos - ypos <= a2x - b2x) AND ( xpos - ypos >= a2x - b2x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a2x + b2x - 115) AND ( xpos + ypos <= a2x + b2x + 125) AND ( xpos - ypos <= a2x - b2x - 115) AND ( xpos - ypos >= a2x - b2x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');                                                                                                                                
         --Making an 'X' to position 8
         elsif ( ( xpos + ypos >= a8x + b8x) AND ( xpos + ypos <= a8x + b8x + 10) AND ( xpos - ypos <= a8x - b8x) AND ( xpos - ypos >= a8x - b8x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a8x + b8x - 115) AND ( xpos + ypos <= a8x + b8x + 125) AND ( xpos - ypos <= a8x - b8x - 115) AND ( xpos - ypos >= a8x - b8x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');     
 
         --Making an 'X' to position 4
         elsif ( ( xpos + ypos >= a4x + b4x) AND ( xpos + ypos <= a4x + b4x + 10) AND ( xpos - ypos <= a4x - b4x) AND ( xpos - ypos >= a4x - b4x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a4x + b4x - 115) AND ( xpos + ypos <= a4x + b4x + 125) AND ( xpos - ypos <= a4x - b4x - 115) AND ( xpos - ypos >= a4x - b4x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
                                                 
         --Making an 'X' to position 6
         elsif ( ( xpos + ypos >= a6x + b6x) AND ( xpos + ypos <= a6x + b6x + 10) AND ( xpos - ypos <= a6x - b6x) AND ( xpos - ypos >= a6x - b6x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a6x + b6x - 115) AND ( xpos + ypos <= a6x + b6x + 125) AND ( xpos - ypos <= a6x - b6x - 115) AND ( xpos - ypos >= a6x - b6x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');      
         --Making an 'X' to position 7
         elsif ( ( xpos + ypos >= a7x + b7x) AND ( xpos + ypos <= a7x + b7x + 10) AND ( xpos - ypos <= a7x - b7x) AND ( xpos - ypos >= a7x - b7x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a7x + b7x - 115) AND ( xpos + ypos <= a7x + b7x + 125) AND ( xpos - ypos <= a7x - b7x - 115) AND ( xpos - ypos >= a7x - b7x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');                                      
 
          --Putting 'O's into positions 1,3,5 and 9
          --Making an 'O' into 1
         elsif ( ((xpos-a1o)*(xpos-a1o) +(ypos-b1o)*(ypos-b1o)) >=50*50 AND ((xpos-a1o)*(xpos-a1o) +(ypos-b1o)*(ypos-b1o) <= 55*55)   ) then
                                                  R := (others => '1');
                                                            G := (others => '1');
                                                            B := (others => '1');
          --Making an 'O' into 3
         elsif ( ((xpos-a3o)*(xpos-a3o) +(ypos-b3o)*(ypos-b3o)) >=50*50 AND ((xpos-a3o)*(xpos-a3o) +(ypos-b3o)*(ypos-b3o) <= 55*55)   ) then
                                                   R := (others => '1');
                                                             G := (others => '1');
                                                             B := (others => '1');                                        
  
          --Making an 'O' into 5
         elsif ( ((xpos-a5o)*(xpos-a5o) +(ypos-b5o)*(ypos-b5o)) >=50*50 AND ((xpos-a5o)*(xpos-a5o) +(ypos-b5o)*(ypos-b5o) <= 55*55)   ) then
                                                   R := (others => '1');
                                                             G := (others => '1');
                                                             B := (others => '1');
          --Making an 'O' into 9
         elsif ( ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o)) >=50*50 AND ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o) <= 55*55) ) then
                                                   R := (others => '1');
                                                             G := (others => '1');
                                                             B := (others => '1');
         end if;
      return B & G & R;
 end draw_xox3;
--FUNCTION 3 ENDS 
 
 --This function draws X :: 1 3 6 7 and O :: 2 4 5 8 9
function draw_xox4(xpos,ypos : integer) return STD_LOGIC_VECTOR is          

VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);

begin
         --Very Top Line
         if ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 10) ) then
                              R := (others => '0');
                              G := (others => '1');
                              B := (others => '0');  
         --Very Right line
         elsif ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                              R := (others => '0');
                                              G := (others => '1');
                                              B := (others => '0');  
         --Very Left line
         elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                              R := (others => '0');
                                              G := (others => '1');
                                              B := (others => '0');
         --Very Bottom Line
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 500 -10 AND ypos < table_y + 500) ) then
                                              R := (others => '0');
                                              G := (others => '1');
                                              B := (others => '0');                             
         --4 Intermediate Lines                             
            --2 vertical Lines
               --Left Vertical
         elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                              R := (others => '0');
                                              G := (others => '1');
                                              B := (others => '0');            
               --Right Vertical                            
         elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0'); 
                                               
                                               
            --2 horizontal Lines
               --Upper Horizontal
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
                                                R := (others => '0');
                                                G := (others => '1');
                                                B := (others => '0');            
               --Bottom Horizontal                            
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
                                                 R := (others => '0');
                                                 G := (others => '1');
                                                 B := (others => '0');       
         --Table ends
         
         --Here making X's and 'o's begins
         
         --Putting 'X's into positions 1,3,6 and 7
         --Making an 'X' to position 1
         elsif ( ( xpos + ypos >= a1x + b1x) AND ( xpos + ypos <= a1x + b1x + 10) AND ( xpos - ypos <= a1x - b1x) AND ( xpos - ypos >= a1x - b1x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a1x + b1x - 115) AND ( xpos + ypos <= a1x + b1x + 125) AND ( xpos - ypos <= a1x - b1x - 115) AND ( xpos - ypos >= a1x - b1x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');                                                                                                                                
         --Making an 'X' to position 3
         elsif ( ( xpos + ypos >= a3x + b3x) AND ( xpos + ypos <= a3x + b3x + 10) AND ( xpos - ypos <= a3x - b3x) AND ( xpos - ypos >= a3x - b3x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a3x + b3x - 115) AND ( xpos + ypos <= a3x + b3x + 125) AND ( xpos - ypos <= a3x - b3x - 115) AND ( xpos - ypos >= a3x - b3x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');     
 
         --Making an 'X' to position 7
         elsif ( ( xpos + ypos >= a7x + b7x) AND ( xpos + ypos <= a7x + b7x + 10) AND ( xpos - ypos <= a7x - b7x) AND ( xpos - ypos >= a7x - b7x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a7x + b7x - 115) AND ( xpos + ypos <= a7x + b7x + 125) AND ( xpos - ypos <= a7x - b7x - 115) AND ( xpos - ypos >= a7x - b7x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
                                                 
         --Making an 'X' to position 6
         elsif ( ( xpos + ypos >= a6x + b6x) AND ( xpos + ypos <= a6x + b6x + 10) AND ( xpos - ypos <= a6x - b6x) AND ( xpos - ypos >= a6x - b6x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a6x + b6x - 115) AND ( xpos + ypos <= a6x + b6x + 125) AND ( xpos - ypos <= a6x - b6x - 115) AND ( xpos - ypos >= a6x - b6x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');                                        
 
          --Putting 'O's into positions 2,4,5,8 and 9
          --Making an 'O' into 2
         elsif ( ((xpos-a2o)*(xpos-a2o) +(ypos-b2o)*(ypos-b2o)) >=50*50 AND ((xpos-a2o)*(xpos-a2o) +(ypos-b2o)*(ypos-b2o) <= 55*55)   ) then
                                                  R := (others => '1');
                                                            G := (others => '1');
                                                            B := (others => '1');
          --Making an 'O' into 4
         elsif ( ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o)) >=50*50 AND ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o) <= 55*55)   ) then
                                                   R := (others => '1');
                                                             G := (others => '1');
                                                             B := (others => '1');                                        
  
          --Making an 'O' into 5
         elsif ( ((xpos-a5o)*(xpos-a5o) +(ypos-b5o)*(ypos-b5o)) >=50*50 AND ((xpos-a5o)*(xpos-a5o) +(ypos-b5o)*(ypos-b5o) <= 55*55)   ) then
                                                   R := (others => '1');
                                                             G := (others => '1');
                                                             B := (others => '1');
 
          --Making an 'O' into 8
         elsif ( ((xpos-a8o)*(xpos-a8o) +(ypos-b8o)*(ypos-b8o)) >=50*50 AND ((xpos-a8o)*(xpos-a8o) +(ypos-b8o)*(ypos-b8o) <= 55*55)   ) then
                                                   R := (others => '1');
                                                   G := (others => '1');
                                                   B := (others => '1');
          --Making an 'O' into 9
         elsif ( ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o)) >=50*50 AND ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o) <= 55*55) ) then
                                                   R := (others => '1');
                                                             G := (others => '1');
                                                             B := (others => '1');
         end if;
      return B & G & R;
 end draw_xox4;
--FUNCTION 4 ENDS 

function draw_xox5(xpos,ypos : integer) return STD_LOGIC_VECTOR is
 
 VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
 
 begin
         --Very Top Line
         if ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 10) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');  
         --Very Right line
         elsif ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');  
         --Very Left line
         elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');
         --Very Bottom Line
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 500 -10 AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');                             
         --4 Intermediate Lines                             
            --2 vertical Lines
               --Left Vertical
         elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');            
               --Right Vertical                            
         elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                                R := (others => '0');
                                                G := (others => '1');
                                                B := (others => '0'); 
                                                
                                                
            --2 horizontal Lines
               --Upper Horizontal
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
                                                 R := (others => '0');
                                                 G := (others => '1');
                                                 B := (others => '0');            
               --Bottom Horizontal                            
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
                                                  R := (others => '0');
                                                  G := (others => '1');
                                                  B := (others => '0');       
         --Table ends
         
         --Here making X's and 'o's begins
     --Making an 'X' to position 2
                  elsif ( ( xpos + ypos >= a2x + b2x) AND ( xpos + ypos <= a2x + b2x + 10) AND ( xpos - ypos <= a2x - b2x) AND ( xpos - ypos >= a2x - b2x - 240) ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a2x + b2x - 115) AND ( xpos + ypos <= a2x + b2x + 125) AND ( xpos - ypos <= a2x - b2x - 115) AND ( xpos - ypos >= a2x - b2x - 125)  ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0');                                                                                                                                
          --Making an 'X' to position 3
                  elsif ( ( xpos + ypos >= a3x + b3x) AND ( xpos + ypos <= a3x + b3x + 10) AND ( xpos - ypos <= a3x - b3x) AND ( xpos - ypos >= a3x - b3x - 240) ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a3x + b3x - 115) AND ( xpos + ypos <= a3x + b3x + 125) AND ( xpos - ypos <= a3x - b3x - 115) AND ( xpos - ypos >= a3x - b3x - 125)  ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0');       
 --Making an 'X' to position 5
                                                                    elsif ( ( xpos + ypos >= a5x + b5x) AND ( xpos + ypos <= a5x + b5x + 10) AND ( xpos - ypos <= a5x - b5x) AND ( xpos - ypos >= a5x - b5x - 240) ) then
                                                                                                             R := (others => '1');
                                                                                                             G := (others => '0');
                                                                                                             B := (others => '0'); 
                                                                    elsif ( ( xpos + ypos >= a5x + b5x - 115) AND ( xpos + ypos <= a5x + b5x + 125) AND ( xpos - ypos <= a5x - b5x - 115) AND ( xpos - ypos >= a5x - b5x - 125)  ) then
                                                                                                             R := (others => '1');
                                                                                                             G := (others => '0');
                                                                                                             B := (others => '0');     
 --Making an 'X' to position 7
                                                                                                                      elsif ( ( xpos + ypos >= a7x + b7x) AND ( xpos + ypos <= a7x + b7x + 10) AND ( xpos - ypos <= a7x - b7x) AND ( xpos - ypos >= a7x - b7x - 240) ) then
                                                                                                                                                               R := (others => '1');
                                                                                                                                                               G := (others => '0');
                                                                                                                                                               B := (others => '0'); 
                                                                                                                      elsif ( ( xpos + ypos >= a7x + b7x - 115) AND ( xpos + ypos <= a7x + b7x + 125) AND ( xpos - ypos <= a7x - b7x - 115) AND ( xpos - ypos >= a7x - b7x - 125)  ) then
                                                                                                                                                               R := (others => '1');
G := (others => '0');
--Making an 'O' into 1
elsif ( ((xpos-a1o)*(xpos-a1o) +(ypos-b1o)*(ypos-b1o)) >=50*50 AND ((xpos-a1o)*(xpos-a1o) +(ypos-b1o)*(ypos-b1o) <= 55*55)   ) then
R := (others => '1');
G := (others => '1');
B := (others => '1');
                                 
--Making an 'O' into 4
elsif ( ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o)) >=50*50 AND ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o) <= 55*55)   ) then
R := (others => '1');
G := (others => '1');
B := (others => '1');   

--Making an 'O' into 6
elsif ( ((xpos-a6o)*(xpos-a6o) +(ypos-b6o)*(ypos-b6o)) >=50*50 AND ((xpos-a6o)*(xpos-a6o) +(ypos-b6o)*(ypos-b6o) <= 55*55)   ) then
R := (others => '1');
G := (others => '1');
B := (others => '1');



--Making an 'O' into 8
elsif ( ((xpos-a8o)*(xpos-a8o) +(ypos-b8o)*(ypos-b8o)) >=50*50 AND ((xpos-a8o)*(xpos-a8o) +(ypos-b8o)*(ypos-b8o) <= 55*55)   ) then
R := (others => '1');
G := (others => '1');
B := (others => '1');
--Making an 'O' into 9
elsif ( ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o)) >=50*50 AND ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o) <= 55*55) ) then
R := (others => '1');
G := (others => '1');
B := (others => '1');

 
        end if;
      return B & G & R;
  end draw_xox5;
--FUNCTION 5 ENDS

function draw_xox6(xpos,ypos : integer) return STD_LOGIC_VECTOR is
 
 VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
 
 begin
         --Very Top Line
         if ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 10) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');  
         --Very Right line
         elsif ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');  
         --Very Left line
         elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');
         --Very Bottom Line
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 500 -10 AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');                             
         --4 Intermediate Lines                             
            --2 vertical Lines
               --Left Vertical
         elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');            
               --Right Vertical                            
         elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                                R := (others => '0');
                                                G := (others => '1');
                                                B := (others => '0'); 
                                                
                                                
            --2 horizontal Lines
               --Upper Horizontal
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
                                                 R := (others => '0');
                                                 G := (others => '1');
                                                 B := (others => '0');            
               --Bottom Horizontal                            
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
                                                  R := (others => '0');
                                                  G := (others => '1');
                                                  B := (others => '0');       
         --Table ends
         
         --Here making X's and 'o's begins
         
         --Putting 'X's into positions 2,4,5,7 and 9
                                                                                                                                  
         --Making an 'X' to position 5
         elsif ( ( xpos + ypos >= a5x + b5x) AND ( xpos + ypos <= a5x + b5x + 10) AND ( xpos - ypos <= a5x - b5x) AND ( xpos - ypos >= a5x - b5x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a5x + b5x - 115) AND ( xpos + ypos <= a5x + b5x + 125) AND ( xpos - ypos <= a5x - b5x - 115) AND ( xpos - ypos >= a5x - b5x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');     
 

                                                 
         --Making an 'X' to position 7
         elsif ( ( xpos + ypos >= a7x + b7x) AND ( xpos + ypos <= a7x + b7x + 10) AND ( xpos - ypos <= a7x - b7x) AND ( xpos - ypos >= a7x - b7x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a7x + b7x - 115) AND ( xpos + ypos <= a7x + b7x + 125) AND ( xpos - ypos <= a7x - b7x - 115) AND ( xpos - ypos >= a7x - b7x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');    
                                                  
          --Making an 'X' to position 3
         elsif ( ( xpos + ypos >= a3x + b3x) AND ( xpos + ypos <= a3x + b3x + 10) AND ( xpos - ypos <= a3x - b3x) AND ( xpos - ypos >= a3x - b3x - 240) ) then
                                                    R := (others => '1');
                                                    G := (others => '0');
                                                    B := (others => '0'); 
         elsif ( ( xpos + ypos >= a3x + b3x - 115) AND ( xpos + ypos <= a3x + b3x + 125) AND ( xpos - ypos <= a3x - b3x - 115) AND ( xpos - ypos >= a3x - b3x - 125)  ) then
                                                    R := (others => '1');
                                                    G := (others => '0');
                                                    B := (others => '0');    

          --Putting 'O's into positions 1,3,6 and 8
          --Making an 'O' into 1
          elsif ( ((xpos-a1o)*(xpos-a1o) +(ypos-b1o)*(ypos-b1o)) >=50*50 AND ((xpos-a1o)*(xpos-a1o) +(ypos-b1o)*(ypos-b1o) <= 55*55)   ) then
          R := (others => '1');
          G := (others => '1');
          B := (others => '1');
         --Making an 'O' into 2
        elsif ( ((xpos-a2o)*(xpos-a2o) +(ypos-b2o)*(ypos-b2o)) >=50*50 AND ((xpos-a2o)*(xpos-a2o) +(ypos-b2o)*(ypos-b2o) <= 55*55)   ) then
        R := (others => '1');
        G := (others => '1');
        B := (others => '1');                              
          --Making an 'O' into 4
          elsif ( ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o)) >=50*50 AND ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o) <= 55*55)   ) then
          R := (others => '1');
          G := (others => '1');
          B := (others => '1');   
          
          --Making an 'O' into 6
          elsif ( ((xpos-a6o)*(xpos-a6o) +(ypos-b6o)*(ypos-b6o)) >=50*50 AND ((xpos-a6o)*(xpos-a6o) +(ypos-b6o)*(ypos-b6o) <= 55*55)   ) then
          R := (others => '1');
          G := (others => '1');
          B := (others => '1');
          
          
          
          --Making an 'O' into 8
          elsif ( ((xpos-a8o)*(xpos-a8o) +(ypos-b8o)*(ypos-b8o)) >=50*50 AND ((xpos-a8o)*(xpos-a8o) +(ypos-b8o)*(ypos-b8o) <= 55*55)   ) then
          R := (others => '1');
          G := (others => '1');
          B := (others => '1');
          --Making an 'O' into 9
          elsif ( ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o)) >=50*50 AND ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o) <= 55*55) ) then
          R := (others => '1');
          G := (others => '1');
          B := (others => '1');
         end if;
      return B & G & R;
  end draw_xox6;
----FUNCTION 2 ENDS


function draw_xox7(xpos,ypos : integer) return STD_LOGIC_VECTOR is
 
 VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
 
 begin
         --Very Top Line
         if ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 10) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');  
         --Very Right line
         elsif ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');  
         --Very Left line
         elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');
         --Very Bottom Line
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 500 -10 AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');                             
         --4 Intermediate Lines                             
            --2 vertical Lines
               --Left Vertical
         elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');            
               --Right Vertical                            
         elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                                R := (others => '0');
                                                G := (others => '1');
                                                B := (others => '0'); 
                                                
                                                
            --2 horizontal Lines
               --Upper Horizontal
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
                                                 R := (others => '0');
                                                 G := (others => '1');
                                                 B := (others => '0');            
               --Bottom Horizontal                            
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
                                                  R := (others => '0');
                                                  G := (others => '1');
                                                  B := (others => '0');       
         --Table ends
         
         --Here making X's and 'o's begins
--Making an 'X' to position 1
                  elsif ( ( xpos + ypos >= a1x + b1x) AND ( xpos + ypos <= a1x + b1x + 10) AND ( xpos - ypos <= a1x - b1x) AND ( xpos - ypos >= a1x - b1x - 240) ) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '0'); 
elsif ( ( xpos + ypos >= a1x + b1x - 115) AND ( xpos + ypos <= a1x + b1x + 125) AND ( xpos - ypos <= a1x - b1x - 115) AND ( xpos - ypos >= a1x - b1x - 125)  ) then
                           R := (others => '1');
                           G := (others => '0');
                           B := (others => '0');      
--Making an 'X' to position 3
                                    elsif ( ( xpos + ypos >= a3x + b3x) AND ( xpos + ypos <= a3x + b3x + 10) AND ( xpos - ypos <= a3x - b3x) AND ( xpos - ypos >= a3x - b3x - 240) ) then
                                                                             R := (others => '1');
                                                                             G := (others => '0');
                                                                             B := (others => '0'); 
                                    elsif ( ( xpos + ypos >= a3x + b3x - 115) AND ( xpos + ypos <= a3x + b3x + 125) AND ( xpos - ypos <= a3x - b3x - 115) AND ( xpos - ypos >= a3x - b3x - 125)  ) then
                                                                             R := (others => '1');
                                                                             G := (others => '0');
                                                         B := (others => '0');   
		 
--Making an 'X' to position 5
elsif ( ( xpos + ypos >= a5x + b5x) AND ( xpos + ypos <= a5x + b5x + 10) AND ( xpos - ypos <= a5x - b5x) AND ( xpos - ypos >= a5x - b5x - 240) ) then
R := (others => '1');
G := (others => '0');
B := (others => '0'); 
elsif ( ( xpos + ypos >= a5x + b5x - 115) AND ( xpos + ypos <= a5x + b5x + 125) AND ( xpos - ypos <= a5x - b5x - 115) AND ( xpos - ypos >= a5x - b5x - 125)  ) then
R := (others => '1');
G := (others => '0');
B := (others => '0');   
--Making an 'X' to position 8
         elsif ( ( xpos + ypos >= a8x + b8x) AND ( xpos + ypos <= a8x + b8x + 10) AND ( xpos - ypos <= a8x - b8x) AND ( xpos - ypos >= a8x - b8x - 240) ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0'); 
         elsif ( ( xpos + ypos >= a8x + b8x - 115) AND ( xpos + ypos <= a8x + b8x + 125) AND ( xpos - ypos <= a8x - b8x - 115) AND ( xpos - ypos >= a8x - b8x - 125)  ) then
                                                  R := (others => '1');
                                                  G := (others => '0');
                                                  B := (others => '0');  
                                                  
 --Making an 'O' into 2
                                                           elsif ( ((xpos-a2o)*(xpos-a2o) +(ypos-b2o)*(ypos-b2o)) >=50*50 AND ((xpos-a2o)*(xpos-a2o) +(ypos-b2o)*(ypos-b2o) <= 55*55)   ) then
                                                                                                    R := (others => '1');
                                                                                                              G := (others => '1');
                                                                                                              B := (others => '1');
                                                             
                                                    --Making an 'O' into 4
                                                           elsif ( ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o)) >=50*50 AND ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o) <= 55*55)   ) then
                                                                                                     R := (others => '1');
                                                                                                               G := (others => '1');
                                                                                                               B := (others => '1');   
                    
                                                    --Making an 'O' into 6
                                                           elsif ( ((xpos-a6o)*(xpos-a6o) +(ypos-b6o)*(ypos-b6o)) >=50*50 AND ((xpos-a6o)*(xpos-a6o) +(ypos-b6o)*(ypos-b6o) <= 55*55)   ) then
                                                                                                     R := (others => '1');
                                                                                                               G := (others => '1');
                                                                                                               B := (others => '1');
                                                   
                                                  --Making an 'O' into 7
                                                           elsif ( ((xpos-a7o)*(xpos-a7o) +(ypos-b7o)*(ypos-b7o)) >=50*50 AND ((xpos-a7o)*(xpos-a7o) +(ypos-b7o)*(ypos-b7o) <= 55*55)   ) then
                                                                                                     R := (others => '1');
                                                                                                     G := (others => '1');
                                                                                                     B := (others => '1');
                                 
                                                  --Making an 'O' into 9
                                                           elsif ( ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o)) >=50*50 AND ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o) <= 55*55) ) then
                                                                                                     R := (others => '1');
                                                                                                               G := (others => '1');
                                                                                                               B := (others => '1');
                                                  
                                                  
                                                  
end if;
      return B & G & R;
  end draw_xox7;
----FUNCTION 7 ENDS


function draw_xox8(xpos,ypos : integer) return STD_LOGIC_VECTOR is
 
 VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
 
 begin
         --Very Top Line
         if ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 10) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');  
         --Very Right line
         elsif ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');  
         --Very Left line
         elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');
         --Very Bottom Line
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 500 -10 AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');                             
         --4 Intermediate Lines                             
            --2 vertical Lines
               --Left Vertical
         elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');            
               --Right Vertical                            
         elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                                R := (others => '0');
                                                G := (others => '1');
                                                B := (others => '0'); 
                                                
                                                
            --2 horizontal Lines
               --Upper Horizontal
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
                                                 R := (others => '0');
                                                 G := (others => '1');
                                                 B := (others => '0');            
               --Bottom Horizontal                            
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
                                                  R := (others => '0');
                                                  G := (others => '1');
                                                  B := (others => '0');       
         --Table ends
         
         --Here making X's and 'o's begins
         --Making an 'X' to position 1
                  elsif ( ( xpos + ypos >= a1x + b1x) AND ( xpos + ypos <= a1x + b1x + 10) AND ( xpos - ypos <= a1x - b1x) AND ( xpos - ypos >= a1x - b1x - 240) ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a1x + b1x - 115) AND ( xpos + ypos <= a1x + b1x + 125) AND ( xpos - ypos <= a1x - b1x - 115) AND ( xpos - ypos >= a1x - b1x - 125)  ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0');        
         --Making an 'X' to position 2
                  elsif ( ( xpos + ypos >= a2x + b2x) AND ( xpos + ypos <= a2x + b2x + 10) AND ( xpos - ypos <= a2x - b2x) AND ( xpos - ypos >= a2x - b2x - 240) ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a2x + b2x - 115) AND ( xpos + ypos <= a2x + b2x + 125) AND ( xpos - ypos <= a2x - b2x - 115) AND ( xpos - ypos >= a2x - b2x - 125)  ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0');      
--Making an 'X' to position 5
                                                            elsif ( ( xpos + ypos >= a5x + b5x) AND ( xpos + ypos <= a5x + b5x + 10) AND ( xpos - ypos <= a5x - b5x) AND ( xpos - ypos >= a5x - b5x - 240) ) then
                                                                                                     R := (others => '1');
                                                                                                     G := (others => '0');
                                                                                                     B := (others => '0'); 
                                                            elsif ( ( xpos + ypos >= a5x + b5x - 115) AND ( xpos + ypos <= a5x + b5x + 125) AND ( xpos - ypos <= a5x - b5x - 115) AND ( xpos - ypos >= a5x - b5x - 125)  ) then
                                                                                                     R := (others => '1');
                                                                                                     G := (others => '0');
                                                                                                     B := (others => '0');     
                                                    --Making an 'X' to position 6
                                                            elsif ( ( xpos + ypos >= a6x + b6x) AND ( xpos + ypos <= a6x + b6x + 10) AND ( xpos - ypos <= a6x - b6x) AND ( xpos - ypos >= a6x - b6x - 240) ) then
                                                                                                     R := (others => '1');
                                                                                                     G := (others => '0');
                                                                                                     B := (others => '0'); 
                                                            elsif ( ( xpos + ypos >= a6x + b6x - 115) AND ( xpos + ypos <= a6x + b6x + 125) AND ( xpos - ypos <= a6x - b6x - 115) AND ( xpos - ypos >= a6x - b6x - 125)  ) then
                                                                                                     R := (others => '1');
                                                                                                     G := (others => '0');
                                                                                                     B := (others => '0');                        
                                                    
                                                   --Making an 'X' to position 7
                                                            elsif ( ( xpos + ypos >= a7x + b7x) AND ( xpos + ypos <= a7x + b7x + 10) AND ( xpos - ypos <= a7x - b7x) AND ( xpos - ypos >= a7x - b7x - 240) ) then
                                                                                                     R := (others => '1');
                                                                                                     G := (others => '0');
                                                                                                     B := (others => '0'); 
                                                            elsif ( ( xpos + ypos >= a7x + b7x - 115) AND ( xpos + ypos <= a7x + b7x + 125) AND ( xpos - ypos <= a7x - b7x - 115) AND ( xpos - ypos >= a7x - b7x - 125)  ) then
                                                                                                     R := (others => '1');
                                                                                                     G := (others => '0');
 --Making an 'O' into 3
                                                                                                              elsif ( ((xpos-a3o)*(xpos-a3o) +(ypos-b3o)*(ypos-b3o)) >=50*50 AND ((xpos-a3o)*(xpos-a3o) +(ypos-b3o)*(ypos-b3o) <= 55*55)   ) then
                                                                                                                                                        R := (others => '1');
                                                                                                                                                                  G := (others => '1');
                                                                                                                                                                  B := (others => '1');                                        
                                                                                                       --Making an 'O' into 4
                                                                                                              elsif ( ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o)) >=50*50 AND ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o) <= 55*55)   ) then
                                                                                                                                                        R := (others => '1');
                                                                                                                                                                  G := (others => '1');
                                                                                                                                                                  B := (others => '1');   
      --Making an 'O' into 8
                                                                                                                                                                           elsif ( ((xpos-a8o)*(xpos-a8o) +(ypos-b8o)*(ypos-b8o)) >=50*50 AND ((xpos-a8o)*(xpos-a8o) +(ypos-b8o)*(ypos-b8o) <= 55*55)   ) then
                                                                                                                                                                                                                     R := (others => '1');
                                                                                                                                                                                                                     G := (others => '1');
                                                                                                                                                                                                                     B := (others => '1');
                                                                                                                                                                  --Making an 'O' into 9
                                                                                                                                                                           elsif ( ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o)) >=50*50 AND ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o) <= 55*55) ) then
                                                                                                                                                                                                                     R := (others => '1');
                                                                                                                                                                                                                               G := (others => '1');
                                                                                                                                                                                                                               B := (others => '1');
      end if;
      return B & G & R;
  end draw_xox8;
--FUNCTION 8 ENDS


function draw_xox9(xpos,ypos : integer) return STD_LOGIC_VECTOR is
 
 VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
 
 begin
         --Very Top Line
         if ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 10) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');  
         --Very Right line
         elsif ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');  
         --Very Left line
         elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');
         --Very Bottom Line
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 500 -10 AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');                             
         --4 Intermediate Lines                             
            --2 vertical Lines
               --Left Vertical
         elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');            
               --Right Vertical                            
         elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                                R := (others => '0');
                                                G := (others => '1');
                                                B := (others => '0'); 
                                                
                                                
            --2 horizontal Lines
               --Upper Horizontal
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
                                                 R := (others => '0');
                                                 G := (others => '1');
                                                 B := (others => '0');            
               --Bottom Horizontal                            
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
                                                  R := (others => '0');
                                                  G := (others => '1');
                                                  B := (others => '0');       
         --Table ends
         
         --Here making X's and 'o's begins
         
                  --Making an 'X' to position 1
                  elsif ( ( xpos + ypos >= a1x + b1x) AND ( xpos + ypos <= a1x + b1x + 10) AND ( xpos - ypos <= a1x - b1x) AND ( xpos - ypos >= a1x - b1x - 240) ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a1x + b1x - 115) AND ( xpos + ypos <= a1x + b1x + 125) AND ( xpos - ypos <= a1x - b1x - 115) AND ( xpos - ypos >= a1x - b1x - 125)  ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0');        
         --Making an 'X' to position 2
                  elsif ( ( xpos + ypos >= a2x + b2x) AND ( xpos + ypos <= a2x + b2x + 10) AND ( xpos - ypos <= a2x - b2x) AND ( xpos - ypos >= a2x - b2x - 240) ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a2x + b2x - 115) AND ( xpos + ypos <= a2x + b2x + 125) AND ( xpos - ypos <= a2x - b2x - 115) AND ( xpos - ypos >= a2x - b2x - 125)  ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0');      
                                                           
                                                    --Making an 'X' to position 6
                                                            elsif ( ( xpos + ypos >= a6x + b6x) AND ( xpos + ypos <= a6x + b6x + 10) AND ( xpos - ypos <= a6x - b6x) AND ( xpos - ypos >= a6x - b6x - 240) ) then
                                                                                                     R := (others => '1');
                                                                                                     G := (others => '0');
                                                                                                     B := (others => '0'); 
                                                            elsif ( ( xpos + ypos >= a6x + b6x - 115) AND ( xpos + ypos <= a6x + b6x + 125) AND ( xpos - ypos <= a6x - b6x - 115) AND ( xpos - ypos >= a6x - b6x - 125)  ) then
                                                                                                     R := (others => '1');
                                                                                                     G := (others => '0');
                                                                                                     B := (others => '0');                        
                                                    
                                                   --Making an 'X' to position 7
                                                            elsif ( ( xpos + ypos >= a7x + b7x) AND ( xpos + ypos <= a7x + b7x + 10) AND ( xpos - ypos <= a7x - b7x) AND ( xpos - ypos >= a7x - b7x - 240) ) then
                                                                                                     R := (others => '1');
                                                                                                     G := (others => '0');
                                                                                                     B := (others => '0'); 
                                                            elsif ( ( xpos + ypos >= a7x + b7x - 115) AND ( xpos + ypos <= a7x + b7x + 125) AND ( xpos - ypos <= a7x - b7x - 115) AND ( xpos - ypos >= a7x - b7x - 125)  ) then
                                                                                                     R := (others => '1');
                                                                                                     G := (others => '0');
 --Making an 'O' into 3
                                                                                                              elsif ( ((xpos-a3o)*(xpos-a3o) +(ypos-b3o)*(ypos-b3o)) >=50*50 AND ((xpos-a3o)*(xpos-a3o) +(ypos-b3o)*(ypos-b3o) <= 55*55)   ) then
                                                                                                                                                        R := (others => '1');
                                                                                                                                                                  G := (others => '1');
                                                                                                                                                                  B := (others => '1');                                        
                                                                                                       --Making an 'O' into 4
                                                                                                              elsif ( ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o)) >=50*50 AND ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o) <= 55*55)   ) then
                                                                                                                                                        R := (others => '1');
                                                                                                                                                                  G := (others => '1');
                                                                                                                                                                  B := (others => '1');   
                                                                                                                                                                  --Making an 'O' into 5
                                                                                                                                                                           elsif ( ((xpos-a5o)*(xpos-a5o) +(ypos-b5o)*(ypos-b5o)) >=50*50 AND ((xpos-a5o)*(xpos-a5o) +(ypos-b5o)*(ypos-b5o) <= 55*55)   ) then
                                                                                                                                                                                                                     R := (others => '1');
                                                                                                                                                                                                                               G := (others => '1');
                                                                                                                                                                                                                               B := (others => '1');
      --Making an 'O' into 8
                                                                                                                                                                           elsif ( ((xpos-a8o)*(xpos-a8o) +(ypos-b8o)*(ypos-b8o)) >=50*50 AND ((xpos-a8o)*(xpos-a8o) +(ypos-b8o)*(ypos-b8o) <= 55*55)   ) then
                                                                                                                                                                                                                     R := (others => '1');
                                                                                                                                                                                                                     G := (others => '1');
                                                                                                                                                                                                                     B := (others => '1');
                                                                                                                                                                  --Making an 'O' into 9
                                                                                                                                                                           elsif ( ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o)) >=50*50 AND ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o) <= 55*55) ) then
                                                                                                                                                                                                                     R := (others => '1');
                                                                                                                                                                                                                               G := (others => '1');
                                                                                                                                                                                                                               B := (others => '1');
          end if;
      return B & G & R;
  end draw_xox9;
--FUNCTION 9 ENDS


function draw_xox10(xpos,ypos : integer) return STD_LOGIC_VECTOR is
 
 VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
 
 begin
         --Very Top Line
         if ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 10) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');  
         --Very Right line
         elsif ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');  
         --Very Left line
         elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');
         --Very Bottom Line
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 500 -10 AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');                             
         --4 Intermediate Lines                             
            --2 vertical Lines
               --Left Vertical
         elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');            
               --Right Vertical                            
         elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                                R := (others => '0');
                                                G := (others => '1');
                                                B := (others => '0'); 
                                                
                                                
            --2 horizontal Lines
               --Upper Horizontal
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
                                                 R := (others => '0');
                                                 G := (others => '1');
                                                 B := (others => '0');            
               --Bottom Horizontal                            
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
                                                  R := (others => '0');
                                                  G := (others => '1');
                                                  B := (others => '0');       
         --Table ends
         
         --Here making X's and 'o's begins
         
         --Making an 'X' to position 1
                  elsif ( ( xpos + ypos >= a1x + b1x) AND ( xpos + ypos <= a1x + b1x + 10) AND ( xpos - ypos <= a1x - b1x) AND ( xpos - ypos >= a1x - b1x - 240) ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a1x + b1x - 115) AND ( xpos + ypos <= a1x + b1x + 125) AND ( xpos - ypos <= a1x - b1x - 115) AND ( xpos - ypos >= a1x - b1x - 125)  ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0');        
         --Making an 'X' to position 2
                  elsif ( ( xpos + ypos >= a2x + b2x) AND ( xpos + ypos <= a2x + b2x + 10) AND ( xpos - ypos <= a2x - b2x) AND ( xpos - ypos >= a2x - b2x - 240) ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a2x + b2x - 115) AND ( xpos + ypos <= a2x + b2x + 125) AND ( xpos - ypos <= a2x - b2x - 115) AND ( xpos - ypos >= a2x - b2x - 125)  ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0');                                                                                                                                
          --Making an 'X' to position 3
                  elsif ( ( xpos + ypos >= a3x + b3x) AND ( xpos + ypos <= a3x + b3x + 10) AND ( xpos - ypos <= a3x - b3x) AND ( xpos - ypos >= a3x - b3x - 240) ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a3x + b3x - 115) AND ( xpos + ypos <= a3x + b3x + 125) AND ( xpos - ypos <= a3x - b3x - 115) AND ( xpos - ypos >= a3x - b3x - 125)  ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0');   
                  
         --Making an 'X' to position 4
                  elsif ( ( xpos + ypos >= a4x + b4x) AND ( xpos + ypos <= a4x + b4x + 10) AND ( xpos - ypos <= a4x - b4x) AND ( xpos - ypos >= a4x - b4x - 240) ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a4x + b4x - 115) AND ( xpos + ypos <= a4x + b4x + 125) AND ( xpos - ypos <= a4x - b4x - 115) AND ( xpos - ypos >= a4x - b4x - 125)  ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  
         --Making an 'X' to position 5
                  elsif ( ( xpos + ypos >= a5x + b5x) AND ( xpos + ypos <= a5x + b5x + 10) AND ( xpos - ypos <= a5x - b5x) AND ( xpos - ypos >= a5x - b5x - 240) ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a5x + b5x - 115) AND ( xpos + ypos <= a5x + b5x + 125) AND ( xpos - ypos <= a5x - b5x - 115) AND ( xpos - ypos >= a5x - b5x - 125)  ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0');     
          --Making an 'X' to position 6
                  elsif ( ( xpos + ypos >= a6x + b6x) AND ( xpos + ypos <= a6x + b6x + 10) AND ( xpos - ypos <= a6x - b6x) AND ( xpos - ypos >= a6x - b6x - 240) ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a6x + b6x - 115) AND ( xpos + ypos <= a6x + b6x + 125) AND ( xpos - ypos <= a6x - b6x - 115) AND ( xpos - ypos >= a6x - b6x - 125)  ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0');                        
          
         --Making an 'X' to position 7
                  elsif ( ( xpos + ypos >= a7x + b7x) AND ( xpos + ypos <= a7x + b7x + 10) AND ( xpos - ypos <= a7x - b7x) AND ( xpos - ypos >= a7x - b7x - 240) ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a7x + b7x - 115) AND ( xpos + ypos <= a7x + b7x + 125) AND ( xpos - ypos <= a7x - b7x - 115) AND ( xpos - ypos >= a7x - b7x - 125)  ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
         --Making an 'X' to position 8
                  elsif ( ( xpos + ypos >= a8x + b8x) AND ( xpos + ypos <= a8x + b8x + 10) AND ( xpos - ypos <= a8x - b8x) AND ( xpos - ypos >= a8x - b8x - 240) ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a8x + b8x - 115) AND ( xpos + ypos <= a8x + b8x + 125) AND ( xpos - ypos <= a8x - b8x - 115) AND ( xpos - ypos >= a8x - b8x - 125)  ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0');                                                  B := (others => '0'); 
                                                          
         --Making an 'X' to position 9
                  elsif ( ( xpos + ypos >= a9x + b9x) AND ( xpos + ypos <= a9x + b9x + 10) AND ( xpos - ypos <= a9x - b9x) AND ( xpos - ypos >= a9x - b9x - 240) ) then
                                                             R := (others => '1');
                                                             G := (others => '0');
                                                             B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a9x + b9x - 115) AND ( xpos + ypos <= a9x + b9x + 125) AND ( xpos - ypos <= a9x - b9x - 115) AND ( xpos - ypos >= a9x - b9x - 125)  ) then
                                                             R := (others => '1');
                                                             G := (others => '0');
                                                             B := (others => '0');    
                                           
                                                           
         end if;
      return B & G & R;
  end draw_xox10;
--FUNCTION 2 ENDS


function draw_xox11(xpos,ypos : integer) return STD_LOGIC_VECTOR is
 
 VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
 
 begin
         --Very Top Line
         if ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 10) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');  
         --Very Right line
         elsif ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
            --2 vertical Lines
               --Left Vertical
         elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');            
               --Right Vertical                            
         elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                                R := (others => '0');
                                                G := (others => '1');
                                                B := (others => '0'); 
                                                
                                                
            --2 horizontal Lines
               --Upper Horizontal
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
                                                 R := (others => '0');
                                                 G := (others => '1');
                                                 B := (others => '0');            
               --Bottom Horizontal                            
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
                                                  R := (others => '0');
                                                  G := (others => '1');
                                                  B := (others => '0');       
         --Table ends
         
         --Here making X's and 'o's begins
                                               B := (others => '0');  
         --Very Left line
         elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');
         --Very Bottom Line
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 500 -10 AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');                             
         --4 Intermediate Lines                             
  												  
--Making an 'O' into 1
elsif ( ((xpos-a1o)*(xpos-a1o) +(ypos-b1o)*(ypos-b1o)) >=50*50 AND ((xpos-a1o)*(xpos-a1o) +(ypos-b1o)*(ypos-b1o) <= 55*55)   ) then
         R := (others => '1');
                   G := (others => '1');
                   B := (others => '1');
--Making an 'O' into 2
elsif ( ((xpos-a2o)*(xpos-a2o) +(ypos-b2o)*(ypos-b2o)) >=50*50 AND ((xpos-a2o)*(xpos-a2o) +(ypos-b2o)*(ypos-b2o) <= 55*55)   ) then
         R := (others => '1');
                   G := (others => '1');
                   B := (others => '1');
--Making an 'O' into 3
elsif ( ((xpos-a3o)*(xpos-a3o) +(ypos-b3o)*(ypos-b3o)) >=50*50 AND ((xpos-a3o)*(xpos-a3o) +(ypos-b3o)*(ypos-b3o) <= 55*55)   ) then
          R := (others => '1');
                    G := (others => '1');
                    B := (others => '1');                                        
--Making an 'O' into 4
elsif ( ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o)) >=50*50 AND ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o) <= 55*55)   ) then
          R := (others => '1');
                    G := (others => '1');
                    B := (others => '1');   
--Making an 'O' into 5
elsif ( ((xpos-a5o)*(xpos-a5o) +(ypos-b5o)*(ypos-b5o)) >=50*50 AND ((xpos-a5o)*(xpos-a5o) +(ypos-b5o)*(ypos-b5o) <= 55*55)   ) then
          R := (others => '1');
                    G := (others => '1');
                    B := (others => '1');
--Making an 'O' into 6
elsif ( ((xpos-a6o)*(xpos-a6o) +(ypos-b6o)*(ypos-b6o)) >=50*50 AND ((xpos-a6o)*(xpos-a6o) +(ypos-b6o)*(ypos-b6o) <= 55*55)   ) then
          R := (others => '1');
                    G := (others => '1');
                    B := (others => '1');

--Making an 'O' into 7
elsif ( ((xpos-a7o)*(xpos-a7o) +(ypos-b7o)*(ypos-b7o)) >=50*50 AND ((xpos-a7o)*(xpos-a7o) +(ypos-b7o)*(ypos-b7o) <= 55*55)   ) then
          R := (others => '1');
          G := (others => '1');
          B := (others => '1');

--Making an 'O' into 8
elsif ( ((xpos-a8o)*(xpos-a8o) +(ypos-b8o)*(ypos-b8o)) >=50*50 AND ((xpos-a8o)*(xpos-a8o) +(ypos-b8o)*(ypos-b8o) <= 55*55)   ) then
          R := (others => '1');
          G := (others => '1');
          B := (others => '1');
--Making an 'O' into 9
elsif ( ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o)) >=50*50 AND ((xpos-a9o)*(xpos-a9o) +(ypos-b9o)*(ypos-b9o) <= 55*55) ) then
          R := (others => '1');
                    G := (others => '1');
                    B := (others => '1');
         end if;
      return B & G & R;
  end draw_xox11;
--FUNCTION 11 ENDS


function draw_xox12(xpos,ypos : integer) return STD_LOGIC_VECTOR is
 
 VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
 
 begin
         --Very Top Line
         if ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 10) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');  
         --Very Right line
         elsif ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');  
         --Very Left line
         elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');
         --Very Bottom Line
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 500 -10 AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');                             
         --4 Intermediate Lines                             
            --2 vertical Lines
               --Left Vertical
         elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');            
               --Right Vertical                            
         elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                                R := (others => '0');
                                                G := (others => '1');
                                                B := (others => '0'); 
                                                
                                                
            --2 horizontal Lines
               --Upper Horizontal
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
                                                 R := (others => '0');
                                                 G := (others => '1');
                                                 B := (others => '0');            
               --Bottom Horizontal                            
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
                                                  R := (others => '0');
                                                  G := (others => '1');
                                                  B := (others => '0');       
         --Table ends
         
         --Here making X's and 'o's begins
         
         --Putting 'X's into positions 2,4,5,7 and 9
         --Making an 'X' to position 3
                                             elsif ( ( xpos + ypos >= a3x + b3x) AND ( xpos + ypos <= a3x + b3x + 10) AND ( xpos - ypos <= a3x - b3x) AND ( xpos - ypos >= a3x - b3x - 240) ) then
                                                                                      R := (others => '1');
                                                                                      G := (others => '0');
                                                                                      B := (others => '0'); 
                                             elsif ( ( xpos + ypos >= a3x + b3x - 115) AND ( xpos + ypos <= a3x + b3x + 125) AND ( xpos - ypos <= a3x - b3x - 115) AND ( xpos - ypos >= a3x - b3x - 125)  ) then
                                                                                      R := (others => '1');
                                                                                      G := (others => '0');
                                                                  B := (others => '0');   
                  
         --Making an 'X' to position 5
         elsif ( ( xpos + ypos >= a5x + b5x) AND ( xpos + ypos <= a5x + b5x + 10) AND ( xpos - ypos <= a5x - b5x) AND ( xpos - ypos >= a5x - b5x - 240) ) then
         R := (others => '1');
         G := (others => '0');
         B := (others => '0'); 
         elsif ( ( xpos + ypos >= a5x + b5x - 115) AND ( xpos + ypos <= a5x + b5x + 125) AND ( xpos - ypos <= a5x - b5x - 115) AND ( xpos - ypos >= a5x - b5x - 125)  ) then
         R := (others => '1');
         G := (others => '0');
         B := (others => '0');   
         --Making an 'X' to position 8
                  elsif ( ( xpos + ypos >= a8x + b8x) AND ( xpos + ypos <= a8x + b8x + 10) AND ( xpos - ypos <= a8x - b8x) AND ( xpos - ypos >= a8x - b8x - 240) ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0'); 
                  elsif ( ( xpos + ypos >= a8x + b8x - 115) AND ( xpos + ypos <= a8x + b8x + 125) AND ( xpos - ypos <= a8x - b8x - 115) AND ( xpos - ypos >= a8x - b8x - 125)  ) then
                                                           R := (others => '1');
                                                           G := (others => '0');
                                                           B := (others => '0');  
                                                           --Making an 'X' to position 2
                                                                    elsif ( ( xpos + ypos >= a2x + b2x) AND ( xpos + ypos <= a2x + b2x + 10) AND ( xpos - ypos <= a2x - b2x) AND ( xpos - ypos >= a2x - b2x - 240) ) then
                                                                                                             R := (others => '1');
                                                                                                             G := (others => '0');
                                                                                                             B := (others => '0'); 
                                                                    elsif ( ( xpos + ypos >= a2x + b2x - 115) AND ( xpos + ypos <= a2x + b2x + 125) AND ( xpos - ypos <= a2x - b2x - 115) AND ( xpos - ypos >= a2x - b2x - 125)  ) then
                                                                                                             R := (others => '1');
                                                                                                             G := (others => '0');
                                                                                                             B := (others => '0');   
 --Making an 'X' to position 6
elsif ( ( xpos + ypos >= a6x + b6x) AND ( xpos + ypos <= a6x + b6x + 10) AND ( xpos - ypos <= a6x - b6x) AND ( xpos - ypos >= a6x - b6x - 240) ) then
R := (others => '1');
G := (others => '0');
B := (others => '0'); 
elsif ( ( xpos + ypos >= a6x + b6x - 115) AND ( xpos + ypos <= a6x + b6x + 125) AND ( xpos - ypos <= a6x - b6x - 115) AND ( xpos - ypos >= a6x - b6x - 125)  ) then
R := (others => '1');
G := (others => '0');
B := (others => '0');  
          --Putting 'O's into positions 1,3,6 and 8
          --Making an 'O' into 1
         elsif ( ((xpos-a1o)*(xpos-a1o) +(ypos-b1o)*(ypos-b1o)) >=50*50 AND ((xpos-a1o)*(xpos-a1o) +(ypos-b1o)*(ypos-b1o) <= 55*55)   ) then
                                                  R := (others => '1');
                                                            G := (others => '1');
                                                            B := (others => '1');
  --Making an 'O' into 4
                                                                   elsif ( ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o)) >=50*50 AND ((xpos-a4o)*(xpos-a4o) +(ypos-b4o)*(ypos-b4o) <= 55*55)   ) then
                                                                                                             R := (others => '1');
                                                                                                                       G := (others => '1');
                                                                                                                       B := (others => '1');   
                                                                     
                                               
                                                                            
                                                             
                                                            --Making an 'X' to position 7
                                                                     elsif ( ( xpos + ypos >= a7x + b7x) AND ( xpos + ypos <= a7x + b7x + 10) AND ( xpos - ypos <= a7x - b7x) AND ( xpos - ypos >= a7x - b7x - 240) ) then
                                                                                                              R := (others => '1');
                                                                                                              G := (others => '0');
                                                                                                              B := (others => '0'); 
                                                                     elsif ( ( xpos + ypos >= a7x + b7x - 115) AND ( xpos + ypos <= a7x + b7x + 125) AND ( xpos - ypos <= a7x - b7x - 115) AND ( xpos - ypos >= a7x - b7x - 125)  ) then
                                                                                                              R := (others => '1');
                                                                                                              G := (others => '0');
                                                                                              B := (others => '0'); 
                                                                                                             
                                                            --Making an 'X' to position 9
                                                                     elsif ( ( xpos + ypos >= a9x + b9x) AND ( xpos + ypos <= a9x + b9x + 10) AND ( xpos - ypos <= a9x - b9x) AND ( xpos - ypos >= a9x - b9x - 240) ) then
                                                                                                                R := (others => '1');
                                                                                                                G := (others => '0');
                                                                                                                B := (others => '0'); 
                                                                     elsif ( ( xpos + ypos >= a9x + b9x - 115) AND ( xpos + ypos <= a9x + b9x + 125) AND ( xpos - ypos <= a9x - b9x - 115) AND ( xpos - ypos >= a9x - b9x - 125)  ) then
                                                                                                                R := (others => '1');
                                                                                                                G := (others => '0');
                                                                                                                B := (others => '0');    
                                                                                              
         end if;
      return B & G & R;
  end draw_xox12;
--FUNCTION 12 ENDS
function draw_maze(xpos,ypos : integer) return STD_LOGIC_VECTOR is
 
 VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
 
 begin
         --Very Top Line
         if ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 10) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');  
         --Very Right line
         elsif ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');  

         --Very Left line
         elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');

         --Very Bottom Line
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 500 -10 AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');                             
         --4 Intermediate Lines                             
            --2 vertical Lines
               --Left Vertical
         elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');      
                                                        elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y +50 AND ypos < table_y + 100) ) then
                                                                                     R := (others => '0');
                                                                                     G := (others => '0');
                                                                                     B := (others => '0');        
               --Right Vertical                            
         elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
                                                R := (others => '0');
                                                G := (others => '1');
                                                B := (others => '0'); 
                       elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y +400 AND ypos < table_y + 450) ) then
                                                                                       R := (others => '0');
                                                                                       G := (others => '0');
                                                                                       B := (others => '0');                                   
                                                
            --2 horizontal Lines
               --Upper Horizontal
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
                                                 R := (others => '0');
                                                 G := (others => '1');
                                                 B := (others => '0');    
                                                   elsif ( (xpos > table_x +200 AND xpos < table_X + 250) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
                                                                                                R := (others => '0');
                                                                                                G := (others => '0');
                                                                                                B := (others => '0');           
               --Bottom Horizontal                            
         elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
                                                  R := (others => '0');
                                                  G := (others => '1');
                                                  B := (others => '0');       
           elsif ( (xpos > table_x +200 AND xpos < table_X + 250) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
                                                                                                 R := (others => '0');
                                                                                                 G := (others => '0');
                                                                                                 B := (others => '0');       
                                                        
        --Table ends
  
         end if;
         
         
         
                   if ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y + 400 AND ypos < table_y + 450) ) then
                                                                                    R := (others => '0');
                                                                                    G := (others => '0');
                                                                                    B := (others => '0');  
         
         
                             elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y +50 AND ypos < table_y + 100) ) then
                                                                                                                                                      R := (others => '0');
                                                                                                                G := (others => '0');
                                                                                                                B := (others => '0');  
                                     
elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y +50 AND ypos < table_y + 100) ) then
                                                                                                                                                                                                                                          R := (others => '0');
                                                                                                                                                                                                                                          G := (others => '0');
                                                                                                                                                                                                                                          B := (others => '0');        
                                                                                                                                                                    --Right Vertical                            
                                                                                                                                                      
                                                                                                                                                                            elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y +400 AND ypos < table_y + 450) ) then
                                                                                                                                                                                                                                            R := (others => '0');
                                                                                                                                                                                                                                            G := (others => '0');
                                                                                                                                                                                                                                            B := (others => '0');                                   
                                                                                                                                                                                                     
                                                                                                                                                                 --2 horizontal Lines
                                                                                                                                                                    --Upper Horizontal
                                                                                                                                                            
                                                                                                                                                                                                        elsif ( (xpos > table_x +200 AND xpos < table_X + 250) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
                                                                                                                                                                                                                                                     R := (others => '0');
                                                                                                                                                                                                                                                     G := (others => '0');
                                                                                                                                                                                                                                                     B := (others => '0');           
                                                                                                                                                                    --Bottom Horizontal                            
                                                                                                                                                              
                                                                                                                                                                elsif ( (xpos > table_x +200 AND xpos < table_X + 250) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
                                                                                                                                                                                                                                                      R := (others => '0');
                                                                                                                                                                                                                                                      G := (others => '0');
                                                                                                                                                                                                                                                      B := (others => '0');                                                                                                                                                        
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         end if;
         
      return B & G & R;
  end draw_maze;

function draw_maze2(xpos,ypos : integer) return STD_LOGIC_VECTOR is
 
 VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
 
 begin
--Very Top Line
if ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 10) ) then
R := (others => '0');
G := (others => '1');
B := (others => '0');  
--Very Right line
elsif ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y AND ypos < table_y + 500) ) then
R := (others => '0');
G := (others => '1');
B := (others => '0');  

--Very Left line
elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
R := (others => '0');
G := (others => '1');
B := (others => '0');

--Very Bottom Line
elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 500 -10 AND ypos < table_y + 500) ) then
R := (others => '0');
G := (others => '1');
B := (others => '0');                             
--4 Intermediate Lines                             
--2 vertical Lines
--Left Vertical
elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
R := (others => '0');
G := (others => '1');
B := (others => '0');      
elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y +50 AND ypos < table_y + 100) ) then
R := (others => '0');
G := (others => '0');
B := (others => '0');        
--Right Vertical                            
elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y AND ypos < table_y + 500) ) then
R := (others => '0');
G := (others => '1');
B := (others => '0'); 
elsif ( (xpos > table_x + 330 AND xpos < table_x + 330 + 10) AND ( ypos > table_y +400 AND ypos < table_y + 450) ) then
R := (others => '0');
G := (others => '0');
B := (others => '0');                                   

--2 horizontal Lines
--Upper Horizontal
elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
R := (others => '0');
G := (others => '1');
B := (others => '0');    
elsif ( (xpos > table_x +200 AND xpos < table_X + 250) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
R := (others => '0');
G := (others => '0');
B := (others => '0');           
--Bottom Horizontal                            
elsif ( (xpos > table_x AND xpos < table_X + 500) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
R := (others => '0');
G := (others => '1');
B := (others => '0');       
elsif ( (xpos > table_x +200 AND xpos < table_X + 250) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
R := (others => '0');
G := (others => '0');
B := (others => '0');       

--Table ends

end if;



if ( (xpos > table_X + 500 - 10 AND xpos < table_X + 500) AND ( ypos > table_y + 400 AND ypos < table_y + 450) ) then
R := (others => '0');
G := (others => '0');
B := (others => '0');  


elsif ( (xpos > table_x AND xpos < table_x + 10) AND ( ypos > table_y +50 AND ypos < table_y + 100) ) then
R := (others => '0');
G := (others => '0');
B := (others => '0');  

elsif ( (xpos > table_x + 170 AND xpos < table_x + 170 + 10) AND ( ypos > table_y +50 AND ypos < table_y + 100) ) then
R := (others => '0');
G := (others => '0');
B := (others => '0');        
--Right Vertical                            

--2 horizontal Lines
--Upper Horizontal

elsif ( (xpos > table_x +200 AND xpos < table_X + 250) AND ( ypos > table_y + 170 AND ypos < table_y + 180) ) then
R := (others => '0');
G := (others => '0');
B := (others => '0');           
--Bottom Horizontal                            

elsif ( (xpos > table_x +200 AND xpos < table_X + 250) AND ( ypos > table_y +330 AND ypos < table_y + 330 + 10) ) then
R := (others => '0');
G := (others => '0');
B := (others => '0');                                                                                                                                                        














         
         end if;
         
      return B & G & R;
  end draw_maze2;

end xox;
