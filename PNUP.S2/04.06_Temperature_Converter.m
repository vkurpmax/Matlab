%Task-4b: Branching Control to Covert Temperature by using switch-case
clear;
clc;
disp ('***************************************************************');
disp ('*     Branching Control by using SWITCH-CASE on Matlab        *');
disp ('*                    Temperature Converter                    *');
disp ('* by: (Putu Herdy Kurniawan),     Student Reg. No.: (44419020)*');
disp ('***************************************************************');
disp (' ');

fprintf('Choose a program:\n');
fprintf('1: Convert from C to R \n');
fprintf('2: Convert from C to F \n');
fprintf('3: Convert from C to K \n \n');
pilihan=input('What is your choice? ');
disp(' ');

switch pilihan
    case 1
        C = input('Input your temperature (in Celcius): ');
        R = 4/5 * C;
        disp('------------------------------------------');
        fprintf('Your temperature (in Reaumur) is %.1f °R\n',R);
    case 2
        C = input('Input your temperature (in Celcius): ');
        F = 9/5 * C +32;
        disp('--------------------------------------------');
        fprintf('Your temperature (in Fahrenhait) is %.1f °F\n',F);
    case 3
        C = input('Input your temperature (in Celcius): ');
        K = C + 273;
        disp('------------------------------------------');
        fprintf('Your temperature (in Kelvin) is %.1f K\n',K);
    otherwise
        fprintf('Please input the right choice...!!');
end
disp(' ');
fprintf('Thank you for using my program! \n');
