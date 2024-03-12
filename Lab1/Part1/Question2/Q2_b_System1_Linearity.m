%Julian Aloise
%40177178 
%Question2b_Linearity_System1

clear
clc

%y=x(n)^2
%input data
n1 = [0:1];
n2 = [1:11];

%input signals
x1 = n1;
x2 = n1.^2;
x3 = x1 + x2;
x1_2 = n2;
x2_2 = n2.^2;
x3_2 = x1_2 + x2_2;

%response signals
y1 = x1.^2;
y2 = x2.^2;
y3 = x3.^2;
y4 = y1 + y2;
y1_2 = x1_2.^2;
y2_2 = x2_2.^2;
y3_2 = x3_2.^2;
y4_2 = y1_2 + y2_2;

%determine if linear or non-linear
if(y3 == y4)
  disp('(n data set) A Linear System')
else
  disp('(n data set) System is not linear') end

%determine if linear or non-linear
if(y3_2 == y4_2)
  disp('(n2 data set) A Linear System')
else
  disp('(n2 data set) System is not linear') end
