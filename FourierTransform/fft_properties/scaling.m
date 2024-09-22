% Scaling Property => Compressing in time expands in frequency, and vice versa.

% Define parameters
Fs = 100;             % Sampling frequency (Hz)
T = 1/Fs;              % Sampling period (seconds)
L = 1000;              % Length of signal (number of samples)
t = (0:L-1)*T;         % Time vector

% Define a signal (Rectangular pulse)
x = abs(t-5)<=0.2;  % Original signal

% Apply time scaling (compression and stretching)
a1 = 0.5;  % Stretching by a factor of 2 (a1 < 1)
a2 = 0.05;    % Compressing by a factor of 2 (a2 > 1)

% Scaled signals
x_stretched = abs(t-5)<=a1;  % Time stretching
x_compressed = abs(t-5)<=a2; % Time compression

% FFT of the original and scaled signals
X = fft(x);                     % FFT of the original signal
X_stretched = fft(x_stretched);  % FFT of time-stretched signal
X_compressed = fft(x_compressed);% FFT of time-compressed signal

% Frequency vector for plotting
% N = length(X);
f = 0:(Fs/N):(Fs/2);              % Frequency vector (one-sided)

% Magnitude spectra
X_mag = abs(X/N);
X_stretched_mag = abs(X_stretched/N);
X_compressed_mag = abs(X_compressed/N);

% Only take the first half of the frequency spectrum (one-sided)
X_mag = X_mag(1:N/2+1);
X_stretched_mag = X_stretched_mag(1:N/2+1);
X_compressed_mag = X_compressed_mag(1:N/2+1);

% Plot the original signal and its FFT
figure;
subplot(3,2,1);
plot(t, x);
title('Original Signal x(t)');
xlabel('Time (s)');
ylabel('Amplitude');
xlim([4,6])

subplot(3,2,2);
plot(f, X_mag);
title('FFT of Original Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

% Plot the time-stretched signal and its FFT
subplot(3,2,3);
plot(t, x_stretched);
title('Time-Stretched Signal x(0.5t)');
xlabel('Time (s)');
ylabel('Amplitude');
xlim([4,6])

subplot(3,2,4);
plot(f, X_stretched_mag);
title('FFT of Time-Stretched Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

% Plot the time-compressed signal and its FFT
subplot(3,2,5);
plot(t, x_compressed);
title('Time-Compressed Signal x(2t)');
xlabel('Time (s)');
ylabel('Amplitude');
xlim([4,6])

subplot(3,2,6);
plot(f, X_compressed_mag);
title('FFT of Time-Compressed Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
