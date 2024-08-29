clc;

fs=100;
f=2;
t=0:1/fs:1;

y=sawtooth(2*pi*f*t);
z=sawtooth(2*pi*f*t,0.5);

subplot(2,1,1)
plot(t,y,'r')

subplot(2,1,2)
plot(t,z,'g')

