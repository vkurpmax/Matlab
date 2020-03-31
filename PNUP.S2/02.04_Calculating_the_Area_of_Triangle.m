%Task-2b: Input-Output Control
clc;
disp ('*********************************************');
disp ('*   Input-Output Control by using Matlab    *');
disp ('*     Calculating the Area of Rectangle     *');
disp ('* by: (Vkurpmax), Student Reg. No.: () *');
disp ('*********************************************');
 
%declare variabels
l = input('Input the length of the rectangle in (cm), l = ');
w = input('Input the width of the rectangle in (cm), w = ');
 
%process of calculations
A = l * w;
 
%show the results
fprintf ('\nArea of the Rectangle = %f cm^2 \n\n',A);


disp ('*******************Thank you**********************');
