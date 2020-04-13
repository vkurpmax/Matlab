%Task-4d: Branching Control by using switch-case on Matlab
clc;
clear all;
disp ('****************************************************************');
disp ('*        Branching Control by using switch-case on Matlab      *');
disp ('*         by: (E),       Student Reg. No.: ()       *');
disp ('****************************************************************');
disp (' ');
fprintf ('    This program is used for convert a temperature\n    in oC to other units of temperature.\n\n');
fprintf('    Choose a program:\n');
fprintf('    1: Convert from oC to oR \n');
fprintf('    2: Convert from oC to oF \n');
fprintf('    3: Convert from oC to oK \n');
for i=1:50
pilihan=input('    What is your choice? : ');
disp(' ');
    switch pilihan
    case 1
        disp('Convert oC to oR');
        C=input('Input the temperature (in oC): ');
        R=4/5*C;
        fprintf('The temperature is %.2f oR\n', R);
    case 2
        disp('Convert oC to oF');
        C=input('Input the temperature (in oC): ');
        F=9/5*C+32;
        fprintf('The temperature is %.2f oF\n', F);
    case 3
        disp('Convert oC to oK');
        C=input('Input the temperature (in oC): ');
        K=C+273;
        fprintf('The temperature is %.2f oK\n', K);
    otherwise
        fprintf('        <strong>Re-input the right choice...!!</strong>\n')
    end
    if (pilihan == 1 || pilihan == 2 || pilihan == 3)
        break
    end
end
fprintf('Thank you \n');
