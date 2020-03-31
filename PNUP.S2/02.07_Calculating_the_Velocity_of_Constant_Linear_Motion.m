%Task-2b: Input-Output Control
clc;
disp ('*********************************************');
disp ('*   Input-Output Control by using Matlab    *');
disp ('* Calculating the Velocity of Constant Linear Motion *');
disp ('* by: (Vkurpmax), Student Reg. No.: () *');
disp ('*********************************************');
 
%declare variabels
d = input('Input the Distance of the motion in (m), d = ');
t = input('Input the Tine of the motion in (second), t = ');

 
%process of calculations
V = d/t;
 
%show the results
fprintf ('\nVelocity of the motion = %f m/s \n\n',V);


disp ('*******************Thank you**********************');
