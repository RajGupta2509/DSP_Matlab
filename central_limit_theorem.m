clc;
a = [1 0 4 2 8 3 0];
n = length(a);
array = a;
l=n;

x = linspace(0,l-1,l);
subplot(2,1,1)
stem(x,a);

for i=1:20
   array = convolute(a,array,n,l);
   l = length(array);
end

x = linspace(0,l-1,l);
subplot(2,1,2)
stem(x,array);


function Y = convolute(f,g,m,n)
    h=zeros(n,m);

    for i=1:n
        for j=1:m
            h(i,j)=h(i,j) + g(i)*f(j);
        end
    end

    Y=[];
    Y(m+n-1)=0;
    for i=1:n
        for j=1:m
            Y(i+j-1)=Y(i+j-1) + h(i,j);
        end
    end
end




 