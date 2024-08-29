clc;

fs=100;
t=-5:1/fs:5-1/fs;

x=pi*t;
% x=pi*(t-2);   %shifted by 2 units toward +ve x-axis
% y= sin(x)./x;
y1=sinc(x);
y2=sinc(t);

subplot(2,1,1)
plot(x,y1,'g',LineWidth=3);     % plot: x vs y
subplot(2,1,2)
plot(t,y2,'m',LineWidth=1.5);    % plot: t vs y






