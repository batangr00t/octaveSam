T = 10;
w = 2*pi/T;

t1 = linspace( 0, T, 20+1 );

figure('Name', 'FFT example')
colormap summer

t2=1:(size(t1)(2)/2);
a0 = riemannsum( @f, t1 ) / T;
a=[];
b=[];
for i = t2
  a(i) = riemannsum( @(t) f(t).*cos(i*w*t), t1 ) / (T/2);
endfor
for i = t2
  b(i) = riemannsum( @(t) f(t).*sin(i*w*t), t1 ) / (T/2);
endfor

#freq(1) = a0;
freq = sqrt( a.*a .+ b.*b );

# f
subplot( 2, 1, 1)
grid on
hold on
xlabel('sec');
ylabel('value')
title('FFT a0 example');
g1 = plot(t1, f(t1) );

# frequency
subplot( 2,1,2 )
grid on
hold on
xlabel('Hz');
ylabel('value')
title('FFT a1 example');
g3 = plot( [0, t2]*1/T, [0, a], "-m" );
g4 = plot( [0, t2]*1/T, [0, b], "-g" );
g5 = bar( [0, t2]*1/T, [a0, freq], 0.1 );
hold off