clc;

fs=1000;        % fs is sampling frequency - no. of points in gives range

t=0:1/fs:2;

y=exp(2*t);     % y= e^(2t)
%z=exp(-2*t);

a=5;
z=a.^(2*t);     % z= a^(2t)

subplot(2,1,1)
plot(t,y,'r')
grid on 
axis tight

subplot(2,1,2)
plot(t,z,'g')
grid on 
axis tight
