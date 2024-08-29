clc;
x=-10:10;
step=0;
value=2;

y=(x-step>=0)*value;

stem(x,y)