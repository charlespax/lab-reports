%===================================================%
%-->    Lab: AC Introduction and Voltage Divider <--%
%--> Author: Charles Edward Pax                  <--%
%-->   Date: 2006.01.31                          <--%
%===================================================%
% The README file contains much more detailed descriptions of all the commands you might need.
%
load 'data.txt';
%
f = data(1:9,1);
V_in = data(1:9,2);
V_out = data(1:9,3);
Phase_diff = data(1:9,4);
Time = data(10:26,1);
Time_theory = [0.00000:0.000001:0.000080];
Voltage = data(10:26,2);
%
%
figure(1);
clearplot
gset terminal epslatex color
gset output "plot01.eps"
%title('Plot title')
gset key left
xlabel('log($f$ (Hz))')
ylabel('log(Vout/Vin)')
plot (log(f),log(V_out./V_in),'+;Experimental;')

figure(2);
clearplot
gset terminal epslatex color
gset output "plot02.eps"
%title('Plot title')
gset key right
ylabel('Phase Difference (s)')
xlabel('log($f$ (Hz))')
plot (log(f),Phase_diff,'+;Experimental;')

figure(3);
clearplot
gset terminal epslatex color
gset output "plot03.eps"
%title('Plot title')
%gset key right
xlabel('Time (s)')
ylabel('Voltage (V)')
plot (Time,Voltage,'+;Experimental;',Time_theory,2*5.6*e.^(-45647.6*Time_theory),';Theoretical;')
