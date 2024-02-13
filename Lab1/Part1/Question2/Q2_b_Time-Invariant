%Julian Aloise
%40177178 
%Question2b_Time-invariant_System1

clear 
clc

%y=x(n)^2
%input data
n1 = [0:1];
n2 = [1:10];

%input signals for i
%first set of values
x1 = n1;
x1_shifted(1:2) = x1(1); %first element of x1 goes into first and second index of x1_shifted
x1_shifted(3) = x1(2); % second element of x1 goes into third element of x1_shifted %second set of values
x2 = n2;
x2_shifted = zeros(1,11);
x2_shifted(1:2) = x2(1); 
 x2_shifted(3:11) = x2(2:10);

%output signals
%First set of values
y1 = x1.^2;
y1_shifted(1:2) = y1(1);
y1_shifted(3) = y1(2); 
y1_new = x1_shifted.^2; 

%second set of values
y2 = x2.^2;
y2_shifted(1:2) = y2(1); 
y2_shifted(3:11) = y2(2:10); 
y2_new = x2_shifted.^2;

%check if time-invariant
if (y1_new == y1_shifted)
  disp("The first system (n1) is time invariant")
else
  disp("The first system (n1) is time variant") 
end

if (y2_new == y2_shifted)
  disp("The first system (n2) is time invariant")
else
  disp("The first system (n2) is time variant") 
end
