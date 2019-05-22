clear all
close all 
clc

alpha=-2:2:10;
AR=5;
e1=0.92;
M=0.7;
a0=0.105;
lam=0.6109 %radians

asweep=(a0*cos(lam))/(sqrt(1+((a0*cos(lam))/(pi*AR))^2) + (a0*cos(lam))/(pi*AR));
a=a0/(1+(a0/(pi*e1*AR)));
cla=(alpha+2.2).*a;
clsweep=(alpha+2.2).*asweep;

plot(alpha, clsweep,'-+')
xlabel('Angle of Attack (Degrees)')
ylabel('C_L')
hold on
plot(alpha, cla,'-*');
legend('35 degree sweep','Unswept')
hold off

