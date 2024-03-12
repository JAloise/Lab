%Julian Aloise
%Question1b

clear
clc

sample_rate=input('Enter the sampling rate: ');
N = sample_rate*2;
global w;

for i=1:5
  windowsize = input('Enter the window size:'); 
  w = -windowsize*pi:0.05: windowsize*pi;
  floor(N);
  n = 0: 2*N-1;
  x = sin((2*pi/N)*n);
  x_fft = fftx(x,n);
  
  subplot(2,1,1);
  stem(n,x);
  xlabel('n');
  title('Discrete Signal')
  
  subplot(2,1,2);
  plot(w,abs(x_fft));
  xlabel('w');
  ylabel('magnitude of x[w]');
  title('Fourier Transform')
end




%declared external function
function [fft_x]=fftx(x,n) 
global w;
vector = zeros(1,length(w)); 
for i = 1:length(w)
  sum = 0;
  for a = 1:length(n)
    sum = sum+(x(a)*exp(-1i*w(i)*n(a))); 
  end;
  vector(i)=sum;
end;
fft_x=vector;
