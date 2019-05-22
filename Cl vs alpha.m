clear all
close all
clc

alpha=-2:2:10;
AR=5;
e1=0.92;
M=0.7;
a0=0.105;

a=a0/(1+(a0/(pi*e1*AR)));
acomp=a0/(sqrt(1-M^2)+(a0/(pi*e1*AR)));
cla=(alpha+2.2).*a
clacomp=(alpha+2.2).*acomp


plot(alpha, cla,'-+')
xlabel('Angle of Attack (Degrees)')
ylabel('C_L')
hold on
plot(alpha, clacomp,'-*');
legend('M=0.3','M=0.7')
hold off

