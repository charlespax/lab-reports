%=========================================%
%-->    Lab: Two Difference Amplifiers <--%
%--> Author: Charles Edward Pax        <--%
%-->   Date: Date 2006.03.08           <--%
%=========================================%
% NOTE: The README file contains much more detailed descriptions of all the commands you might need.
%
%
%load 'data.txt';

% Part B Difference Amplifier
% Vary (V1-V2) to measure the output voltage...
V1V2A = [-0.79,-0.5,-0.25,0.245,0.5,0.804];
VoutA = [-7.87,-4.97,-2.47,2.4,4.9,7.95];
% Disconnect V1 and V2 from the bridge circuit. Let...
V1V2B = [-0.816,-0.505,0.29,0.39];
VoutB = [7.97,5.03,-3,-3.95];

figure(1);
gset terminal epslatex color
gset output "Plot01.eps"
gset key box
gset key 0.2,6.5
xlabel('$V_1$ - $V_2$ (V)')
ylabel('$V_{out}$ (V)')
plot(V1V2A,VoutA,'o;;',V1V2A,VoutA,';Bridge;',V1V2B,VoutB,'+;;',V1V2B,VoutB,';Voltage divider;')
