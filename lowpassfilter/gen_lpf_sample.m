# time
t = 0:0.5:10;

# error function : nornal distribution
# time delay ( -0.2sec < et < 0.2sec )
# noise 
et = stdnormal_rnd(1,length(t))/10+0.2; # 200msec delay
noise = stdnormal_rnd(1,length(t))*15; 

# signal source function 
function retval = source ( time, theta )
  retval = zeros( 1, length(time) );
  for i = 1:time(end)
    retval += i*sin(2*pi*1/i*time + theta) + i*cos( 2*pi*1/i*time + fliplr(theta));
  endfor
endfunction

# raw data
theta = unifrnd(0, pi, 1,length(t));
f = source(t, theta);

# sensor return value
s = source( t+et, theta ) + noise;

# low pass filter : val = a*f + (1-a)*val
for testcase = 1:1:9;
  alpha = testcase * 0.1;
  val = s(1);
  for i = 1:length(f) 
    val = alpha*s(i) + (1-alpha)*val;
    lpf(testcase, i) = val;
  endfor
endfor

## f vs lpf
for i = 1:9 
  subplot(2,9,i);
  plot ( t, f, "r-+", t, lpf(i,:), "b-d" );
  grid;
  legend ( { "f",  [ "0.", num2str(i) ] }, "location", "southeast" );
  title ( [ "corr = ", num2str( corr( f, lpf(i,:)) )] )
endfor

## s vs lpf
for i = 1:9
  subplot(2,9,9+i);
  plot ( t, s, "r-+", t, lpf(i,:), "b-d" );
  grid;
  legend ( { "s",  [ "0.", num2str(i) ] }, "location", "southeast" );
  title ( [ "corr = ", num2str( corr( s, lpf(i,:)) )] )
endfor