%Julian Aloise 
%Part2_Question3_Linear 
%40177178

clear
clc

%input data
n = [0:1];

%input sequence
x1 = n;
x2 = 2.*n;
x3 = x1 + x2;

%output
y1 = Sys1(x1);
y2 = Sys1(x2);
y3 = Sys1(x3);
y4 = y1 + y2;

%check for linearity
if(y3 == y4)
  disp('The system is linear')
else
  disp('The system is not linear')
end
