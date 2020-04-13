%Task-3e: Calculate the total resistance of n series resistors
clc;
disp ('*********************************************');
disp ('* Looping Control by using for-end on Matlab*');
disp ('* by: ( A ), Student Reg. No.: () *');
disp ('*********e************************************');
 
disp('This program is used to calculate the total resistance of n pararel resistors');
n=input('How many resistors that will be connected in a pararel circuit? = ');
disp('Input the values of the resistors (R) in Ohm !');
disp('Please use p, 2p, 3p, … as the value of R !');
disp(' ');
Rpararel=0;
for i=1:n
    R=input(['Resistor ',num2str(i) ,' (Ohm) = ']);
    Rpararel= Rpararel + 1/R;
    Rtotal=1/Rpararel;   
end
disp(' ');
disp(['The total resistance of the pararel resistors is =  ', num2str(Rtotal) , ' Ohm']);
disp(' ');
disp('*========= JIKA ADA KEMAUAN DISITU ADA JALAN ===========*');
