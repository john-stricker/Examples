%Root Locus Example 2
clear all
close all
clc

%targeting 10% overshoot, so kp=23.7
s=tf('s');
kp=23.7;
a=0.1;
z=0.1; %z=0.1 and p=1 gives a zero at -0.1 from the lag compensator
p=1;
g=100/((s+10)*(s+15)*(s+20));
gc=(1+a/s); %zero at -0.1 from PI controller
laggc=(s+z)/(s+p);

rlocus(laggc*g);
figure
rlocus(g*gc);



uncomp=feedback(g,1);
picomp=feedback(kp*gc*g,1);
lagcomp=feedback(kp*laggc*g,1);


