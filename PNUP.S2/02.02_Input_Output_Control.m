%Task-2a: Input-Output Control
disp ('*********************************************');
disp ('*   Input-Output Control by using Matlab    *');
disp ('* by: (vkurpmax), Student Reg. No.: () *');
disp ('*********************************************');
 
%declare variabels
p = 20;   	%use your own p value
q = 40;	    %use your own q value
 
%process of calculations
P = p * 2 + p ^ 2;
Q = p - P / (50*q);
R = Q * 1.8 / pi;
S = abs (R);
T = sin (pi/(0.1*S));
 
%show the results
disp ('');
disp ('p =  ');
disp (p);
disp ('q =  ');
disp (q);
disp ('P = p * 2 + p ^ 2');
disp (P);
disp ('Q = p - P / (50*q)');
disp (Q);
disp ('R = Q * 1.8 / pi ');
disp (R);
disp ('S = abs (R)');
disp (S);
disp ('T = sin (pi/(0.1*S))');
disp (T);
disp ('*******************Thank you**********************');
