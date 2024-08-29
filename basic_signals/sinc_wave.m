close all
clc;

fs=1000;
t=-5:1/fs:5-1/fs;
l=length(t);

x=sinc(t);
y=abs(x);

subplot(2,1,1)
plot(t,x,'g',LineWidth=1.5);    % plot: t vs x
subplot(2,1,2)
plot(t,y,'m',LineWidth=1.5);    % plot: t vs y




