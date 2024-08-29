clc;
w1 = [3 1 -1 0 0];
w2 = [0 0 3 1 -1];

% self written Correlation Algorithm
[lag,c]=correlation(w1,w2);
subplot(2,1,1)
stem(lag,c)

% built in Matlab Correlation Function
[c,lag]=xcorr(w1,w2);
subplot(2,1,2)
stem(lag,c)

%  It can be seen that both are giving same results

function [lag,c] = correlation(g,f)
    m=length(f);
    n=length(g);
    maxLag = m-1;
    lag=[];
    lag(2*maxLag)=0;
    c=lag;
    
    i=1;
    for T= -maxLag:maxLag
        sum=0;
        for t=1:m
            if (t+T<=n) & (t+T>0)
                prod=f(t) * g(t+T);
                sum=sum+prod;
            end
        end
        lag(i)=T;
        c(i)=sum;
        i=i+1;
    end
end

