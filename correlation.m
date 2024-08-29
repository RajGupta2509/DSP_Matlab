w1 = [3 1 -1 0 0];
w2 = [0 0 3 1 -1];

% 2(a)
t = linspace(0,4,5);
subplot(5,1,1)
stem(t,w1)
title('W1')
subplot(5,1,2)
stem(t,w2)
title('W2')

% 2(b)
[c,lags] = xcorr(w1,w2);
subplot(5,1,3)
stem(lags,c,'g')
title('Cross Correlation of W1 with W2')

% 2(c)
[c,lags] = xcorr(w2,w1);
subplot(5,1,4)
stem(lags,c,'g')
title('Cross Correlation of W2 with W1')

% 2(d)
[c,lags] = xcorr(w1);
subplot(5,1,5)
stem(lags,c,'r')
title('Auto Correlation of W1')