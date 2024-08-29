close all
clc;


x=0:0.01:10;
n=length(x);

f = sin(x);

fun= @(t) sin(t);

% y=[];
% y(n)=0;
y=zeros(n);

for i=1:n
    y(i)=integral(fun,0,x(i));
end

subplot(211)
plot(x,f)
subplot(212)
plot(x,y)

% Result
% Integral of sin(x) = cos(x)




