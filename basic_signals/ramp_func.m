clc;
x=-40:40;
step=0;
value=2;

y=(x-step>=0).*x;

stem(x,y)