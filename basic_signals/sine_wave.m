clc;

fs=1000;
f=4;
t=0:1/fs:1;

y=sin(2*pi*f*t);    % y=sin(wt),  w=2*pi*f

plot(t,y,'r')