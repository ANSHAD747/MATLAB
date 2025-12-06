clc; clear; close all;

fm= input ('Frequency:');
fc= input ('Carry Frequency:');

B=input ('Modulation Index:');

t=0:0.001:.5;

frequency=sin(2*pi*fm*t);
carry=sin(2*pi*fc*t);

A=sin(2*pi*fm*t+(B.*sin(2*pi*fc*t)));

subplot(3,1,1);
plot(t,frequency);


subplot(3,1,2);
plot(t,carry);


subplot(3,1,3);
plot(t,A);