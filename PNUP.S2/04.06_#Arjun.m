clc;
 
disp ('****************************************************************');
disp ('*  convert a temperature in oC to other units of temperature.  *');
disp ('* by: (MAH), Student Reg. No.: () *');
disp ('****************************************************************');
disp (' '); 
for a=1:3;
disp ('Choices of Program:');
disp ('1 .convert from C to R ');
disp ('2 .convert from C to F ');
disp ('3 .convert from C to K');
disp ('*******************************************');
pil=input('What is your choice? ');
disp (' ');
 
switch pil
    case 1
        disp ('1 .convert from C to R ');
        n = input ('How many trial ? ');
        disp (' ');
        for i = 1:n;
        disp (['No. : ', num2str(i)]);
        %input
        c = input ('input temperature (C) = ');
        %process
        R = 4/5 * c;
        %output
        fprintf (' temperature R = %.2f R \n', R);
        end
    case 2
        disp ('1 .convert from C to F ');
        n = input ('How many trial ? ');
        disp (' ');
        for i = 1:n;
        disp (['No. : ', num2str(i)]);
        %input
        c = input ('input temperature (C) = ');
        %process
        F =(9/5 * c)+32;
        %output
        fprintf (' temperature F = %.2f F \n', F);
        end
    case 3
        disp ('1 .convert from C to K ');
        n = input ('How many trial ? ');
        disp (' ');
        for i = 1:n;
        disp (['No. : ', num2str(i)]);
        %input
        c = input ('input temperature (C) = ');
        %process
        K = c + 273;
        %output
        fprintf (' temperature K = %.2f K \n', K);
        end
    otherwise
        fprintf('Re-input the right choice...!!\n')
end
end
fprintf('Thank you friend\n\n');
disp('"Jangan pernah berputus asa dalam berdo`a kepada Allah');
disp('Karena kita tidak tahu kapan do`a itu diijabah"');
disp('~Ustadz Ishaq Subu Hafidzhahulah');
