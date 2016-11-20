f=10;
T=1/f;
t = linspace(0,2*T,150);
Yt = 5*sin(2*pi*f*t) + 2*cos(2*pi*5*f*t) + 4*sin(2*pi*3*f*t);

subplot( 1,2,1)
plot(t, Yt);

subplot( 1,2,2);
N = 64;
X = abs( fft( x, N) );
F = [0:N-1]/N;
stem( F, X );