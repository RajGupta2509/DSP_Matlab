clc;
t = linspace(0,25,1000);
inputAC=sin(t)*5;
outputDC_half_wave = [];
outputDC_half_wave(1000)=0;
outputDC_full_wave = [];
outputDC_full_wave(1000)=0;

n = length(inputAC);
for i=1:n
    acVoltage = inputAC(i);
    if acVoltage>0.7 
        dcVoltage = acVoltage - 0.7;
        outputDC_half_wave(i) = dcVoltage;% for Half wave Rectifier
        outputDC_full_wave(i) = dcVoltage;
    end
    if acVoltage<-0.7
        dcVoltage = -acVoltage - 0.7;
        outputDC_full_wave(i) = dcVoltage;
    end
    
end


subplot(3,1,1)
plot(t,inputAC)
title("Input AC signal")
subplot(3,1,2)
plot(t,outputDC_half_wave)
title("Output DC (half wave recitified)")
subplot(3,1,3)
plot(t,outputDC_full_wave)
title("Output DC (half wave recitified)")


