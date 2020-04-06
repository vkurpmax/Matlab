%Task: calculate the total resistance of n parallel resistors by using for-end.
clc;
disp ('*****************************************************');
disp ('***** Looping Control by using for-end on Matlab ****');
disp ('* by: SJT , Student Reg. No.:  *');
disp ('*****************************************************');
 
disp('This program is used to calculate the total resistance of n parallel resistors by using for-end.');
n=input('How many resistors that will be connected in a series circuit? = ');
disp('Input the values of the resistors (R) in Ohm !');
disp('Please use p, 2p, 3p, … as the value of R !');
Rpararel=0;
for i=1:n
    R=input(['Resistor ', num2str(i),' (Ohm) = ']);
    Rpararel=Rpararel+1/R;
end
disp(' ');
disp(['The total resistance of the series resistors is = ', num2str(1/Rpararel) , ' Ohm']);
