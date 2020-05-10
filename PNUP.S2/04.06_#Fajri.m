clc;
disp ('************************************************************');
disp ('*               Branching Control on Matlab                *');
disp ('* by: (MFA), Student Reg. No.: () *');
disp ('************************************************************');
disp (' ');
disp ('1. Convert From Celcius to Reamur');
disp ('2. Convert From Celcius to Fahrenheit');
disp ('3. Convert From Celcius to Kelvin');
disp (' ');
pil=input('Whats your Choice?  = ');
disp (' ');
 
switch pil
    case 1
 cel=input('Input Temperature(C) = ');
 rea=4/5*cel;
 fprintf('Temperatur Reamur = %.2f\n',rea);
 
 
    case 2
 cel=input('Input Temperature(C) = ');
 fah=(9/5*cel)+32;
 fprintf('Temperatur Fahrenheit = %.2f\n',fah);
 
 
    case 3
 cel=input('Input Temperature(C) = ');
 kel=cel+273; 
 fprintf('Temperatur Kelvin = %.2f\n',kel);
 
   otherwise
        fprintf('Re-input the right choice...!!!!!!');
end
