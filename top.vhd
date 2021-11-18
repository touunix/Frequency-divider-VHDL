-- Mateusz Gabryel 181329 EiT 3
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use STD.STANDARD.ALL;

ENTITY top IS
    PORT ( clk_i : in STD_LOGIC;
           rst_i : in STD_LOGIC;
           led_o : out STD_LOGIC
          );
END top;

ARCHITECTURE Behavioral OF top IS

-- N = 1+8+1+3+2+9 = 24
constant N : integer := 24; -- dla symulacji
--constant N : integer := 100000000; -- dla weryfikacji na p³ytce

signal a : integer := 1; --licznik
signal b : STD_LOGIC := '0'; --zegar po dzieleniu

BEGIN
PROCESS (clk_i, rst_i,a ,b)
BEGIN
    if (rst_i = '1') then
        a <= 1;
        b <= '0';
    elsif (rising_edge(clk_i)) then
        a <= a + 1;
        if (a=N) then
            b <= NOT b;
            a <= 1;
        END if;
    END if;
--przepisanie wynikow na diode led
led_o <= b;

END PROCESS;
END Behavioral;