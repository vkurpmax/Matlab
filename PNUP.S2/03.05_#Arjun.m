clc;
disp ('****************************************************************');
disp ('*    Calculate the total resistance of n parallel resistors    *');
disp ('* by: (MAH), Student Reg. No.: () *');
disp ('****************************************************************');
 
disp('This program is used to calculate the total resistance of n parallel resistors');
n=input('How many resistors that will be connected in a parallel circuit? = ');
disp('Input the values of the resistors (R) in Ohm !');
disp('Please use p, 2p, 3p, … as the value of R !');
rp=0;
Rp=0;
for i=1:n
    r=input(['Resistor ', num2str(i),' (Ohm) = ']);
    R=1/r;
    rp = rp+R;
    Rp = 1/rp;
    
end
disp(' ');
fprintf('The total resistance of the parallel resistors is = %.2f Ohm \n\n', Rp);
disp('Thanks ^_^');
 
disp('Imam Syafi`i Rahimahulah berkata :');
disp('"Saya tidak melihat ada sesuatu yang bermanfaat');
disp('untuk menghadapi wabah daripada TASBIH"');
disp('Hilyatul Aulia 275/7');
