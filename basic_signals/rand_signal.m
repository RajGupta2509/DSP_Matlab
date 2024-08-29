close all
clc;

% generating random signal with float value from a to b :  (a,b) 

t=0:0.01:2;
a=-5; b=10;

%y= rand(1,length(t));       % it generates values between (0,1)
y= a+(b-a)*rand(1,length(t));


plot(t,y,'m')
ylim([-20,20])
grid on
% axis tight

