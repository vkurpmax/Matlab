%Task-3d: Calculate the total resistance of n series resistors
clc;
disp ('************************************************************');
disp ('******** Looping Control by using for-end on Matlab ********');
disp ('* by: (Vkurpmax), Student Reg. No.: () *');
disp ('************************************************************');
 
disp('This program is used to calculate the total resistance of n series resistors');
n=input('How many resistors that will be connected in a series circuit? = ');
disp('Input the values of the resistors (R) in Ohm !');
disp('Please use p, 2p, 3p, … as the value of R !');
Rseri=0;
for i=1:n
    R=input(['Resistor ', num2str(i),' (Ohm) = ']);
    Rseri=Rseri+R;
end
disp(' ');
disp(['The total resistance of the series resistors is = ', num2str(Rseri) , ' Ohm']);
disp('Thanks ^_^');
disp(' ');
