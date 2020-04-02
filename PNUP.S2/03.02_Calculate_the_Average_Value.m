%Task-3b: Calculate the average value

clc;
disp ('************************************************************');
disp ('******** Looping Control by using for-end on Matlab ********');
disp ('* by: (Vkurpmax), Student Reg. No.: () *');
disp ('************************************************************');

clear all;
n = input('Input n = ');
jumlah=0;
for i=1:n
x = input('Input a number = ');
jumlah=jumlah+x;
end
rata2=jumlah/n;
fprintf('The average value of those numbers are = %d \n',rata2);
