%Root Locus Solutions

close all
clear all
clc

s = tf('s');
g = 1/((s+1)*(s+2)*(s+3));
zeta=0.4;
w= 0:0.1:5.5;
p=ones(1,54)

re=-1*zeta*w;
im=w*sqrt(1-(zeta)^2);
line=[re;im];

rlocus(g)
hold on

rplot=rlocus(g);
row3re=real(rplot(3,:));
row3im=imag(rplot(3,:));

curvy=[row3re;row3im];
nice=curvy(:,1:54)-line(:,1:54);

resultx=curvy(1,1:54)-line(1,1:54);
resulty=curvy(2,1:54)-line(2,1:54);

result2=(abs(resultx./resulty) - p);
resind=min(abs(result2));
%^ the above 2 lines don't work particularly well. Line 21
%is the best candidate for the intersection.

k=-1*(line(1,21)+1)*(line(1,21)+2)*(line(1,21)+3); %doesnt work that well either


plot(line(1,21),line(2,21),'*');
plot(re,im);
hold off


%plot(curvy(1,1:54),curvy(2,1:54),'+');
%hold on
%plot(line(1,1:56),line(2,1:56), '*');
%hold off






%% Graph format


[x,y] = ginput(1);

ang1= (atan2((y-0),(x-(-1))))*(180/pi);
ang2= (atan2((y-0),(x-(-2))))*(180/pi);
ang3= (atan2((y-0),(x-(-3))))*(180/pi);

if (ang1+ang2+ang3 > 177 && ang1+ang2+ang3 <183)
phase=(ang1+ang2+ang3);  
angt1=num2str(ang1);
angt2=num2str(ang2);
angt3=num2str(ang3);
ang1lab={num2str(phase)};
text1 = {'Phase:' phase ' degrees,K='};
h1 = text(x,y, text1 ,'HorizontalAlignment','left','Color', [1 0 0], 'FontSize',8);

end