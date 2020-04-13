%Task-4a: Branching Control by using IF-ELSE on Matlab
%To calculate determinant and roots of a quadratic equation.
clear
clc;
disp ('***************************************************************');
disp ('*        Branching Control by using IF-ELSE on Matlab         *');
disp ('*                  Quadratic Equation Solver                  *');
disp ('* by: (vkurpmax),     Student Reg. No.: ()*');
disp ('***************************************************************');
disp (' '); 
 
disp ('Quadratic Equation Form is:');
disp (' ');
syms x a b c;
y = a*x^2 + b*x + c == 0;
pretty(y)
disp ('************************************');

a = input('Input the value of a: ');
b = input('Input the value of b: ');
c = input('Input the value of c: ');
disp (' ');
disp ('Your quadratic equation is: ');
disp (' ');
syms x;
y = a*x^2 + b*x + c == 0;
pretty(y)

D = b^2 - 4*a*c;
fprintf ('The determinant is : %.2f \n', D);

if D > 0
    root1 = (-b + sqrt(D)) / (2*a);
    root2 = (-b - sqrt(D)) / (2*a);
    disp ('The quadratic equation has two real solution, the roots are:');
    disp (' ');
    fprintf ('x1 = %.2f \n', root1);
    fprintf ('x2 = %.2f \n', root2);
    
elseif D == 0
    root1 = -b / (2*a);
    root2 = root1;
    disp ('The quadratic equation has one real solution, the roots are:');
    disp (' ');
    fprintf ('x1 = %.2f \n', root1);
    fprintf ('x2 = %.2f \n', root2);
    
else
    root1 = -b / (2*a);
    root2 = root1;
    tail = sqrt(-D)/(2*a);
    disp ('The quadratic equation has complex solution, the roots are:');
    disp (' ');
    fprintf ('x1 = %.2f + %.2f i \n', root1, tail);
    fprintf ('x2 = %.2f - %.2f i \n', root2, tail);
end
