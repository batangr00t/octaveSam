# the number of data
N = 30;

# generate y
t = 1:N;
y = normrnd( 0.1, 1, 1, N ) * 10;
for i = 2:N y(i) += y(i-1); endfor

# ployfit
pf = polyfit( t, y, floor(N/5) );

# signle exponetial smoothing
a1=0.5; # alpha
S1(1) = y(1);
for i = 2:N S1(i) = a1*y(i) + (1-a1)*S1(i-1); endfor
# the mean of the squared errors
# the mean of the squared difference S(i) - S(i-1)
mse1 = mean( (y-S1).^2 )
msd1 = mean( diff(S1-polyval(pf,t)).^2 )

# double exponential smoothing
a2 = a1; # alpha
g2 = 0.2; # gamma
S2(1) = y(1);
b2(1) = ( y(4)-y(1) )/3;
for i = 2:N 
  S2(i) = a2*y(i) + (1-a2)*( S2(i-1) + b2(i-1) ); 
  b2(i) = g2*(S2(i) - S2(i-1)) + (1-g2)*b2(i-1);  
endfor
mse2 = mean( (y-S2).^2 )
msd2 = mean( diff(S2-polyval(pf,t)).^2 )


# plot 
plot ( t, y, "k-s", t, S1, "b--o", t, S2, "r--o", 1:0.1:N, polyval( pf, 1:0.1:N ), "b-" );
#title ( ["mse1=" num2str(mse1) ", msd1=" num2str(msd1) " | mse2=" num2str(mse2) ", msd2=" num2str(msd2) ] );
title ( ["msd1=" num2str(msd1) " | msd2=" num2str(msd2) ] );
grid
