%Task-2b: Input-Output Control
clc;
disp ('*********************************************');
disp ('*   Input-Output Control by using Matlab    *');
disp ('* Calculating the Volume of Parallelepiped  *');
disp ('* by: (Vkurpmax), Student Reg. No.: () *');
disp ('*********************************************');
 
%declare variabels
l = input('Input the length of the Parallelepiped in (cm), l = ');
w = input('Input the width of the Parallelepiped in (cm), w = ');
h = input('Input the height of the Parallelepiped in (cm), h = ');
 
%process of calculations
V = l * w * h;
 
%show the results
fprintf ('\nVolume of the Parallelepiped = %f cm^3 \n\n',V);


disp ('*******************Thank you**********************');
