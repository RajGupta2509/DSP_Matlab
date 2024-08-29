clc;

fs=200;
f=1;
t=0:1/fs:1-1/fs;

y=square(2*pi*f*t,50);

subplot(2,1,1)
plot(t,y,'r')

subplot(2,1,2)
stem(t,y,'g')