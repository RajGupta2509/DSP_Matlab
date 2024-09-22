close all;
clear all;
clc;

% Define parameters
Fs = 500;           % Sampling frequency (Hz)
T = 1/Fs;            % Sampling period (seconds)
L = 1000;            % Length of signals (number of samples)
t = (0:L-1)*T;       % Time vector

% Define two example signals
x = sin(2*pi*10*t);              % A sine wave of 10 Hz
h = exp(-t*5);                   % An exponentially decaying signal

% Time domain convolution
y_time = conv(x, h, 'same');     % Perform convolution in the time domain

% Frequency domain multiplication
N = L;                           % Number of points for FFT
X = fft(x, N);                   % FFT of signal x
H = fft(h, N);                   % FFT of signal h

Y_freq = X .* H;                 % Multiply in frequency domain
y_freq = ifft(Y_freq, N);        % Inverse FFT to get result in time domain

% Plot the results
figure;
subplot(3,1,1);
plot(t, x);
title('Signal x(t)');
xlim([0,1])
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, h);
title('Signal h(t)');
xlim([0,1])
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t, y_time, 'b', 'DisplayName', 'Convolution in Time Domain');
hold on;
plot(t, y_freq, 'r--', 'DisplayName', 'Multiplication in Frequency Domain');
title('Convolution: Time Domain vs Frequency Domain');
xlim([0,1])
xlabel('Time (s)');
ylabel('Amplitude');
legend;
