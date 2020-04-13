%Task-4a: Branching Control by using IF-ELSE on Matlab
clc;
disp ('***************************************************************');
disp ('*        Branching Control by using IF-ELSE on Matlab         *');
disp ('* by: (vkurpmax),     Student Reg. No.: ()*');
disp ('***************************************************************');
disp (' '); 
clear all;
 
disp ('Choices of Program:');
disp ('1 . Calculate the area of rectangles');
disp ('2 . Calculate the area of triangles');
disp ('************************************');
disp (' ');
pilihan = input('Input your choice: ');
if (pilihan ~=1 && pilihan ~=2)
    pilihan = input ('The available choice is only 1 or 2, please reenter your choice: ');
end
 
if pilihan == 1
    n = input ('How many rectangles ? ');
    disp (' ')
    for i = 1:n;
        disp (['No. : ', num2str(i)]);
        p = input ('Input the lenght in cm = ');
        l = input ('Input the width in cm = ');
        L = p * l;
        fprintf ('The area of the rectangle is = %5.2f cm^2 \n', L );
        disp (' ')
    end
else
    n = input ('How many triangles ? ');
    disp (' ')
    for i = 1:n;
        disp (['No. : ', num2str(i)]);
        alas = input ('Input the base in cm = ');
        tinggi = input ('Input the height in cm = ');
        L = 0.5 * alas * tinggi;
        fprintf ('The area of the triangle is = %5.2f cm^2 \n', L );
        disp (' ')
    end
end
 
fprintf('Thank you friend\n');
