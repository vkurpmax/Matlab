%Task-4b: Branching Control by using IF-ELSE on Matlab
clc;
disp ('************************************************************');
disp ('*        Branching Control by using IF-ELSE on Matlab      *');
disp ('*        by: (E),     Student Reg. No.: ()      *');
disp ('************************************************************');
disp (' '); 
clear all;
fprintf ('    This program is used for calculate the charge of\n    used electricity for a month.\n\n');
id = input('Input your Customer ID : ');
daya = input('Input your electricity power : ');
if (daya ~= 450 && daya ~= 900 && daya ~= 1300)
    for i=1:50
        disp('    There are only 450VA, 900VA-RTM, or 1300VA power available.');
        daya = input('    Please reinput your electricity power : ');
        if (daya == 450 || daya == 900 || daya == 1300)
            break;
        end
    end
end
if daya == 450
    tarif = 415;
    fprintf(' @ Tariff for 450VA is <strong>Rp415/kWh</strong>\n');
elseif daya == 900
    tarif = 1352;
    fprintf(' @ Tariff for 900VA-RTM is <strong>Rp1352/kWh</strong>\n');
else
    tarif = 1467.28;
    fprintf(' @ Tariff for 1300VA is <strong>Rp1467.28/kWh</strong>\n');
end
kWhlama = input('Input your last month usage (kWh) : ');
kWhbaru = input('Input your this month usage (kWh) : ');
kWh = kWhbaru - kWhlama;
charge = tarif * kWh;
fprintf ('\n    So your charge for this month is <strong> Rp%.2f </strong> \n', charge);
disp ('    Do not forget to pay your bills. Thank you!');
