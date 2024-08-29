close all
clc;

lithology=['shale','sandstone','clay','gniess','granite'];

% total depth = 1000m
depths=[200,160,180,220,240];
densities=[2.5,2.3,2.0,2.6,2.75];
velocities=[3.2,4.3,0.5,5.2,6.4];

depth=0:999;

% density (d)
d=[2.5*ones(1,200),2.3*ones(1,160),2*ones(1,180),2.6*ones(1,220),2.75*ones(1,240)];

% velocit (v)
v=[3.2*ones(1,200),4.3*ones(1,160),0.5*ones(1,180),5.2*ones(1,220),6.4*ones(1,240)];

% Impedance
impedance=v.*d;

%  Creating Reflectivity Series
refl_series=zeros(1,1000);
for i=1:999
    curr=impedance(i);
    next=impedance(i+1);
    diff=next-curr;
    refl_series(i)=diff;
end

% wavelet
x=1.2:0.01:2.8;
wavelet=5*sinc(5*(x-2));

synthetic_signal=conv(refl_series,wavelet);

subplot(611)
plot(depth,d,LineWidth=1.15);    
ylim([1,5])
title('Density')
subplot(612)
plot(depth,v,LineWidth=1.15)
ylim([0,8])
title('Velocity')
subplot(613)
plot(depth,impedance,'g',LineWidth=1.15)
title('Impedance')
subplot(614)
plot(depth,refl_series,'m',LineWidth=1.15)
title('Reflectivity Series')
subplot(615)
plot(x,wavelet,'b',LineWidth=1.15)
xlim([-6 10])
title('Wavelet')
subplot(616)
plot(synthetic_signal,'r',LineWidth=1.5)
title('Synthetic signal')
