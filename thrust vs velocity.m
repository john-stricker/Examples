close all
clear all
clc

w=2250;
l=27;
span=48.7;
s=123.3;
v=205.333;
A=25000;
k=0.023226;
cd01=0.06;
cd02=0.08;
cd03=0.12;
v2=50:10:300;
rho=0.00106;

cd1=cd01+k.*(2.*w)./(rho.*v2.^2.*s);
cd2=cd02+k.*(2.*w)./(rho.*v2.^2.*s);
cd3=cd03+k.*(2.*w)./(rho.*v2.^2.*s); 

Tr1=0.5*rho.*v2.^2.*s.*cd1;
Tr2=0.5*rho.*v2.^2.*s.*cd2;
Tr3=0.5*rho.*v2.^2.*s.*cd3;

plot(v2, Tr1)
xlabel('Velocity (feet/second)')
ylabel('Thrust required (lb)')
hold on
plot(v2, Tr2)
plot(v2, Tr3)
legend('C_D_0=0.06','C_D_0=0.08','C_D_0=0.12')
hold off