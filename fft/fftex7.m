%ref http://www.sharetechnote.com/html/Eng_FFT.html
n = [0:256];
a = 1.0;
b = 0.8;
p1 = 0.0;
p2 = 0.0;

x = a*cos(2*pi*n/20+p1) +j*b*sin(2*pi*n/20+p2);

x1 = real(x);
x2 = imag(x);
x3 = x;

fft_x1 = fft(x1);
fft_x2 = fft(x2);
fft_x3 = fft(x3);

fft_x1_abs = abs(fft_x1);
fft_x2_abs = abs(fft_x2);
fft_x3_abs = abs(fft_x3);

fft_x1_arg = arg(fft_x1);
fft_x2_arg = arg(fft_x2);
fft_x3_arg = arg(fft_x3);

f1 = [0:length(fft_x1)-1]/length(fft_x1);
f2 = [0:length(fft_x2)-1]/length(fft_x2);
f3 = [0:length(fft_x3)-1]/length(fft_x3);

subplot(4,3,1);
plot(x1, 'r-'); axis([0 length(x1) -1.5 1.5]);
subplot(4,3,4);
plot(x1([1:length(x1)/8]),'r-');axis([0 length(x1)/8 -1.5 1.5]);
subplot(4, 3, 7 );
plot(f1, fft_x1_abs); axis([0 1 0 300]);
subplot(4,3,10);
plot(f1(1:length(x1)/8), fft_x1_abs(1:length(x1)/8)); axis([0 1/8 0 300]);

subplot(4,3,2);
plot(x2,'b-'); axis([0 length(x2) -1.5 1.5]);
subplot(4,3,5);
plot(x2(1:length(x2)/8),'b-'); axis( [0 length(x2)/8, -1.5 1.5]);
subplot(4,3,8);
plot(f2,fft_x2_abs);axis([0 1 0 300]);
subplot(4,3,11);
plot(f2(1:length(x2)/8), fft_x2_abs(1:length(x2)/8));axis([0 1/8 0 300]);

subplot(4,3,3);
plot(real(x3), 'r-', imag(x3), 'b-'); axis([0 length(x3) -1.5 1.5]);
subplot(4,3,6);
plot(real(x3(1:length(x3)/8)),'r-', imag(x3(1:length(x3)/8)), 'b-'); axis( [0 length(x2)/8, -1.5 1.5]);
subplot(4,3,9);
plot(f3,fft_x3_abs);axis([0 1 0 300]);
subplot(4,3,12);
plot(f3(1:length(x3)/8), fft_x3_abs(1:length(x3)/8));axis([0 1/8 0 300]);
