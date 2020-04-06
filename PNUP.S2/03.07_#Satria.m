clc;
disp ('*******************************************************************');
disp ('***** Calculate the area of 3 circles by using while on Matlab ****');
disp ('********* by: SJT , Student Reg. No.:  *******');
disp ('*******************************************************************');
 
clear all;
i = 1;
while i <= 3
    
disp (['***** Circle-',num2str(i)]);
    jari(i) = input ('Input the radius in cm = ');
    L(i) = pi * jari(i)^2;
    fprintf ('The area of the circle is = %3.2f cm^2 \n \n',L(i));
    i = i+1;
end
