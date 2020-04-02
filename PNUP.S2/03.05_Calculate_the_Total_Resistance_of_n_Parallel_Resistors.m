%Task-3d: Calculate the total resistance of n parallel resistors
clear;
clc;

disp ('************************************************************');
disp ('******** Looping Control by using for-end on Matlab ********');
disp ('* by: (Vkurpmax), Student Reg. No.: () *');
disp ('************************************************************');
 
disp('This program is used to calculate the total resistance of n parallel resistors');
n=input('How many resistors that will be connected in a parallel circuit? = ');
disp('Input the values of the resistors (R) in Ohm !');
disp('Please use p, 2p, 3p, … as the value of R !');

for i=1:n
    r(i)=input(['Resistor ', num2str(i),' (Ohm) = ']);   
end

R_parallel = 1/sum(1./r);
disp(' ');
disp(['The total resistance of the parallel resistors is = ', num2str(R_parallel) , ' Ohm']);
disp('Thanks ^_^');
disp(' ');
