n = [0:256];
a = 1.0;
b = 1.0;
p1 = 0.0;
p2 = 0.0;

x = a*cos(2*pi*n/20+p1) + j*b*sin(2*pi*n/20+p2);

subplot(5,1,1);
plot(real(x), 'r-', imag(x), 'b-'); axis([0 length(x) -1.1 1.1]);

subplot(5,1,2);
plot(arg(x), 'r-'); axis([0 length(x) -pi pi]);

subplot(5,1,[3 4]);
plot(real(x(1:21)), imag(x(1:21)), 'b-', real(x(1:21)), imag(x(1:21)), 'rx');
axis([-1.1 1.1 -1.1 1.1 ]);

subplot(5,1,5);
plot(arg(x(1:21)),'b-', arg(x(1:21)), 'rx'); 
axis([0 21 -pi pi]);