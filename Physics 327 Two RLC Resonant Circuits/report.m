%==========================================%
%-->    Lab: Two RLC Resonant Circuits <--%
%--> Author: Charles Edward Pax         <--%
%-->   Date: 2006.02.07                 <--%
%==========================================%
%
%
clear
clc

load 'data.txt';
set1b = 1;
set1e = 12;
set2b = 14;
set2e = 21;
L1 = data(set1b:set1e,1);
R1 = data(set1b:set1e,2);
C1 = data(set1b:set1e,3);
f1 = data(set1b:set1e,4);
V_out1 = data(set1b:set1e,5);
L2 = data(set2b:set2e,1);
R2 = data(set2b:set2e,2);
C2 = data(set2b:set2e,3);
f2 = data(set2b:set2e,4);
V_out2 = data(set2b:set2e,5);

%% Ringing Data (Made up)
Ringing_t = [0.00,2.50,5.00,5.500,7.000,10.00,12.00,15.0,20.00,25.0,30.0,35.0,40.0,45.0,50.0,55.0,60.0,65,70,75,80,85,90,95,100];
Ringing_V = [0.25,-0.1,-0.5,-0.55,-0.62,-0.65,-0.62,-0.5,-0.25,0.00,0.20,0.26,0.25,0.15,0.10,0.05,0.035,0.01,0,0,0,0,0,0,0];

figure(1);
clearplot % Octave command
gset terminal epslatex color
gset output "plot01.eps"
%title('Title Here')
xlabel('Frequency (Hz)')
ylabel('$V_{out}$ (V)')
plot(f1,V_out1,';;',f1,V_out1,'+;;');

figure(2);
clearplot % Octave command
gset terminal epslatex color
gset output "plot02.eps"
%title('Title Here')
xlabel('Frequency (Hz)')
ylabel('$V_{out}$ (V)')
plot(f2,V_out2,';;',f2,V_out2,'+;;');

figure(3);
clearplot % Octave command
gset terminal epslatex color
gset output "plot03.eps"
%title('Title Here')
xlabel('Time ($u$s)')
ylabel('$V_{out}$ (V)')
plot(Ringing_t,Ringing_V,';;',Ringing_t,Ringing_V,'+;;');
