n = [0:149];
x1 = cos(2*pi*n/10)+3*sin(2*pi*n);

N = 2048;

X = abs( fft(x1, N) );
X = fftshift(X);

F=[-N/2:N/2-1]/N;

subplot( 1, 2, 1)
plot(n,x1);
subplot( 1, 2, 2)
plot(F,X), axis( [ 0 1 0 100]);
xlabel('frequency / f_s');