clc;
x=-10:10;
spikes=[2,4,7];
%y=(x-2==0)+(x-5==0)+(x-7==0);

y=impulse(x,spikes);
stem(x,y)
ylim([0,2])

function y= impulse(x,spikes)
    y=[];
    y(length(x))=0;
    n=length(spikes);
    k=x(1);
    for i=1:n
        index=spikes(i)-k+1;
        if index>0
            y(index)=1;
        end
    end

end 