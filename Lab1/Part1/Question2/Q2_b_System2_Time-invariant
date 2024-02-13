%Julian Aloise
%40177178 
%Question2b_Time-invariant_System2
clear 
clc

%y = 2x(n) + 5*imp(n)
%input data
n1 = [0:1];
n2 = [1:10]; %https://www.mathworks.com/help/signal/ug/impulse-response.html
imp1 = [1; zeros(1)];

%subplot(2,1,1)
%stem(n1,imp1)
imp2 = [1; zeros(10,1)];

%subplot(2,1,2)
%stem(n2,imp2)
x1 = n1;
x1_shifted(1:2) = x1(1); %first element of x1 goes into first and second index of x1_shifted
x1_shifted(3) = x1(2) % second element of x1 goes into third element of x1_shifted

%second set of values
x2 = n2;
x2_shifted = zeros(1,11);
x2_shifted(1:2) = x2(1);
x2_shifted(3:11) = x2(2:10);

%output signals
%First set of values
y1 = 2.*x1 + 5.*imp1; 
y1_shifted(1:2) = y1(1); 
y1_shifted(3) = y1(2);
y1_new = 2.*x1_shifted + 5.*imp1;

%second set of values
y2 = 2.*x2 + 5.*imp2; 
y2_shifted(1:2) = y2(1); 
y2_shifted(3:11) = y2(2:10);
y2_new = 2.*x2_shifted + 5.*imp2;

%check if time-invariant
if (y1_new == y1_shifted)
  disp("(n1 data set) The system is time invariant")
else
  disp("(n1 data set) The system is time variant")
end

if (y2_new == y2_shifted)
  disp("(n2 data set)The system is time invariant")
else
  disp("(n2 data set)The system is time variant")
end
