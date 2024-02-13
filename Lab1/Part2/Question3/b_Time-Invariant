%Julian Aloise 
%Part2_Question3_TimeInvariant 
%40177178

clear 
clc

%input data
n = [0:1];
x1 = n;
x1_shifted(1:2) = x1(1); %first element of x1 goes into first and second index of x1_shifted
x1_shifted(3) = x1(2); % second element of x1 goes into third element of x1_shifted

%output signals
y1 = Sys1(x1);
y1_shifted(1:2) = y1(1);
y1_shifted(3) = y1(2);

y1_new = Sys1(x1_shifted);

%add zeros to the rest of the vector in order to compare y1_shifted with y1_new
y1_shifted(4:9) = zeros;

%check if time-invariant
if (y1_new == y1_shifted)
  disp("The system is time-invariant")
else
  disp("The system is time-variant") 
end
