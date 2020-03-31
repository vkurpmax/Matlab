%Task-2b: Input-Output Control
clc;
disp ('*********************************************');
disp ('*   Input-Output Control by using Matlab    *');
disp ('*    Calculating the Volume of Cylinder     *');
disp ('* by: (Vkurpmax), Student Reg. No.: () *');
disp ('*********************************************');
 
%declare variabels
r = input('Input the radius of the Cylinder in (cm), r = ');
t = input('Input the height of the Cylinder in (cm), t = ');
 
%process of calculations
V = pi * r^2 * t;
 
%show the results
fprintf ('\nVolume of the Cylinder = %f cm^3 \n\n',V);


disp ('*******************Thank you**********************');
