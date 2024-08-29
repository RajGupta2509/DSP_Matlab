clc;

fs=100;
f=2;
k=0:1/fs:1;
x=sin(2*pi*f*k);

fun=@(t) sin(2*pi*f*t);

y=[];
y(length(k))=0;

for i=1:length(k)
    y(i)=integral(fun,0,k(i));
end

subplot(2,1,1)
plot(k,x,'g')
subplot(2,1,2)
plot(k,y,'m')
