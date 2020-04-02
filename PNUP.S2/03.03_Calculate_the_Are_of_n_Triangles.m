%Task-3c: Calculate the area of n triangles
clc;
disp ('************************************************************');
disp ('******** Looping Control by using for-end on Matlab ********');
disp ('* by: (Vkurpmax), Student Reg. No.: () *');
disp ('************************************************************');
 
clear all;
n = input('Input n = ');
 
for i = 1:n
    disp (['***** Triangle-',num2str(i)]);
    alas(i) = input ('Input the base in cm = ');
    tinggi(i) = input ('Input the height in cm = ');
    L(i) = 0.5 * alas(i) * tinggi(i);
    fprintf ('The area of the triangle is = %3.2f cm^2 \n \n',L(i));
end
disp ('Thank you....');
