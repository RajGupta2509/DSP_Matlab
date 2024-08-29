close all
clc;

% Chirp Signal = combination of cosines having linerly increasing frequency

fs=1000;
t=0:1/fs:5;

f1=1;
f2=10;
t2=5; 

y=chirp(t,f1,t2,f2);

plot(t,y,'m',LineWidth=1.5)
ylim([-2,2])


