clc;
% B(z) = 1 + z + z^2 + z^3 + z^4
exponents = [0 1 2 3 4];
coefficients = [1 1 1 1 1];
subplot(1,2,1)
stem(exponents,coefficients)

% [B(z)]^2 = 1 + 2z + 3z^2 + 4z^3 + 5z^4 + 4z^5 + 3z^6 + 2z^7 + z^8
exponents = [0 1 2 3 4 5 6 7 8];
coefficients = [1 2 3 4 5 4 3 2 1];
subplot(1,2,2)
stem(exponents,coefficients)

