close all
clc;

% creating a Signal
t =0:500;
signal=zeros(1,501);
spikeAt = 50;
signal(spikeAt)= 10;

% creating a Random Noise
noise=randn(1,501);

% addition of Noise in Signal and shifting(lagging) of signal
shift=100;
noisey_signal=circshift(signal+noise,shift);


% finding Correlation of Original Signal and Noisey Signal
[c,lag] = xcorr(signal,noisey_signal);


M = islocalmax(c,MinProminence=max(c));
maxima = islocalmax(noisey_signal,'MinProminence',max(noisey_signal));

subplot(4,1,1);
plot(t,signal,'g');
xlabel('time')
ylabel('Amplitude')
title('Original Signal');

subplot(4,1,2)
plot(t,noise,'r');
xlabel('time')
ylabel('Noise value')
title('Noise');

subplot(4,1,3)
plot(t,noisey_signal,t(maxima),noisey_signal(maxima),'r*');
xlabel('time')
ylabel('Amplitude')
title('Noisey Signal');

subplot(4,1,4)
plot(lag,c,'g',lag(M),c(M),'r*');
xlabel('time lag')
ylabel('Correlation value')
title('Correlation');

