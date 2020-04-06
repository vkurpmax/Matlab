%Task-3f: Calculate the area of 3 circle using while
clc;
disp ('************************************************');
disp ('* Looping Control by using while-end on Matlab *');
disp ('*   by: (E),  Student Reg. No.: ()  *');
disp ('************************************************');
clear all;
disp('This program is used to calculate the area of 3 circles');
i = 0;
while i <= 3
    i = i+1;
    disp (['***** Circle-',num2str(i)]);
    radius(i) = input ('Input the radius in cm = ');
    L(i) = pi * radius(i)^2;
    fprintf ('The area of the triangle is = %3.2f cm^2 \n \n',L(i));
end
disp ('Thank you....');
