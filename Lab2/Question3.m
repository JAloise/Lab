%Julian Aloise
%40177178
%Question3

clear
clc

%declare input data
n = [-10:10]; 
length_n = length(n);

%rectangular pulse x[n]
x = zeros(1,21);
x(9:13)= 1;
subplot(2,1,1)
stem(n,x)
xlabel('n')
ylabel('x[n]')
title('A rectangular pulse')

%Question2 using function fft
xfft = fft(x);
%ifft compute the inverse discrete Fourier transform
xifft = ifft(xfft); subplot(2,1,2);
stem(n, xifft);
xlabel('n')
ylabel('xifft') title('Signal from "ifft"')
