clc;

fs=5;
t=0:1/fs:20;

c=-0.103+1.03j;
Z=50*exp(c*t);      % Z = 50e^[(-0.103+1.03j)t]

figure
% Real Part     Re(Z)
subplot(421)
stem(t,real(Z),'g')
xlabel('Time Scale')
ylabel('Real Part')
axis tight
set(gca,'FontSize',10,'FontWeight','b')

% Imaginary Part    Imag(Z)
subplot(423)
stem(t,imag(Z),'b')
xlabel('Time Scale')
ylabel('Imaginary Part')
axis tight
set(gca,'FontSize',10,'FontWeight','b')

% Absolute/Magnitude    |Z|
subplot(425)
stem(t,abs(Z),'m')
xlabel('Time Scale')
ylabel('Magnitude')
axis tight
set(gca,'FontSize',10,'FontWeight','b')

% Phase angle   
subplot(427)
stem(t,angle(Z),'k')
xlabel('Time Scale')
ylabel('Phase')
axis tight
set(gca,'FontSize',10,'FontWeight','b')


% 3D plot: T vs Real,Imag
subplot(4,2,[2,4,6,8])
plot3(t,real(Z),imag(Z),'r','LineWidth',5)
xlabel('Time Scale')
ylabel('Real Part')
zlabel('Imag Part')
title('3D plot of Complex Function')
axis square
set(gca,'FontSize',10,'FontWeight','b')

sgtitle('Complex Exponential function in MATLAB')






