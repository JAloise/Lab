%Julian Aloise
%40177178
%Question1
clear
clc

%declare input data
n = [-10:10]; 
length_n = length(n);

%step1: setup rectangular pulse x[n]
%x = [zeros(1,8),ones(1,5),zeros(1,8)]; 
x = zeros(1,21);
x(9:13)= 1;
subplot(2,1,1)
stem(n,x)
xlabel('n')
ylabel('x[n]')
title('A rectangular pulse')

%step2: define range of frequencies w over which the tranform will be computed
w = -pi:2*pi/100:pi-2*pi/100; 
length_w = length(w); %length = 100 
result_array = [-10:10];

%Step3: for loop
for i = 1:length_w
  sum = 0;
  for n1 = 1:length_n
  sum = sum + (x(n1) * exp(-1i*w(i)*n1)); %replaced-j by -1i end
  result_array(i) = sum;
end

%Plot DTFT
mag_of_complex = abs(result_array); %obtain magnitude of complex number subplot(2,1,2);
plot(w,mag_of_complex);
xlabel('w');
ylabel('mag');
title('DTFT');
