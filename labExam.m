clc;
clear all;
close all;

fm = 10;   
fc = 1000;    
fd = 100;  
fs = 10000;   
t = 0:1/fs:1; 

message = sin(2*pi*fm*t);
carrier = sin(2*pi*fc*t);

kf = 2*pi*fd;
fm_signal = sin(2*pi*fc*t + kf * cumsum(message)/fs);  


noise = 0.3 * randn(1, length(t));
fm_noise = fm_signal + noise;

figure;

subplot(4,1,1);
plot(t, message, 'b');
title('Message Signal (10 Hz)');
xlabel('Time');
ylabel('Amplitude');

subplot(4,1,2);
plot(t, carrier, 'r');
title('Carrier Signal (1 kHz)');
xlabel('Time');
ylabel('Amplitude');

subplot(4,1,3);
plot(t, fm_signal, 'k');
title('FM Modulated Signal');
xlabel('Time');
ylabel('Amplitude');

subplot(4,1,4);
plot(t, fm_noise, 'm');
title('FM Signal with Noise');
xlabel('Time');
ylabel('Amplitude');

