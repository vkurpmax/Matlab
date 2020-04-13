%Task-4b: Branching Control to Calculate the charge of used electricity for
%month
clear;
clc;
disp ('***************************************************************');
disp ('*        Branching Control by using IF-ELSE on Matlab         *');
disp ('*               Electricity Charge Calculator                 *');
disp ('* by: (vkurpmax),     Student Reg. No.: ()*');
disp ('***************************************************************');
disp (' ');

disp ('List of Power Types:');
disp ('1 . 450 VA');
disp ('2 . 900 VA-RTM');
disp ('3 . 1300 VA');
disp ('************************************');
disp (' ');
daya = input('Please input your choice: ');
while daya <1 || daya >3
       daya = input ('The choice is not available, please inpur your choice again!: ');
end

if daya == 1
    disp (' ');
    disp ('Your Power Type: 450 VA - Subsidized');
    disp ('Charge per Kwh : Rp 415');
    disp ('------------------------------------------------');
    disp ('Please input your data below!');
    disp (' ');
    custID = input('Customer ID: ');
    prevKWh = input('Previous electricity meter number (in Kwh): ');
    latestKWh = input('Latest electricity meter number (in Kwh)  : ');
    disp ('------------------------------------------------');
    usage = latestKWh - prevKWh;
    cost = 415 * usage;    
    fprintf ('Usage      : %.1f KWh \n', usage);
    fprintf ('Total Cost : Rp %.2f \n', cost);
    

elseif daya == 2
    disp (' ');
    disp ('Your Power Type: 900 VA-RTM - Non Subsidized');
    disp ('Charge per Kwh : Rp 1.352');
    disp ('------------------------------------------------');
    disp ('Please input your data below!');
    disp (' ');
    custID = input('Customer ID: ');
    prevKWh = input('Previous electricity meter number (in Kwh): ');
    latestKWh = input('Latest electricity meter number (in Kwh)  : ');
    disp ('------------------------------------------------');
    usage = latestKWh - prevKWh;
    cost = 1352 * usage;    
    fprintf ('Usage      : %.1f KWh \n', usage);
    fprintf ('Total Cost : Rp %.2f \n', cost);
    
else
    disp (' ');
    disp ('Your Power Type: 1300 VA - Non Subsidized');
    disp ('Charge per Kwh : Rp 1.467,28');
    disp ('------------------------------------------------');
    disp ('Please input your data below!');
    disp (' ');
    custID = input('Customer ID: ');
    prevKWh = input('Previous electricity meter number (in Kwh): ');
    latestKWh = input('Latest electricity meter number (in Kwh)  : ');
    disp ('------------------------------------------------');
    usage = latestKWh - prevKWh;
    cost = 1467.28 * usage;    
    fprintf ('Usage      : %.1f KWh \n', usage);
    fprintf ('Total Cost : Rp %.2f \n', cost);
end
