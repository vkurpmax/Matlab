%Task-3f: Calculate the area of 3 circles.

clear;
clc;
disp ('************************************************************');
disp ('******** Looping Control by using for-end on Matlab ********');
disp ('* by: (Vkurpmax), Student Reg. No.: () *');
disp ('************************************************************');
disp(' '); 
disp('This program is used to calculate the area of each of 3 circles');
disp('Input the values of the radius (R) in cm !');
disp('Please use p, 2p, 3p, … as the value of R !');
disp(' ');
i = 1;
while i <= 3
    disp (['***** Circle-',num2str(i)]);
    r(i) = input ('Input the radius in cm = ');
    A(i) = pi * (r(i))^2;
    i = i + 1;
    disp(' ');
end
disp(' ');
i = 1;
while i <= 3
    fprintf ('The area of the Circle-%d is = %3.2f cm^2 \n \n',(i),A(i));
    i = i + 1;
end
disp(' ');
disp ('Thank you....');
