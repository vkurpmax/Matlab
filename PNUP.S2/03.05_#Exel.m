%Task-3e: Calculate the total resistance of n parallel resistors
clc;
disp ('*********************************************');
disp ('* Looping Control by using for-end on Matlab*');
disp ('* by: (E),  Student Reg. No.: () *');
disp ('*********************************************');
 
disp('This program is used to calculate the total resistance of n parallel resistors');
n=input('How many resistors that will be connected in a parallel circuit? = ');
disp('Input the values of the resistors (R) in Ohm !');
disp('Please use p, 2p, 3p, … as the value of R !');
Rparallel=0;
rparallel=0;
for i=1:n
    r=input(['Resistor ', num2str(i),' (Ohm) = ']);
    R=1/r;
    rparallel=rparallel+R;
    Rparallel=1/rparallel;
end
disp(' ');
disp(['The total resistance of the parallel resistors is = ', num2str(Rparallel) , ' Ohm']);
disp('Thanks ^_^');
disp(' ');
