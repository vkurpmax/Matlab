%Task-4d: Branching Control by using switch-case on Matlab
clc;
clear all;
disp ('****************************************************************');
disp ('*        Branching Control by using switch-case on Matlab      *');
disp ('*         by: (E),       Student Reg. No.: ()       *');
disp ('****************************************************************');
disp (' ');
fprintf ('    This program is used for calculate the total resistance\n    of some connected resistors.\n\n');
fprintf('    Choose a program:\n');
fprintf('    1: Series circuit \n');
fprintf('    2: Parallel circuit \n');
fprintf('    3: Combination circuit \n');
for i=1:50
pilihan=input('    What is your choice? : ');
disp(' ');
    switch pilihan
    case 1
        disp('Calculate the total resistance of series circuit');
        n=input('How many resistors that will be connected in a series circuit? = ');
        disp('Input the values of the resistors (R) in Ohm !');
        Rseri=0;
        for i=1:n
            R=input(['Resistor ', num2str(i),' (Ohm) = ']);
            Rseri=Rseri+R;
        end
        disp(' ');
        disp(['The total resistance of the series resistors is = <strong>', num2str(Rseri) , '</strong> Ohm']);
    case 2
        disp('Calculate the total resistance of parallel circuit');
        n=input('How many resistors that will be connected in a parallel circuit? = ');
        disp('Input the values of the resistors (R) in Ohm !');
        Rparallel=0;
        rparallel=0;
        for i=1:n
            r=input(['Resistor ', num2str(i),' (Ohm) = ']);
            R=1/r;
            rparallel=rparallel+R;
            Rparallel=1/rparallel;
        end
        disp(' ');
        disp(['The total resistance of the parallel resistors is = <strong>', num2str(Rparallel) , '</strong> Ohm']);
    case 3
        disp('Calculate the total resistance of combination circuit');
        n=input('How many resistors that will be connected in a parallel circuit? = ');
        disp('Input the values of the resistors (R) in Ohm !');
        Rparallel=0;
        rparallel=0;
        for i=1:n
            r=input(['Resistor ', num2str(i),' (Ohm) = ']);
            R=1/r;
            rparallel=rparallel+R;
            Rparallel=1/rparallel;
        end
        m=input('How many resistors that will be connected in a series circuit?\n(not included the resistance of parallel circuit) = ');
        disp('Input the values of the resistors (R) in Ohm !');
        Rseri=0;
        for i=1:m
            R=input(['Resistor ', num2str(i),' (Ohm) = ']);
            Rseri=Rseri+R;
        end
        Rtotal=Rparallel+Rseri;
        disp(' ');
        disp(['The total resistance of the combination resistors is = <strong>', num2str(Rtotal) , '</strong> Ohm']);
    otherwise
        fprintf('        <strong>Re-input the right choice...!!</strong>\n');
    end
    if (pilihan == 1 || pilihan == 2 || pilihan == 3)
        break
    end
end
fprintf('\n    Thank you! \n');
