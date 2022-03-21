# ENG Frequency divider VHDL
###### Description
The circuit serves as a frequency divider. The designed frequency divider divides the input frequency of 100 MHz by N, where N is the sum of the digits of the index of the student completing the exercise. In my case, it is 1+8+1+3+2+9=24. The code has made it possible to easily change the value of N with constant. The system has an asynchronous reset, which is performed using the BTN3 button. Pressing this button resets the system.

In the simulation and verification on the board, the system reset was performed twice - at the beginning of the simulation and verification and during it. The second reset was made in such a way that you can see its operation at the output of the divider. Simulation and verification show all possible states of the divider.

The result of the verification on the board is presented at the output of the system, i.e. the LED0 light.
LED 0 flashing at 1 Hz was obtained by setting the value of N to 100,000,000.

###### Simulation results
<img src="https://user-images.githubusercontent.com/79804729/159369261-81548d32-b29c-43c5-9f7f-d01f676b62de.png" width="90%"></img>

###### Verification results


###### Files description

- top.vhd - main VHDL design file with the operation algorithm
- tb.vhd - testbench file
- iup5.xdc - file with constraints for the **Nexys-A7 board (FPGA xc7a100tcsg324-1)**


# PL Dzielnik częstotliwości VHDL
###### Opis
Układ po zaprogramowaniu, służy jako dzielnik częstotliwości. Zaprojektowany dzielnik częstotliwości dzieli wejściową częstotliwość 100 MHz przez N, gdzie N stanowi sumę cyfr indeksu studenta zaliczającego ćwiczenie. W moim przypadku jest to 1+8+1+3+2+9=24. W kodzie została umożliwiona łatwa zmiana wartości N poprzez constant. Układ posiada reset asynchroniczny, który jest realizowany za pomocą przycisku BTN3. Wciśnięcie tego przycisku skutkuje wyzerowaniem układu.

W przeprowadzonej symulacji oraz weryfikacji na płytce. Reset układu został wykonany dwa razy – na początku symulacji oraz weryfikacji i w jej trakcie. Drugi reset został wykonany w taki sposób, aby było widać jego działanie na wyjściu dzielnika. Symulacja oraz weryfikacja przedstawia wszystkie możliwe stany dzielnika.

Wynik weryfikacji na płytce jest przedstawiony na wyjściu układu, czyli diodzie świecącej LED0.
Miganie diody LED0 z częstotliwością 1 Hz, zostało uzyskane poprzez ustawienie wartości N na wartość 100,000,000.

###### Wyniki symulacji
<img src="https://user-images.githubusercontent.com/79804729/159369261-81548d32-b29c-43c5-9f7f-d01f676b62de.png" width="90%"></img>

###### Wyniki weryfikacji


###### Opis plików

- top.vhd - główny plik projektu VHDL z algorytmem działania
- tb.vhd - plik testbench
- iup5.xdc - plik z ograniczeniami projektowymi dla **płytki Nexys-A7 (układ FPGA xc7a100tcsg324-1)**
