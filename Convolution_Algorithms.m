clc;
t=0:10;
f=[2 0 1];
g=[4 3 2 1];
h=convolute_using_sliding(f,g);

subplot(3,1,1)
stem(f)
subplot(3,1,2)
stem(g)
subplot(3,1,3)
stem(h)



% Convolution Using Formula
function Y = convolute_using_formula(f,g)
    m=length(f);
    n=length(g);
    Y=[];
    Y(m+n-1)=0;

    for k=0:m+n-2
        sum=0;
        for i=0:m-1
            if i<=k
                if (k-i<n)
                    sum = sum + f(i+1)*g(k-i+1);
                end
            end
        end
        Y(k+1)=sum;
    end
end


% Convolution Using Geometrical Operation of Folding
function Y = convolute_using_folding(f,g)
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


% Convolution Using Geometrical Sliding Operation
function Y = convolute_using_sliding(f,g)
    m=length(f);
    n=length(g);
    Y=[];
    Y(m+n-1)=0;
    g(m+n-1)=0;
    h=f;
    for i=1:m
        f(i)=h(m+1-i);
    end

    s=m;
    for i=1:m+n-1
        sum=0;
        k=i;
        for j=s:m
            prod=f(m+s-j)*g(k);
            sum=sum+prod;
            k=k-1;
        end
        Y(i)=sum;
        if s>1
            s=s-1;
        end
    end
end










