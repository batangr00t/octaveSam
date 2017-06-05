# [ first ,,, (first + num + N) ]
if ( ! exist( "first" ) ) first = 1; endif
if ( ! exist( "num" ) )   num  = 5; endif
N = 10; # the number of subplot 
last = first + num + N;

# new figure
figure ( 11 );

# 
x1 = t(first:last);
y1 = s(first:last);
lpf1 = lpf(5, first:last);
x2 = x1(1):0.1:x1(end);

for i = 1:N
  subplot( 2, 5, i)
  p2 = polyfit( x1(i:i+num-1), y1(i:i+num-1), num-1 );
  plot( x1, y1, "b-+", x1, lpf1, "m-x", x2, polyval(p2, x2), "r-", x1(i:i+num-1), y1(i:i+num-1), "ro" );
  title( polyout( p2, "t" ) );
  pv = polyval(p2, x1(i:i+num-1));
  axis( [ x1(1), x1(end), min(y1)*2, max(y1)*2 ] );
  grid;
endfor