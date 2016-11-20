n = [0:29];
x1 = cos(2*pi*n/10); 
x2 = [x1 x1];
x3 = [x1 x1 x1];

N=2048;

X1 = abs(fft(x1,N));
X2 = abs(fft(x2,N));
X3 = abs(fft(x2,N));

F = [0:N-1]/N;

subplot( 2, 2, 1 );
plot( n, x1), title('cos(2*pi*n/10)');
subplot( 2,2,2 );
plot(F,X1), title('3 periods');
subplot( 2,2,3 );
plot(F,X2), title('6 periods');
subplot( 2,2,4 );
plot(F,X3), title('9 periods');

