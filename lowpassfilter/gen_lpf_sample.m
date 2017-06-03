# time
t = 0:0.5:30;

# error function : nornal distribution
# time delay ( -0.2sec < et < 0.2sec )
# noise 
et = stdnormal_rnd(1,length(t))/10+0.2; 
noise = stdnormal_rnd(1,length(t))*15; 

# signal source function 
function retval = source ( t )
  retval = 100*sin(2*pi*1/120*t) + 100*sin( 2*pi*1/10*t) + 40*sin( 2*pi*1/2*t );
endfunction

# raw data
f = source(t);

# sensor return value
s = source( t+et ) + noise;

# low pass filter : val = a*f + (1-a)*val
for testcase = 1:1:9;
  alpha = testcase * 0.1;
  val = s(1);
  for i = 1:length(f) 
    val = alpha*s(i) + (1-alpha)*val;
    lpf(testcase, i) = val;
  endfor
endfor

