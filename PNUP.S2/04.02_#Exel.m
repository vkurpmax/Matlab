%Task-4b_2: Branching Control by using IF-ELSE on Matlab
clc;
clear all;
disp ('************************************************************');
disp ('*        Branching Control by using IF-ELSE on Matlab      *');
disp ('*        by: (E),     Student Reg. No.: ()      *');
disp ('************************************************************');
disp (' ');
fprintf ('    This program is used for calculate the determinant\n    and roots of a quadratic equation.\n\n');
a = input('Input a : ');
b = input('Input b : ');
c = input('Input c : ');
D = b * b - 4 * a * c;
fprintf('    Determinant of quadratic equation is <strong>%.3f</strong> \n', D);
if D > 0
    x1 = (-b + sqrt(D)) / (2*a);
    x2 = (-b - sqrt(D)) / (2*a);
    fprintf('    The roots of the quadratic equation is <strong>two real solutions</strong>\n');
    fprintf('    Value of <strong>x1 = %.3f</strong> and value of <strong>x2 = %.3f</strong> \n', x1, x2);
elseif D == 0
    x = (-b) / (2*a);
    fprintf('    The root of the quadratic equation is <strong>one real solution</strong>\n');
    fprintf('    Value of <strong>x1 = x2 = %.3f</strong>\n', x);
else
    x1 = (-b / (2*a) + (sqrt(-D)) / (2*a));
    x2 = (-b / (2*a) - (sqrt(-D)) / (2*a));
    fprintf('    The roots of the quadratic equation is <strong>complex solutions</strong>\n');
    fprintf('    Value of <strong>x1 = %.3f i</strong> and value of <strong>x2 = %.3f i</strong> \n', x1, x2);
end
fprintf('\n    Thank you!\n');
