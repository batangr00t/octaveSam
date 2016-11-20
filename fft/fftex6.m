Td = 5;     # duration ( seconds )
N  = 128;   # Sample
dt = Td/N;  # sampling interval
fs = 1/dt;  # sampling frequency
df = fs/N;  # sampling interval of frequency domain
fmax = fs/2;# Nyquist frequency

t = linspace(-Td/2, Td/2, N);
w = 2*pi;
#y = sin(w*t);
#y = sin(w*t) - 5*cos(10*w*t) + cos(20*w*t);
#y = rande( 1, N ) + sin(w*t);
p = [ 2 0 -5 ];
y = polyval( p, t ) + sin(4*w*t);
y(N/2:end) = 0;
F = fft(y, N);

subplot(1,3,1);
plot( t, y );
grid on;
xlabel('time(sec)');
ylabel('amplitude');
title('y');

subplot( 1,3,2 );
Center = ceil(N/2);
freq = [0:Center-1]*df;
normF = abs(F)(1:Center)/N*2;
plot(freq, normF, "o-");
grid on;
xlabel('frequency(Hz)');
ylabel('Magnitude');
title('Normalize FFT');

subplot(1,3,3);
invF = ifft(F);
plot(t, invF);
grid on;
xlabel('time(sec)');
ylabel("amplitude");
title('original function IFFT');
