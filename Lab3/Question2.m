%Julian Aloise
%Question2

clear
clc

period = input('Enter the number of periods: ');
step_size = input('Enter the step size: ');
global w;
w = [-(period) * pi : step_size : (period) * pi]; 

for loop = 1:5
  sample_rate = input('Enter the sample rate(N): '); 
  N = floor(2*sample_rate);
  n = 0:2*N-1;
  x = 0.5*sin((2*pi/N)*n) + 0.33 * sin((4*pi/N)*n); 
  
  figure
  subplot(2,1,1);
  stem(n,x);
  xlabel('n'); 
  ylabel('x[n]'); 
  title('Discrete Signal'); 
  
  x_fft = fft_x(x,n);
  
  subplot(2,1,2); 
  polar(w,abs(x_fft)); 
  xlabel('w'); 
  ylabel('x(e^jw)'); 
  title('Polar Coordinates'); 
end





%declared external function
function fftx=fft_x(x,n) %fft_x name of function 
global w;
vector = zeros(1,length(w));
% using for loop
for i = 1:length(w)
  sum = 0;
  for a = 1:length(n)
    sum = sum+(x(a)*exp(-1i*w(i)*n(a)));%replace -j by -1i 
  end;
  vector(i)=sum;
end;
fftx=vector; %results of function
