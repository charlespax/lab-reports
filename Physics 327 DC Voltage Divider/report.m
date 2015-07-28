%==================================%
%-->    Lab: DC Voltage Divider <--%
%--> Author: Charles Edward Pax <--%
%-->   Date: 2006.01.24         <--%
%==================================%
%
% The README file contains much more detailed descriptions of all the commands you might need.

clear % Clears all variables and data putting GNU Octave into a virgin state.
clc % Clears the current terminal of any text.

load data.txt;

R1_A_Code = data(:,1);
R1_A_Exp = data(:,2);
R2_A_Code = data(:,3);
R2_A_Exp = data(:,4);
V_in_Exp = data(:,5);
V_out_Calc = data(:,6);
V_out_Exp = data(:,7);

R1_B = data(:,1);
R1_B = R1_B(15:19);
I_B = data(:,2);
I_B = I_B(15:19);
Vin_B = data(:,3);
Vin_B = Vin_B(15:19);
Vout_B = data(:,4);
Vout_B = Vout_B(15:19);
Power_B = data(:,5);
Power_B = Power_B(15:19);

%=================%
%--> Equations <--%
%=================%
plot1_r1 = 100000;
plot2_r1 = 100;
plot_r2 = [1:10:1000000];
plot_vin = 12;
plot1_vout =  plot_vin*(plot_r2./(plot1_r1+plot_r2));
plot2_vout =  plot_vin*(plot_r2./(plot2_r1+plot_r2));

%=============%
%--> Plots <--%
%=============%
figure(1)
clearplot % Octave command
gset terminal epslatex color
gset output "plot01.eps"
%title('Title Here')
xlabel('log(R$_2$ (Ohm))')
ylabel('V$_{out}$/R$_2$ (V/Ohm)')
plot(log(R2_A_Exp(1:7)),V_out_Exp(1:7)./R2_A_Exp(1:7),'o;Experimental;',log(R2_A_Code(1:7)),V_out_Calc(1:7)./R2_A_Code(1:7),'+;Calculated;',log(plot_r2),plot1_vout./plot_r2,';Ideal;')

figure(2)
clearplot % Octave command
gset terminal epslatex color
gset output "plot02.eps"
gset key left
%title("Title Here")
xlabel("log(R$_2$ (Ohm))")
ylabel("V$_{out} (V)$")
plot(log(R2_A_Exp(8:14)),V_out_Exp(8:14),'o;Experimental;',log(R2_A_Code(8:14)),V_out_Calc(8:14),'+;Calculated;',log(plot_r2),plot2_vout,';Ideal;')

figure(3)
clearplot % Octave command
gset terminal epslatex color
gset output "plot03.eps"
%gset key left
%title("Title Here")
xlabel("I$_{LED}$ (A)")
ylabel("V$_{LED}$ (V)")
plot(I_B,Vout_B,';;',I_B,Vout_B,'+;;')
