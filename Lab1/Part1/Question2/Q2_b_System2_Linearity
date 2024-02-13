%Julian Aloise
%40177178 
%Question2b_Linearity_System2

clear 
clc

%y = 2x(n) + 5*imp(n)
%input data
n1 = [0:1];
n2 = [0:10];
imp1 = [1; zeros(1)];
%subplot(2,1,1)
%stem(n1,imp1)
imp2 = [1; zeros(10,1)];

%subplot(2,1,2)
%stem(n2,imp2)
%n1
x1 = n1;
y1 = 2.*x1 + 5.*imp1;

%stem(x1,y1);
x2 = 2.*x1;
y2 = 2.*x2 + 5.*imp1;
x3 = x1 + x2;
y3 = 2.*x3 + 5.*imp1;
y4 = y1 + y2;

%determine if linear or non-linear
if(y3 == y4)
    disp('(n1 data set) A Linear System')
else
  disp('(n1 data set) System is not linear')
end

%n2
x1_2 = n2;
y1_2 = 2.*x1_2 + 5.*imp2;
x2_2 = 2.*x1_2;
y2_2 = 2.*x2_2 + 5.*imp2;
x3_2 = x1_2 + x2_2;
y3_2 = 2.*x3_2 + 5.*imp2;
y4_2 = y1_2 + y2_2;

%determine if linear or non-linear
if(y3_2 == y4_2)
  disp('(n2 data set) A Linear System')
else
  disp('(n2 data set) System is not linear') end
