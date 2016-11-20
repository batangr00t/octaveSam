f = 4;
T = 1/f;
N = 32+1;
t = linspace( 0, 4*T, N );

y = 2*sin(2*pi*f*t);

#figure;
subplot(1,2,1);
plot( t, y );
xlabel("time (sec)");
ylabel("y(t)");
title( "2*sin(2*pi*f*t)");
grid on

subplot(1,2,2);
Y=abs(fft(y,N))/N*2;
Y=Y(1:ceil(N/2));
freq = [0:N-1];
freq = freq(1:ceil(N/2));
stem( freq, Y );
grid on
xlabel("Sample Number");
ylabel("Amplitude");
