library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package operations is

constant a1first  : integer := 998;
constant b1first  : integer := 150; 
constant a1second : integer := 998;
constant b1second : integer := 320;
constant a1third  : integer := 998;
constant b1third  : integer := 510; 

constant a2first  : integer := 974;
constant b2first  : integer := 150;
constant a2second : integer := 974;
constant b2second : integer := 320; 
constant a2third  : integer := 974;
constant b2third  : integer := 510;

constant a3first  : integer := a2first;
constant b3first  : integer := b2first;
constant a3second : integer := a2second;
constant b3second : integer := b2second; 
constant a3third  : integer := a2third;
constant b3third  : integer := b2third;

constant a5first  : integer := a2first;
constant b5first  : integer := b2first;
constant a5second : integer := a2second;
constant b5second : integer := b2second; 
constant a5third  : integer := a2third;
constant b5third  : integer := b2third;

constant a6first  : integer := a2first;
constant b6first  : integer := b2first;
constant a6second : integer := a2second;
constant b6second : integer := b2second; 
constant a6third  : integer := a2third;
constant b6third  : integer := b2third;

constant a7first  : integer := a2first;
constant b7first  : integer := b2first;
constant a7second : integer := a2second;
constant b7second : integer := b2second; 
constant a7third  : integer := a2third;
constant b7third  : integer := b2third;

constant a8first  : integer := a2first;
constant b8first  : integer := b2first;
constant a8second : integer := a2second;
constant b8second : integer := b2second; 
constant a8third  : integer := a2third;
constant b8third  : integer := b2third;

constant a9first  : integer := a2first;
constant b9first  : integer := b2first;
constant a9second : integer := a2second;
constant b9second : integer := b2second; 
constant a9third  : integer := a2third;
constant b9third  : integer := b2third;

-------Function Declarations
----
function draw_op1(xpos,ypos : integer) return std_logic_vector; --operation 1 is  " 2 - 1 = 1 "  
constant is_correct_op1 : std_logic := '1';
----
function draw_op2(xpos,ypos : integer) return std_logic_vector; --operation 2 is  " 2 + 2 = 3 "  
constant is_correct_op2 : std_logic := '0'; -----------0  
----
function draw_op3(xpos,ypos : integer) return std_logic_vector; --operation 3 is  " 5 - 3 = 2 "  
constant is_correct_op3 : std_logic := '1'; 
----
function draw_op4(xpos,ypos : integer) return std_logic_vector; --operation 4 is  " 9 - 6 = 2 "  
constant is_correct_op4 : std_logic := '0'; 
----
function draw_op5(xpos,ypos : integer) return std_logic_vector; --operation 5 is  " 5 + 3 = 8 "  
constant is_correct_op5 : std_logic := '1'; 
----
function draw_op6(xpos,ypos : integer) return std_logic_vector; --operation 6 is  " 3 + 2 = 6 "  
constant is_correct_op6 : std_logic := '0'; 
----
function draw_op7(xpos,ypos : integer) return std_logic_vector; --operation 7 is  " 9 + 1 = 8 "  
constant is_correct_op7 : std_logic := '0'; 
----
function draw_op8(xpos,ypos : integer) return std_logic_vector; --operation 8 is  " 3 - 2 = 5 "  
constant is_correct_op8 : std_logic := '0'; 
----
----
function draw_maze1(xpos,ypos : integer) return std_logic_vector; --operation 8 is  " 3 - 2 = 5 "  
constant is_correct_maze1 : std_logic := '0'; 
----
end operations;

package body operations is

function draw_op1(xpos,ypos : integer) return STD_LOGIC_VECTOR is

VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
--------------------------------------------- 2 - 1 = 1 ---------------------------------------------
begin
    --Writing '2' into first place
     if (   (xpos > a2first AND xpos < a2first + 68) AND ( ypos > b2first AND ypos < b2first + 14)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '0');
     elsif ( (xpos > a2first + 58 AND xpos < a2first + 68) AND ( ypos > b2first AND ypos < b2first + 82) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '0');
     elsif ( (xpos > a2first AND xpos < a2first + 68) AND ( ypos > b2first + 68 AND ypos < b2first + 82)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '0');
     elsif ( (xpos > a2first AND xpos < a2first + 15) AND ( ypos > b2first + 68 AND ypos < b2first + 150) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '0'); 
     elsif ( (xpos > a2first AND xpos < a2first + 68) AND ( ypos > b2first + 136 AND ypos < b2first + 150)) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '0'); 
     --Writing '1' into second place
     elsif ( (xpos > a1second AND xpos < a1second + 14) AND ( ypos > b1second AND ypos < b1second + 150) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '0'); 
     --Writing 'operation line'
     elsif ( (xpos > 958 AND xpos < 1058) AND ( ypos > 490 AND ypos < 497) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '0');
      --Minus Sign                         
      elsif ( (xpos > 958 AND xpos < 972) AND ( ypos > 478 AND ypos < 483) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '0');

     --Writing '1' into third place
     elsif ( (xpos > a1third AND xpos < a1third + 14) AND ( ypos > b1third AND ypos < b1third + 150) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '0'); 
     end if;
     return R & G & B;
 end draw_op1;
 
 function draw_op2(xpos,ypos : integer) return STD_LOGIC_VECTOR is
 
 VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
 VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
 
 --------------------------------------------- 2 + 2 = 3 ---------------------------------------------
 begin
     --Writing '2' into first place
     if ( (xpos > a2first AND xpos < a2first + 68) AND ( ypos > b2first AND ypos < b2first + 14)) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');
     elsif ( (xpos > a2first + 58 AND xpos < a2first + 68) AND ( ypos > b2first AND ypos < b2first + 82) ) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');
     elsif ( (xpos > a2first AND xpos < a2first + 68) AND ( ypos > b2first + 68 AND ypos < b2first + 82)) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');
     elsif ( (xpos > a2first AND xpos < a2first + 15) AND ( ypos > b2first + 68 AND ypos < b2first + 150) ) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0'); 
     elsif ( (xpos > a2first AND xpos < a2first + 68) AND ( ypos > b2first + 136 AND ypos < b2first + 150)) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0'); 
      --Writing '2' into second place
     elsif ( (xpos > a2second AND xpos < a2second + 68) AND ( ypos > b2second AND ypos < b2second + 14)) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');
     elsif ( (xpos > a2second + 58 AND xpos < a2second + 68) AND ( ypos > b2second AND ypos < b2second + 82) ) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');
     elsif ( (xpos > a2second AND xpos < a2second + 68) AND ( ypos > b2second + 68 AND ypos < b2second + 82)) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');
     elsif ( (xpos > a2second AND xpos < a2second + 15) AND ( ypos > b2second + 68 AND ypos < b2second + 150) ) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0'); 
     elsif ( (xpos > a2second AND xpos < a2second + 68) AND ( ypos > b2second + 136 AND ypos < b2second + 150)) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');  
      --Writing 'operation line'
     elsif ( (xpos > 958 AND xpos < 1058) AND ( ypos > 490 AND ypos < 497) ) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');
     --Plus Sign                         
     elsif ( (xpos > 958 AND xpos < 972) AND ( ypos > 478 AND ypos < 483) ) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');
     elsif ( (xpos > 962 AND xpos < 967) AND ( ypos > 474 AND ypos < 488) ) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');
      --Writing '3' into third place
     elsif ( (xpos > a3third AND xpos < a3third + 68) AND ( ypos > b3third AND ypos < b3third + 14)) then
                       R := (others => '0');
                       G := (others => '1');
                       B := (others => '0');
     elsif ( (xpos > a3third + 58 AND xpos < a3third + 68) AND ( ypos > b3third AND ypos < b3third + 82) ) then
                       R := (others => '0');
                       G := (others => '1');
                       B := (others => '0');
     elsif ( (xpos > a3third + 30 AND xpos < a3third + 68) AND ( ypos > b3third + 68 AND ypos < b3third + 82)) then
                       R := (others => '0');
                       G := (others => '1');
                       B := (others => '0');
     elsif ( (xpos > a3third + 58 AND xpos < a3third + 68) AND ( ypos > b3third + 68 AND ypos < b3third + 150) ) then
                       R := (others => '0');
                       G := (others => '1');
                       B := (others => '0'); 
     elsif ( (xpos > a3third AND xpos < a3third + 68) AND ( ypos > b3third + 136 AND ypos < b3third + 150)) then
                       R := (others => '0');
                       G := (others => '1');
                       B := (others => '0'); 
      end if;
      return R & G & B;
  end draw_op2;
 
