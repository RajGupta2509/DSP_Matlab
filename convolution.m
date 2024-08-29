clc;
f=[0.5 1.0 1.5 0];
g=[0 0 1];
%Y=[2 4 6 8 6 4 2];

% built in convolution function in Matlab
Y1 = conv(f,g);

% self written convolution function
Y2 = convolute(f,g);

l = length(Y1);
f(l) = 0;
g(l) = 0;

x=linspace(0,l-1,l);

subplot(4,1,1)
stem(x,f)

subplot(4,1,2)
stem(x,g)

subplot(4,1,3)
stem(x,Y1)

subplot(4,1,4)
stem(x,Y2)

% it can be seen that Y1==Y2


function Y = convolute(f,g)
    m=length(f);
    n=length(g);
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




