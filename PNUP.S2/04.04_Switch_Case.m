%Task-4c: Branching Control by using switch-case on Matlab
clear;
clc;
disp ('***************************************************************');
disp ('*        Branching Control by using IF-ELSE on Matlab         *');
disp ('* by: (vkurpmax),     Student Reg. No.: ()*');
disp ('***************************************************************');
 
fprintf('Choose a program:\n');
fprintf('1: Calculate the area of a square \n');
fprintf('2: Calculate the area of a rectangle \n');
fprintf('3: Calculate the area of a circle \n \n');
pilihan=input('What is your choice? ');
 
switch pilihan
case 1
    a=input('Input the lenght of the square (in cm): ');
    luas=a*a;
    fprintf('The area of the square is %3.2f cm^2\n',luas);
case 2
    a=input('Input the lenght of the rectangle (in cm): ');
    b=input('Input the width of the rectangle (in cm): ');
    luas=a*b;
    fprintf('The area of the rectangle is %3.2f cm^2\n',luas);
case 3
    r=input('Input the radius of the circle (in cm): ');
    luas=3.14*r^2;
    fprintf('The area of the circle is %3.2f cm^2\n',luas);
otherwise
    fprintf('Re-input the right choice...!!')
end
fprintf('Thank you \n');