function draw_op3(xpos,ypos : integer) return STD_LOGIC_VECTOR is
   
   VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
   VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
   VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
   
   --------------------------------------------- 5 - 3 = 2 ---------------------------------------------
   begin
       --Writing '5' into first place
       if ( (xpos > a5first AND xpos < a5first + 68) AND ( ypos > b5first AND ypos < b5first + 14)) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0');
       elsif ( (xpos > a5first AND xpos < a5first + 15) AND ( ypos > b5first AND ypos < b5first + 82) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0');
       elsif ( (xpos > a5first AND xpos < a5first + 68) AND ( ypos > b5first + 68 AND ypos < b5first + 82)) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0');
       elsif ( (xpos > a5first + 58 AND xpos < a5first + 68) AND ( ypos > b5first + 68 AND ypos < b5first + 150) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0'); 
       elsif ( (xpos > a5first AND xpos < a5first + 68) AND ( ypos > b5first + 136 AND ypos < b5first + 150)) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0'); 
        --Writing '3' into second place
       elsif ( (xpos > a3second AND xpos < a3second + 68) AND ( ypos > b3second AND ypos < b3second + 14)) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0');
       elsif ( (xpos > a3second + 58 AND xpos < a3second + 68) AND ( ypos > b3second AND ypos < b3second + 82) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0');
       elsif ( (xpos > a3second + 30 AND xpos < a3second + 68) AND ( ypos > b3second + 68 AND ypos < b3second + 82)) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0');
       elsif ( (xpos > a3second + 58 AND xpos < a3second + 68) AND ( ypos > b3second + 68 AND ypos < b3second + 150) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0'); 
       elsif ( (xpos > a3second AND xpos < a3second + 68) AND ( ypos > b3second + 136 AND ypos < b3second + 150)) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0');  
        --Writing 'operation line'
       elsif ( (xpos > 958 AND xpos < 1058) AND ( ypos > 490 AND ypos < 497) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0');
       --Minus Sign                         
       elsif ( (xpos > 958 AND xpos < 972) AND ( ypos > 478 AND ypos < 483) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0');
        --Writing '2' into third place
       elsif ( (xpos > a2third AND xpos < a2third + 68) AND ( ypos > b2third AND ypos < b2third + 14)) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');
       elsif ( (xpos > a2third + 58 AND xpos < a2third + 68) AND ( ypos > b2third AND ypos < b2third + 82) ) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');
       elsif ( (xpos > a2third AND xpos < a2third + 68) AND ( ypos > b2third + 68 AND ypos < b2third + 82)) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0');
       elsif ( (xpos > a2third  AND xpos < a2third + 15) AND ( ypos > b2third + 68 AND ypos < b2third + 150) ) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0'); 
       elsif ( (xpos > a2third AND xpos < a2third + 68) AND ( ypos > b2third + 136 AND ypos < b2third + 150)) then
                         R := (others => '0');
                         G := (others => '1');
                         B := (others => '0'); 
        end if;
        return R & G & B;
    end draw_op3;
function draw_op4(xpos,ypos : integer) return STD_LOGIC_VECTOR is
    
    VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
    VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
    VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
    --------------------------------------------- 9 - 6 = 3 ---------------------------------------------
    begin
        --Writing '9' into first place
         if (   (xpos > a2first AND xpos < a2first + 68) AND ( ypos > b2first AND ypos < b2first + 14)) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
         elsif ( (xpos > a2first + 58 AND xpos < a2first + 68) AND ( ypos > b2first AND ypos < b2first + 82) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
         elsif ( (xpos > a2first AND xpos < a2first + 68) AND ( ypos > b2first + 68 AND ypos < b2first + 82)) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
         elsif ( (xpos > a2first AND xpos < a2first + 68) AND ( ypos > b2first + 136 AND ypos < b2first + 150)) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0'); 
        elsif ( (xpos > a5first AND xpos < a5first + 15) AND ( ypos > b5first AND ypos < b5first + 82) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0');
        elsif ( (xpos > a5first + 58 AND xpos < a5first + 68) AND ( ypos > b5first + 68 AND ypos < b5first + 150) ) then
                                               R := (others => '0');
                                               G := (others => '1');
                                               B := (others => '0');                                     
         --Writing '6' into second place
        elsif ( (xpos > a2second  AND xpos < a2second + 15) AND ( ypos > b2second + 68 AND ypos < b2second + 150) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0'); 
       elsif ( (xpos > a5second AND xpos < a5second + 68) AND ( ypos > b5second AND ypos < b5second + 14)) then
                                        R := (others => '0');
                                        G := (others => '1');
                                        B := (others => '0');
        elsif ( (xpos > a5second AND xpos < a5second + 15) AND ( ypos > b5second AND ypos < b5second + 82) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
        elsif ( (xpos > a5second AND xpos < a5second + 68) AND ( ypos > b5second + 68 AND ypos < b5second + 82)) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
        elsif ( (xpos > a5second + 58 AND xpos < a5second + 68) AND ( ypos > b5second + 68 AND ypos < b5second + 150) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0'); 
        elsif ( (xpos > a5second AND xpos < a5second + 68) AND ( ypos > b5second + 136 AND ypos < b5second + 150)) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');                         
         --Writing 'operation line'
         elsif ( (xpos > 958 AND xpos < 1058) AND ( ypos > 490 AND ypos < 497) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
          --Minus Sign                         
          elsif ( (xpos > 958 AND xpos < 972) AND ( ypos > 478 AND ypos < 483) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
    

        ----Writing 2 into 3rd place
        elsif ( (xpos > a2third AND xpos < a2third + 68) AND ( ypos > b2third AND ypos < b2third + 14)) then
                          R := (others => '0');
                          G := (others => '1');
                          B := (others => '0');
        elsif ( (xpos > a2third + 58 AND xpos < a2third + 68) AND ( ypos > b2third AND ypos < b2third + 82) ) then
                          R := (others => '0');
                          G := (others => '1');
                          B := (others => '0');
        elsif ( (xpos > a2third AND xpos < a2third + 68) AND ( ypos > b2third + 68 AND ypos < b2third + 82)) then
                          R := (others => '0');
                          G := (others => '1');
                          B := (others => '0');
        elsif ( (xpos > a2third  AND xpos < a2third + 15) AND ( ypos > b2third + 68 AND ypos < b2third + 150) ) then
                          R := (others => '0');
                          G := (others => '1');
                          B := (others => '0'); 
        elsif ( (xpos > a2third AND xpos < a2third + 68) AND ( ypos > b2third + 136 AND ypos < b2third + 150)) then
                          R := (others => '0');
                          G := (others => '1');
                          B := (others => '0'); 
         end if;
         return R & G & B;
     end draw_op4;
function draw_op5(xpos,ypos : integer) return STD_LOGIC_VECTOR is
        
        VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
        VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
        VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
        
        --------------------------------------------- 5 + 3 = 8 ---------------------------------------------
        begin
            --Writing '5' into first place
            if ( (xpos > a5first AND xpos < a5first + 68) AND ( ypos > b5first AND ypos < b5first + 14)) then
                                R := (others => '0');
                                G := (others => '1');
                                B := (others => '0');
            elsif ( (xpos > a5first AND xpos < a5first + 15) AND ( ypos > b5first AND ypos < b5first + 82) ) then
                                R := (others => '0');
                                G := (others => '1');
                                B := (others => '0');
            elsif ( (xpos > a5first AND xpos < a5first + 68) AND ( ypos > b5first + 68 AND ypos < b5first + 82)) then
                                R := (others => '0');
                                G := (others => '1');
                                B := (others => '0');
            elsif ( (xpos > a5first + 58 AND xpos < a5first + 68) AND ( ypos > b5first + 68 AND ypos < b5first + 150) ) then
                                R := (others => '0');
                                G := (others => '1');
                                B := (others => '0'); 
            elsif ( (xpos > a5first AND xpos < a5first + 68) AND ( ypos > b5first + 136 AND ypos < b5first + 150)) then
                                R := (others => '0');
                                G := (others => '1');
                                B := (others => '0'); 
             --Writing '3' into second place
            elsif ( (xpos > a3second AND xpos < a3second + 68) AND ( ypos > b3second AND ypos < b3second + 14)) then
                                R := (others => '0');
                                G := (others => '1');
                                B := (others => '0');
            elsif ( (xpos > a3second + 58 AND xpos < a3second + 68) AND ( ypos > b3second AND ypos < b3second + 82) ) then
                                R := (others => '0');
                                G := (others => '1');
                                B := (others => '0');
            elsif ( (xpos > a3second + 30 AND xpos < a3second + 68) AND ( ypos > b3second + 68 AND ypos < b3second + 82)) then
                                R := (others => '0');
                                G := (others => '1');
                                B := (others => '0');
            elsif ( (xpos > a3second + 58 AND xpos < a3second + 68) AND ( ypos > b3second + 68 AND ypos < b3second + 150) ) then
                                R := (others => '0');
                                G := (others => '1');
                                B := (others => '0'); 
            elsif ( (xpos > a3second AND xpos < a3second + 68) AND ( ypos > b3second + 136 AND ypos < b3second + 150)) then
                                R := (others => '0');
                                G := (others => '1');
                                B := (others => '0');  
             --Writing 'operation line'
            elsif ( (xpos > 958 AND xpos < 1058) AND ( ypos > 490 AND ypos < 497) ) then
                                R := (others => '0');
                                G := (others => '1');
                                B := (others => '0');
                --Plus Sign                         
                                elsif ( (xpos > 958 AND xpos < 972) AND ( ypos > 478 AND ypos < 483) ) then
                                                    R := (others => '0');
                                                    G := (others => '1');
                                                    B := (others => '0');
                                elsif ( (xpos > 962 AND xpos < 967) AND ( ypos > 474 AND ypos < 488) ) then
                                                    R := (others => '0');
                                                    G := (others => '1');
                                                    B := (others => '0');
             --Writing '8' into third place
            elsif ( (xpos > a2third AND xpos < a2third + 68) AND ( ypos > b2third AND ypos < b2third + 14)) then
                              R := (others => '0');
                              G := (others => '1');
                              B := (others => '0');
            elsif ( (xpos > a2third + 58 AND xpos < a2third + 68) AND ( ypos > b2third AND ypos < b2third + 82) ) then
                              R := (others => '0');
                              G := (others => '1');
                              B := (others => '0');
            elsif ( (xpos > a2third AND xpos < a2third + 68) AND ( ypos > b2third + 68 AND ypos < b2third + 82)) then
                              R := (others => '0');
                              G := (others => '1');
                              B := (others => '0');
            elsif ( (xpos > a2third  AND xpos < a2third + 15) AND ( ypos > b2third + 68 AND ypos < b2third + 150) ) then
                              R := (others => '0');
                              G := (others => '1');
                              B := (others => '0'); 
            elsif ( (xpos > a2third AND xpos < a2third + 68) AND ( ypos > b2third + 136 AND ypos < b2third + 150)) then
                              R := (others => '0');
                              G := (others => '1');
                              B := (others => '0'); 
            elsif ( (xpos > a5third AND xpos < a5third + 15) AND ( ypos > b5third AND ypos < b5third + 82) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');
              elsif ( (xpos > a5third + 58 AND xpos < a5third + 68) AND ( ypos > b5third + 68 AND ypos < b5third + 150) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0'); 
             end if;
             return R & G & B;
         end draw_op5;
function draw_op6(xpos,ypos : integer) return STD_LOGIC_VECTOR is
            
VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);

--------------------------------------------- 3 + 2 = 6 ---------------------------------------------
begin
     --Writing '3' into first place
           if ( (xpos > a3first AND xpos < a3first+ 68) AND ( ypos > b3first AND ypos < b3first+ 14)) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');
           elsif ( (xpos > a3first+ 58 AND xpos < a3first+ 68) AND ( ypos > b3first AND ypos < b3first+ 82) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');
           elsif ( (xpos > a3first+ 30 AND xpos < a3first+ 68) AND ( ypos > b3first+ 68 AND ypos < b3first+ 82)) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');
           elsif ( (xpos > a3first+ 58 AND xpos < a3first+ 68) AND ( ypos > b3first+ 68 AND ypos < b3first+ 150) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0'); 
           elsif ( (xpos > a3first AND xpos < a3first+ 68) AND ( ypos > b3first+ 136 AND ypos < b3first+ 150)) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');  
            --Writing '2' into second place
            elsif ( (xpos > a2second AND xpos < a2second + 68) AND ( ypos > b2second AND ypos < b2second + 14)) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
            elsif ( (xpos > a2second + 58 AND xpos < a2second + 68) AND ( ypos > b2second AND ypos < b2second + 82) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
            elsif ( (xpos > a2second AND xpos < a2second + 68) AND ( ypos > b2second + 68 AND ypos < b2second + 82)) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
            elsif ( (xpos > a2second AND xpos < a2second + 15) AND ( ypos > b2second + 68 AND ypos < b2second + 150) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0'); 
            elsif ( (xpos > a2second AND xpos < a2second + 68) AND ( ypos > b2second + 136 AND ypos < b2second + 150)) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');                               
            
     --Writing 'operation line'
    elsif ( (xpos > 958 AND xpos < 1058) AND ( ypos > 490 AND ypos < 497) ) then
                        R := (others => '0');
                        G := (others => '1');
                        B := (others => '0');
--Plus Sign                         
elsif ( (xpos > 958 AND xpos < 972) AND ( ypos > 478 AND ypos < 483) ) then
R := (others => '0');
G := (others => '1');
B := (others => '0');
elsif ( (xpos > 962 AND xpos < 967) AND ( ypos > 474 AND ypos < 488) ) then
R := (others => '0');
G := (others => '1');
B := (others => '0');
      --Writing '6' into 3rd place
                              elsif ( (xpos > a2third  AND xpos < a2third + 15) AND ( ypos > b2third + 68 AND ypos < b2third + 150) ) then
                                                  R := (others => '0');
                                                  G := (others => '1');
                                                  B := (others => '0'); 
                             elsif ( (xpos > a5third AND xpos < a5third + 68) AND ( ypos > b5third AND ypos < b5third + 14)) then
                                                              R := (others => '0');
                                                              G := (others => '1');
                                                              B := (others => '0');
                              elsif ( (xpos > a5third AND xpos < a5third + 15) AND ( ypos > b5third AND ypos < b5third + 82) ) then
                                                  R := (others => '0');
                                                  G := (others => '1');
                                                  B := (others => '0');
                              elsif ( (xpos > a5third AND xpos < a5third + 68) AND ( ypos > b5third + 68 AND ypos < b5third + 82)) then
                                                  R := (others => '0');
                                                  G := (others => '1');
                                                  B := (others => '0');
                              elsif ( (xpos > a5third + 58 AND xpos < a5third + 68) AND ( ypos > b5third + 68 AND ypos < b5third + 150) ) then
                                                  R := (others => '0');
                                                  G := (others => '1');
                                                  B := (others => '0'); 
                              elsif ( (xpos > a5third AND xpos < a5third + 68) AND ( ypos > b5third + 136 AND ypos < b5third + 150)) then
                                                  R := (others => '0');
                                                  G := (others => '1');
                                                  B := (others => '0');             
     end if;
     return R & G & B;
 end draw_op6;    
    
  function draw_op7(xpos,ypos : integer) return STD_LOGIC_VECTOR is
    
    VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
    VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
    VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
    
    --------------------------------------------- 9 + 1 = 8 ---------------------------------------------
    begin
        --Writing '9' into first place
             if (   (xpos > a2first AND xpos < a2first + 68) AND ( ypos > b2first AND ypos < b2first + 14)) then
                                R := (others => '0');
                                G := (others => '1');
                                B := (others => '0');
             elsif ( (xpos > a2first + 58 AND xpos < a2first + 68) AND ( ypos > b2first AND ypos < b2first + 82) ) then
                                R := (others => '0');
                                G := (others => '1');
                                B := (others => '0');
             elsif ( (xpos > a2first AND xpos < a2first + 68) AND ( ypos > b2first + 68 AND ypos < b2first + 82)) then
                                R := (others => '0');
                                G := (others => '1');
                                B := (others => '0');
             elsif ( (xpos > a2first AND xpos < a2first + 68) AND ( ypos > b2first + 136 AND ypos < b2first + 150)) then
                                R := (others => '0');
                                G := (others => '1');
                                B := (others => '0'); 
            elsif ( (xpos > a5first AND xpos < a5first + 15) AND ( ypos > b5first AND ypos < b5first + 82) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');
            elsif ( (xpos > a5first + 58 AND xpos < a5first + 68) AND ( ypos > b5first + 68 AND ypos < b5first + 150) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');                           
         --Writing '1' into second place
        elsif ( (xpos > a1second AND xpos < a1second + 14) AND ( ypos > b1second AND ypos < b1second + 150) ) then
                                 R := (others => '0');
                                 G := (others => '1');
                                 B := (others => '0'); 
         --Writing 'operation line'
        elsif ( (xpos > 958 AND xpos < 1058) AND ( ypos > 490 AND ypos < 497) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
--Plus Sign                         
        elsif ( (xpos > 958 AND xpos < 972) AND ( ypos > 478 AND ypos < 483) ) then
        R := (others => '0');
        G := (others => '1');
        B := (others => '0');
        elsif ( (xpos > 962 AND xpos < 967) AND ( ypos > 474 AND ypos < 488) ) then
        R := (others => '0');
        G := (others => '1');
        B := (others => '0');
--Writing '8' into third place
                    elsif ( (xpos > a2third AND xpos < a2third + 68) AND ( ypos > b2third AND ypos < b2third + 14)) then
                                      R := (others => '0');
                                      G := (others => '1');
                                      B := (others => '0');
                    elsif ( (xpos > a2third + 58 AND xpos < a2third + 68) AND ( ypos > b2third AND ypos < b2third + 82) ) then
                                      R := (others => '0');
                                      G := (others => '1');
                                      B := (others => '0');
                    elsif ( (xpos > a2third AND xpos < a2third + 68) AND ( ypos > b2third + 68 AND ypos < b2third + 82)) then
                                      R := (others => '0');
                                      G := (others => '1');
                                      B := (others => '0');
                    elsif ( (xpos > a2third  AND xpos < a2third + 15) AND ( ypos > b2third + 68 AND ypos < b2third + 150) ) then
                                      R := (others => '0');
                                      G := (others => '1');
                                      B := (others => '0'); 
                    elsif ( (xpos > a2third AND xpos < a2third + 68) AND ( ypos > b2third + 136 AND ypos < b2third + 150)) then
                                      R := (others => '0');
                                      G := (others => '1');
                                      B := (others => '0'); 
                    elsif ( (xpos > a5third AND xpos < a5third + 15) AND ( ypos > b5third AND ypos < b5third + 82) ) then
                                       R := (others => '0');
                                       G := (others => '1');
                                       B := (others => '0');
                      elsif ( (xpos > a5third + 58 AND xpos < a5third + 68) AND ( ypos > b5third + 68 AND ypos < b5third + 150) ) then
                                       R := (others => '0');
                                       G := (others => '1');
                                       B := (others => '0'); 
         end if;
         return R & G & B;
     end draw_op7;  
function draw_op8(xpos,ypos : integer) return STD_LOGIC_VECTOR is
        
    VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
    VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
    VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
    
    --------------------------------------------- 3 - 2 = 5 ---------------------------------------------
    begin
     --Writing '3' into first place
              if ( (xpos > a3first AND xpos < a3first + 68) AND ( ypos > b3first AND ypos < b3first + 14)) then
                                  R := (others => '0');
                                  G := (others => '1');
                                  B := (others => '0');
              elsif ( (xpos > a3first + 58 AND xpos < a3first + 68) AND ( ypos > b3first AND ypos < b3first + 82) ) then
                                  R := (others => '0');
                                  G := (others => '1');
                                  B := (others => '0');
              elsif ( (xpos > a3first + 30 AND xpos < a3first + 68) AND ( ypos > b3first + 68 AND ypos < b3first + 82)) then
                                  R := (others => '0');
                                  G := (others => '1');
                                  B := (others => '0');
              elsif ( (xpos > a3first + 58 AND xpos < a3first + 68) AND ( ypos > b3first + 68 AND ypos < b3first + 150) ) then
                                  R := (others => '0');
                                  G := (others => '1');
                                  B := (others => '0'); 
              elsif ( (xpos > a3first AND xpos < a3first + 68) AND ( ypos > b3first + 136 AND ypos < b3first + 150)) then
                                  R := (others => '0');
                                  G := (others => '1');
                                  B := (others => '0');  
               --Writing '2' into second place
               elsif ( (xpos > a2second AND xpos < a2second + 68) AND ( ypos > b2second AND ypos < b2second + 14)) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');
               elsif ( (xpos > a2second + 58 AND xpos < a2second + 68) AND ( ypos > b2second AND ypos < b2second + 82) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');
               elsif ( (xpos > a2second AND xpos < a2second + 68) AND ( ypos > b2second + 68 AND ypos < b2second + 82)) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');
               elsif ( (xpos > a2second AND xpos < a2second + 15) AND ( ypos > b2second + 68 AND ypos < b2second + 150) ) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0'); 
               elsif ( (xpos > a2second AND xpos < a2second + 68) AND ( ypos > b2second + 136 AND ypos < b2second + 150)) then
                               R := (others => '0');
                               G := (others => '1');
                               B := (others => '0');                               
               
        --Writing 'operation line'
       elsif ( (xpos > 958 AND xpos < 1058) AND ( ypos > 490 AND ypos < 497) ) then
                           R := (others => '0');
                           G := (others => '1');
                           B := (others => '0');
   --Minus Sign                         
   elsif ( (xpos > 958 AND xpos < 972) AND ( ypos > 478 AND ypos < 483) ) then
   R := (others => '0');
   G := (others => '1');
   B := (others => '0');

   --Writing '5' into 3rd place
  elsif ( (xpos > a5third AND xpos < a5third + 68) AND ( ypos > b5third AND ypos < b5third + 14)) then
                      R := (others => '0');
                      G := (others => '1');
                      B := (others => '0');
  elsif ( (xpos > a5third AND xpos < a5third + 15) AND ( ypos > b5third AND ypos < b5third + 82) ) then
                      R := (others => '0');
                      G := (others => '1');
                      B := (others => '0');
  elsif ( (xpos > a5third AND xpos < a5third + 68) AND ( ypos > b5third + 68 AND ypos < b5third + 82)) then
                      R := (others => '0');
                      G := (others => '1');
                      B := (others => '0');
  elsif ( (xpos > a5third + 58 AND xpos < a5third + 68) AND ( ypos > b5third + 68 AND ypos < b5third + 150) ) then
                      R := (others => '0');
                      G := (others => '1');
                      B := (others => '0'); 
  elsif ( (xpos > a5third AND xpos < a5third + 68) AND ( ypos > b5third + 136 AND ypos < b5third + 150)) then
                      R := (others => '0');
                      G := (others => '1');
                      B := (others => '0'); 
    end if;
    return R & G & B;
    end draw_op8;  
    
      
 function draw_maze1(xpos,ypos : integer) return STD_LOGIC_VECTOR is
    
    VARIABLE R: STD_LOGIC_VECTOR(3 DOWNTO 0);
    VARIABLE G: STD_LOGIC_VECTOR(3 DOWNTO 0);
    VARIABLE B: STD_LOGIC_VECTOR(3 DOWNTO 0);
    --------------------------------------------- 2 - 1 = 1 ---------------------------------------------
    begin
        --Writing '2' into first place
         if (   (xpos > a2first AND xpos < a2first + 68) AND ( ypos > b2first AND ypos < b2first + 14)) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
         elsif ( (xpos > a2first + 58 AND xpos < a2first + 68) AND ( ypos > b2first AND ypos < b2first + 82) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
         elsif ( (xpos > a2first AND xpos < a2first + 68) AND ( ypos > b2first + 68 AND ypos < b2first + 82)) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
         elsif ( (xpos > a2first AND xpos < a2first + 15) AND ( ypos > b2first + 68 AND ypos < b2first + 150) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0'); 
         elsif ( (xpos > a2first AND xpos < a2first + 68) AND ( ypos > b2first + 136 AND ypos < b2first + 150)) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0'); 
         --Writing '1' into second place
         elsif ( (xpos > a1second AND xpos < a1second + 14) AND ( ypos > b1second AND ypos < b1second + 150) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0'); 
         --Writing 'operation line'
         elsif ( (xpos > 958 AND xpos < 1058) AND ( ypos > 490 AND ypos < 497) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
          --Minus Sign                         
          elsif ( (xpos > 958 AND xpos < 972) AND ( ypos > 478 AND ypos < 483) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0');
    
         --Writing '1' into third place
         elsif ( (xpos > a1third AND xpos < a1third + 14) AND ( ypos > b1third AND ypos < b1third + 150) ) then
                            R := (others => '0');
                            G := (others => '1');
                            B := (others => '0'); 
         end if;
         return R & G & B;
     end draw_maze1;   
    
    
    
    
    
    
    
    
    
 end operations;
