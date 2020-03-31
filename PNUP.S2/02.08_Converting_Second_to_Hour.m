%Task-2b: Input-Output Control
clc;
disp ('*********************************************');
disp ('*   Input-Output Control by using Matlab    *');
disp ('*   Time units Converter: Second to Hour    *');
disp ('* by: (Vkurpmax), Student Reg. No.: () *');
disp ('*********************************************');
 
%declare variabels
s = input('Input the Time in (second), s = ');
 
%process of calculations
H = s/3600;
 
%show the results
fprintf ('\nTime in (Hour) = %f Hour \n\n',H);


disp ('*******************Thank you**********************');
