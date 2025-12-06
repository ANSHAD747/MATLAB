t=0:0.01:1;
f=1;

%sin wave
signal_1=sin(2*pi*f*t);

%cos wave
signal_2=cos(2*pi*f*t);

plot(t,signal_1 ,t,signal_2);

title('two wave in one graph');