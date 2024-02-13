%Julian Aloise 
%Part2_Question1 
%40177178

clear
clc

%initialize n,x and y
n = [0:9];
x = zeros(1,10);
x(2:4) = 1;
y = zeros(1,10);

for i = 1:10
    if (i == 1)
      y(i) = x(i);
    else
      y(i) = x(i) + (1/4) * y(i-1);
    end 
end

subplot(1,2,1);
stem(n,x);
xlabel('n');
ylabel('x[n]');
title('Input function x[n]')

subplot(1,2,2);
stem(n,y);
xlabel('n');
ylabel('y[n]');
title('Output function y[n]')
