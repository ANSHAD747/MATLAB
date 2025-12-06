clear; close all; clc;

%% === USER INPUTS ===
% Ask user for modulation parameters
fm = input('Enter frequency of message signal (Hz): ');
fc = input('Enter frequency of carrier signal (Hz): ');
delta_f = input('Enter frequency deviation for FM (Hz): ');
% Frequency sensitivity for FM (rad/sec/Hz)
kf = 2 * pi * delta_f;

%% === SYSTEM PARAMETERS ===
Fs = 10000;
duration = 1;
t = 0:1/Fs:duration;

%% === MESSAGE SIGNAL ===
m = sin(2*pi*fm*t);

%% === FREQUENCY MODULATION (FM) ===

int_m = cumsum(m) / Fs; 
s_fm = cos(2*pi*fc*t + kf * int_m);


noise_fm = 0.3 * randn(size(s_fm));
s_fm_noisy = s_fm + noise_fm;

%% === PLOT RESULTS ===
figure('Name', 'Frequency Modulation');
subplot(4,1,1);
plot(t, m, 'b'); 
title('Message Signal');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;

c = cos(2*pi*fc*t);
subplot(4,1,2);
plot(t, c, 'b'); 
title('Message Signal');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;

subplot(4,1,3);
plot(t, s_fm, 'r');
title('FM Signal (No Noise)');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;

subplot(4,1,4);
plot(t, s_fm_noisy, 'k');
title('FM Signal with Noise');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;


