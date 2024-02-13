%Julian Aloise
%40177178
%Question3b

clear
clc

%initiate input data
n = [-5:5];

%initiate signal and mirror signal
x = (-1).^(n-1);
x_mirror = (-1).^((-n)-1);

%plot signal and mirror signal
subplot(2,2,1); stem(n,x);
xlabel('n') ylabel('x[n]')
title ('Function x[n]');
subplot(2,2,2); 
stem(-n,x_mirror);
xlabel('-n')
ylabel('x[-n]')
title('Mirror Function x[-n]');

%Even and Odd components
even_comp = (1/2) * (x+x_mirror); 
subplot(2,2,3); 
stem(n,even_comp);
xlabel('n')
ylabel('Evencomponent') 
title('Even component of x[n]');
odd_comp = (1/2) * (x-x_mirror); 
subplot(2,2,4); 
stem(n,odd_comp);
xlabel('n') 
ylabel('Oddcomponent')
title('Odd component of x[n]');
