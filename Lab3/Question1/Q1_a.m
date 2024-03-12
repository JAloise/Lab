%Julian Aloise
%Question1a

clear
clc


period = input('Enter the number of periods: '); 
step_size = input('Enter the step size: '); 
global w;
w= -period*pi:step_size: period*pi;
for i=1:5
  sample_rate = input('Enter the sampling rate: ');
  N = floor(sample_rate*2);
  n = 0:2*(N-1);
  x = sin((2*pi/N)*n);
  
  subplot(2,1,1);
  stem(n,x);
  xlabel('n');
  ylabel('x[n]');
  title('Discrete Signal')
  
  x_fft = fft_x(x,n);
  
  subplot(2,1,2);
  plot(w,abs(x_fft));
  xlabel('w');
  ylabel('Magnitude of x[w]');
  title('Sample')
End






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
