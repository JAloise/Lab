%Julian Aloise
%Question 3

clc
clear

[d,Fs] = audioread('Original.wav'); 
[x,Fs] = audioread('Distorted.wav');
L = 2*Fs;
t = 0:L-1;

subplot(2,1,1); 
plot(t,d);
xlabel('t');
ylabel('d'); 
title('Original Signal'); 

subplot(2,1,2); 
plot(t,x);
xlabel('t');
ylabel('x');
title('Distorted Signal');

%MSE
MSE = 0;
for i = 1:L
  MSE = MSE + (d-x).^2;
end
MSE = MSE/L;
figure;
plot(t,MSE);
xlabel('t');
ylabel('MSE');
title('MSE of Original vs Distorted'); 

%c
step_Size = 0.001;
N = 16;
w = zeros(N,1);
for n = 1:L-N
  X = x(n:N-1+n);
  i = w'*X;
  e = i - d(n);
  w = w + step_Size*e';
  y(n) = i;
  E(n) = e^2;
end

figure;
Et = length(E);
plot(0:Et-1,E);
xlabel('t');
ylabel('MSE');
title('MSE of Original vs Recovered'); 
sound(y, Fs,16);
audiowrite('Recovered.wav',y,22050);
