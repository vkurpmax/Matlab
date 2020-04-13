%Task-4a: Branching Control by using IF-ELSE on Matlab
%To calculate the total resistance of some connected resistors.
clear
clc;
disp ('***************************************************************');
disp ('*        Branching Control by using IF-ELSE on Matlab         *');
disp ('*                Total Resistance Calculator                  *');
disp ('* by: (vkurpmax),     Student Reg. No.: ()*');
disp ('***************************************************************');
disp (' '); 
disp('NB:Input the values of the resistors (R) in Ohm !');
disp (' ');
 
disp ('Type of Resistor Circuit:');
disp ('1. Series');
disp ('2. Parallel');
disp ('3. Combination of series and parallel');
choice = input('Your type of Circuit: ');
disp ('*************************************');

switch choice
    case 1
        n = input('How many resistors that will be connected in a series circuit? = ');
        Rseri = 0;     
        for i = 1:n
            R = input(['Resistor ', num2str(i),' (Ohm) = ']);
            Rseri = Rseri+R;
        end
            disp(' ');
            disp(['Total resistance of the series resistors is = ', num2str(Rseri) , ' Ohm']);      
        
    case 2
        n = input('How many resistors that will be connected in a parallel circuit? = ');
        for i=1:n
            r(i)=input(['Resistor ', num2str(i),' (Ohm) = ']);   
        end
        R_parallel = 1/sum(1./r);
        disp(' ');
        disp(['Total resistance of the parallel resistors is = ', num2str(R_parallel) , ' Ohm']);
        
    case 3
        n = input('How many series resistors? = ');
        m = input('How many parallel resistors? = ');
        disp (' ');
        
        Rseri = 0;     
        for i = 1:n
            R = input(['Resistor Seri ', num2str(i),' (Ohm) = ']);
            Rseri = Rseri + R;
        end
        disp (' ');
        for i = 1:m
            r(i)=input(['Resistor Parallel ', num2str(i),' (Ohm) = ']);   
        end
        R_parallel = 1/sum(1./r);
        disp(' ');
        disp(['Total resistance of the series resistors is = ', num2str(Rseri) , ' Ohm']); 
        disp(['Total resistance of the parallel resistors is = ', num2str(R_parallel) , ' Ohm']);
        disp ('---------------------------------------------------------');
        disp(['Total resistance on the parallel circuit is = ', num2str(Rseri + R_parallel) , ' Ohm']);
end
