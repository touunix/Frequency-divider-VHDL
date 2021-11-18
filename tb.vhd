-- Mateusz Gabryel 181329 EiT 3
LIBRARY ieee;
USE ieee.STD_LOGIC_1164.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE Behavioral OF tb IS 

COMPONENT top IS
    PORT( clk_i : in  STD_LOGIC;
          rst_i : in  STD_LOGIC;
          led_o : out STD_LOGIC
        );
END COMPONENT top;
   
signal clk_i : STD_LOGIC := '0';
signal rst_i : STD_LOGIC := '0';
signal led_o : STD_LOGIC;
constant PERIOD : TIME := 10 ns;
 
BEGIN
   uut: top PORT MAP (
          clk_i => clk_i,
          rst_i => rst_i,
          led_o => led_o
        );

clk_i <= NOT clk_i AFTER PERIOD/2; -- realizacja prostego zegara

tb: PROCESS
    BEGIN
        rst_i <= '1';
        wait for 100 ns;
        rst_i <= '0';
        wait for 800 ns;
        rst_i <= '1';
        wait for 100 ns;
        rst_i <= '0';
        wait;
END PROCESS;
END Behavioral;