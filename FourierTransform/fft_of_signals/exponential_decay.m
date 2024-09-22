close all;
clear all;
clc;

% Parameters
Fs = 100;           % Sampling frequency in Hz
T = 1/Fs;            % Sampling period
L = 1000;            % Length of signal (number of samples)
t = (0:L-1)*T;       % Time vector

% impulse signal / dirac-delta function
% spike at t = 100T = 0.1s
signal = exp(-2*t);

% Perform FFT
N = length(signal);   % Number of points in FFT
Y = fft(signal, N);   % Compute the FFT

% Frequency array generation
% f = Fs*(0:(N/2))/N;   % Frequency array for one-sided spectrum
f = 0:(Fs/N):(Fs/2);

% Take the magnitude for one-sided amplitude spectrum
P2 = abs(Y/N);        % Two-sided spectrum
P1 = P2(1:N/2+1);     % Single-sided spectrum
P1(2:end-1) = 2*P1(2:end-1);  % Adjust amplitude for one-sided spectrum
amp_spectrum = P1;

% Compute the phase spectrum (single-sided)
ph_spectrum = angle(Y(1:N/2+1));  % Extract the phase for one-sided spectrum

ph_spectrum_degrees = rad2deg(ph_spectrum);

ph_spectrum_unwrapped = unwrap(ph_spectrum);

% Plot the spectrum

figure;
subplot(3,1,1)
plot(t, signal);
title('Expomemtial decay');
xlabel('Time (t) [sec]');
ylabel('Amplitude');

subplot(3,1,2)
plot(f, amp_spectrum);
title('Single-Sided Amplitude Spectrum');
xlabel('Frequency (f) [Hz]');
ylabel('Amplitude');

subplot(3,1,3)
plot(f, ph_spectrum);
title('Single-Sided Phase Spectrum');
xlabel('Frequency (f) [Hz]');
ylabel('Phase (radians)');
