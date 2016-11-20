function zf( f )
clf

subplot(1,2,1)
grid on
hold on
axis( [ -5 5 -5 5] );
subplot( 1,2,2 );
grid on
hold on
axis( [ -5 5 -5 5] );

t = [0:0.1:2*pi];
z = 0.5*exp( i*t );
w = f(z);
for k = 1:size(z)(2)
 subplot(1,2,1)
  plot( z(k) );
  subplot(1,2,2)
  plot( w(k) );
  usleep( 1000*0 );
endfor

t = [0:0.1:2*pi];
z = exp( i*t );
w = f(z);
for k = 1:size(z)(2)
 subplot(1,2,1)
  plot( z(k) );
  subplot(1,2,2)
  plot( w(k) );
  usleep( 1000*0 );
endfor

t = [0:0.1:2*pi];
z = 2*exp( i*t );
w = f(z);
for k = 1:size(z)(2)
 subplot(1,2,1)
  plot( z(k) );
  subplot(1,2,2)
  plot( w(k) );
  usleep( 1000*0 );
endfor

t = [-2:0.1:2];
z = t + i*t;
w = f(z);
for k = 1:size(z)(2)
  subplot(1,2,1)
  plot( z(k), "r" );
  subplot(1,2,2)
  plot( w(k), "r" );
  usleep( 1000*100 );
endfor
  
t = [-2:0.1:2];
z = t - i*t;
w = f(z);
for k = 1:size(z)(2)
  subplot(1,2,1)
  plot( z(k), "r" );
  subplot(1,2,2)
  plot( w(k), "r" );
  usleep( 1000*100 );
endfor
  
t = [-2:0.1:2];
z = 1 + i*t;
w = f(z);
for k = 1:size(z)(2)
  subplot(1,2,1)
  plot( z(k), "g" );
  subplot(1,2,2)
  plot( w(k), "g" );
  usleep( 1000*100 );
endfor

t = [-2:0.1:2];
z = -1 + i*t;
w = f(z);
for k = 1:size(z)(2)
  subplot(1,2,1)
  plot( z(k), "g" );
  subplot(1,2,2)
  plot( w(k), "g" );
  usleep( 1000*100 );
endfor
  