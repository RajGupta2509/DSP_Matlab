clear all;
close all;
clc;

% construct a sine wave : sin(2*pi*f*t)
f = 2;  % actual freq of sin wave


for n=1:8
    fs = n*f;   % sampling freq fs
    delta_T = 1/fs;   % sampling interval
    
    t = 0:delta_T:2*pi;
    y = sin(f*t) + sin(2*f*t);
    
    plot(t,y)
    title(sprintf('n = %d', n));
    pause(2)
end

% here since the highest freq component present in the signal is of 2*f Hz,
% so according to Sampling theorem, Nyquist freq >= 2*f and 
% Sampling freq = 2*Nyquist freq,  therefore we have to choose n>=4 for the above example.