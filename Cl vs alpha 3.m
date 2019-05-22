clear all
close all
clc

span=10;
s=5;
rchord=20;
e1=0.92;
a0=0.105;
AR=(span^2)/((span*rchord)/2);
alpha=0:2:30;
%low speed, m<0.3

prandta=a0/(1+(a0/(pi*e1*AR)));
%prandta=0.1013
%alpha no lift=-2.2 degrees
clprandt=((alpha).*prandta)+.223;

cn=(2*pi*((alpha.*pi/180)./(s/rchord))+(4.9*((alpha.*pi/180)./(s/rchord)).^1.7)).*(s/rchord)^2;
clkuch=(cn.*cos(alpha.*pi/180))+.223


plot(alpha,clprandt,'-+')
hold on 
plot(alpha,clkuch,'-*')
xlabel('Angle of attack (degrees)')
ylabel('C_L')
legend('Prandtl','Kuchemann')
hold off