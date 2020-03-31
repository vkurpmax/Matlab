%Task-2b: Input-Output Control
clc;
disp ('*********************************************');
disp ('*   Input-Output Control by using Matlab    *');
disp ('* by: (Vkurpmax), Student Reg. No.: () *');
disp ('*********************************************');
 
%declare variabels
p = input('Input your own p = ');
q = input('Input your own q = ');
 
%process of calculations
P = p * 2 + p ^ 2;
Q = p - P / (50*q);
R = Q * 1.8 / pi;
S = abs (R);
T = sin (pi/(0.1*S));
 
%show the results
fprintf ('\np = %f \n',p);
fprintf ('q = %f \n',q);
fprintf ('P = p * 2 + p ^ 2 = %f \n',P);
fprintf ('Q = p - P / (50 * q) = %f \n',Q); %show the Q
fprintf ('R = Q * 1.8 / pi = %f \n',R); %show the R
fprintf ('S = abs (R) = %f \n',S); %show the S
fprintf ('T = sin (pi / (0.1 * S)) = %f \n',T); %show the T

disp ('*******************Thank you**********************');
