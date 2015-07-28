%==============================%
%-->    Lab: Name of Report <--%
%--> Author: Your Name Here <--%
%-->   Date: Date lab began <--%
%==============================%
%
%
clear
clc

Rload1 = [911;327];
Vout1 = [5.66;3.05];
Iout1 = (Vout1 ./ Rload1);

Rload2 = [911;327];
Vout2 = [5.31;3.26];
Iout2 = (Vout2 ./ Rload2);

figure(1);
clearplot % Octave command
gset terminal epslatex color
gset output "plot01.eps"
gset key box
%gset key left
%title('Title Here')
ylabel('$V_{out} (V)$')
xlabel('$I_{out} (A)$')
plot(Iout1,Vout1,';Voltage divider;',Iout1,Vout1,'+;;',Iout2,Vout2,';Transistor;',Iout2,Vout2,'+;;')
closeplot
