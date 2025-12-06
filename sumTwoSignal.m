f1=10;
f2=20;
fs=2000;
timeAxis=0: 1/fs: 1;
signal_1=sin(2*pi*f1*timeAxis);

subplot(3,1,1);
plot(timeAxis,signal_1);
xlabel('time');
ylabel('Amplituted');
title('sin wave');


signal_2=cos(2*pi*f2*timeAxis);

subplot(3,1,2);
plot(timeAxis,signal_2);
xlabel('time');
ylabel('Amplituted');
title('cos wave');


signal_3=signal+signal_2;

subplot(3,1,3);
plot(timeAxis,signal_3);
xlabel('time');
ylabel('Amplituted');
title('signal_3');