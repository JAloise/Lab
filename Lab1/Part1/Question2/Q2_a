%Julian Aloise
%40177178
%Question2a

clear 
clc

%declare inputs
n = [0:10];

%declare the input signals
x1 = sin((2*pi/10)*n);
x2 = cos((2*pi/10)*n); 
x3 = x1 + x2;

%declare the output signals
y1 = 2*x1;
y2 = 2*x2;
y3 = 2*x3;
y4 = y1 + y2;

%determine if linear or non-linear
if(y3 == y4)
  disp('A Linear System')
else
  disp('System is not linear') end

%Plot the input and output signals in one frame, 3 rows and 2 columns
%x1->y1
subplot(3,2,1)
stem(n,x1)
xlabel('n')
ylabel('x1')
subplot(3,2,2)
stem(n,y1)
xlabel('n')
ylabel('y1')

%x2->y2
subplot(3,2,3)
stem(n,x2)
xlabel('n')
ylabel('x2')
subplot(3,2,4)
stem(n,y2)
xlabel('n')
ylabel('y2')

%x3->y3
subplot(3,2,5)
stem(n,x3)
xlabel('n')
ylabel('x3')
subplot(3,2,6)
stem(n,y3)
xlabel('n')
ylabel('y3')
