%Julian Aloise
%40177178
%Question3a

clear 
clc

%declare input n
n = [0:10];

%x[n] signal
x = exp(-2.*abs(n)).*sin((2*pi/36).*n);
x_mirror = exp(-2.*abs(-n)).*sin((2*pi/36).*(-n));

%plot the function x[n]
subplot(2,2,1); stem(n,x);
xlabel('n') ylabel('x[n]')
title ('Function x[n]');

%now we plot the mirror
subplot(2,2,2); stem(-n,x_mirror);
xlabel('-n')
ylabel('x[n]')
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
