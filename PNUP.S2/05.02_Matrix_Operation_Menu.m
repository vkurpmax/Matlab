%Task-5.4: Matrix Operations using input, output, looping, and branching
%control
clear
clc
loop = 1;
while loop ~= 0
disp ('***************************************************************');
disp ('*        Matrix Operations using Input-Output Control         *');
disp ('* by: (vkurpmax),     Student Reg. No.: ()*');
disp ('***************************************************************');
disp (' ');


    disp('Matrix Operations Menu:');
    disp('1. Matrix Addition');
    disp('2. Matrix Subtraction');
    disp('3. Matrix Multiplication');
    disp('4. Matrix Transpose');
    disp('5. Matrix Inversion');
    disp('6. Scalar Multiplication');
    disp('7. Exit');
    menu = input('Choose operation: ');
    clc
    switch menu
        case 1
            disp('<strong>Matrix Addition</strong>');
            disp('<strong>C = A + B</strong>');
            disp(' ');
            disp("Input your matrix!")
            disp("Dont forget to use <strong>brackets []</strong> and <strong>semicolon</strong> ;");
            disp('i.e. 2x2 matrix: [a b; c d]');
            disp('     3x3 matrix: [a b c; d e f; g h i]');          
            disp(' ');
            A = input('Input matrix A: ');
            B = input('Input matrix B: ');
            A
            B
            disp('C = A + B');
            C = A + B
            cont = input ('Press 1 to continue, Press 0 to exit: ');
            switch cont
                case 1
                    clc
                    loop = 1;
                case 0
                    loop = 0;
            end
        case 2
            disp('<strong>Matrix Subtraction</strong>');
            disp('<strong>C = A - B</strong>');
            disp(' ');
            disp("Input your matrix!")
            disp("Dont forget to use <strong>brackets []</strong> and <strong>semicolon</strong> ;");
            disp('i.e. 2x2 matrix: [a b; c d]');
            disp('     3x3 matrix: [a b c; d e f; g h i]');          
            disp(' ');
            A = input('Input matrix A: ');
            B = input('Input matrix B: ');
            A
            B
            disp('C = A - B');
            C = A - B
            cont = input ('Press 1 to continue, Press 0 to exit: ');
            switch cont
                case 1
                    clc
                    loop = 1;
                case 0
                    loop = 0;
            end
        case 3
            disp('<strong>Matrix Multiplication</strong>');
            disp('<strong>C = A x B</strong>');
            disp(' ');
            disp("Input your matrix!")
            disp("Dont forget to use <strong>brackets []</strong> and <strong>semicolon</strong> ;");
            disp('i.e. 2x2 matrix: [a b; c d]');
            disp('     3x3 matrix: [a b c; d e f; g h i]');          
            disp(' ');
            A = input('Input matrix A: ');
            B = input('Input matrix B: ');
            A
            B
            disp('C = A x B');
            C = A * B
            cont = input ('Press 1 to continue, Press 0 to exit: ');
            switch cont
                case 1
                    clc
                    loop = 1;
                case 0
                    loop = 0;
            end
        case 4
            disp('<strong>Matrix Transpose</strong>');
            disp("<strong>C = A'</strong>");
            disp(' ');
            disp("Input your matrix!")
            disp("Dont forget to use <strong>brackets []</strong> and <strong>semicolon</strong> ;");
            disp('i.e. 2x2 matrix: [a b; c d]');
            disp('     3x3 matrix: [a b c; d e f; g h i]');          
            disp(' ');
            A = input('Input matrix A: ');
            A
            disp("C = A'");
            C = A'
            cont = input ('Press 1 to continue, Press 0 to exit: ');
            switch cont
                case 1
                    clc
                    loop = 1;
                case 0
                    loop = 0;
            end
        case 5
            disp('<strong>Matrix Inversion</strong>');
            disp('<strong>C = A^-1</strong>');
            disp(' ');
            disp("Input your matrix!")
            disp("Dont forget to use <strong>brackets []</strong> and <strong>semicolon</strong> ;");
            disp('i.e. 2x2 matrix: [a b; c d]');
            disp('     3x3 matrix: [a b c; d e f; g h i]');          
            disp(' ');
            A = input('Input matrix A: ');
            A
            disp("C = A^-1");
            C = A^-1
            cont = input ('Press 1 to continue, Press 0 to exit: ');
            switch cont
                case 1
                    clc
                    loop = 1;
                case 0
                    loop = 0;
            end
        case 6
            disp('<strong>Skalar Multiplication</strong>');
            disp('<strong>C = p x A</strong>');
            disp(' ');
            disp("Input your matrix!")
            disp("Dont forget to use <strong>brackets []</strong> and <strong>semicolon</strong> ;");
            disp('i.e. 2x2 matrix: [a b; c d]');
            disp('     3x3 matrix: [a b c; d e f; g h i]');          
            disp(' ');
            p = input('Input a skalar number p: ');
            A = input('Input matrix A: ');
            p
            A
            disp('C = p.A');
            format shortG
            C = p * A
            cont = input ('Press 1 to continue, Press 0 to exit: ');
            switch cont
                case 1
                    clc
                    loop = 1;
                case 0
                    loop = 0;
            end
        case 7
            display('Exiting program...');
            pause(1);
            clc;
            loop = 0;
        otherwise
            loop = 1;
            %menu = input('Please input correct number: ');
    end
end
