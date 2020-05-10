%Task-5b: Matrix Operations on Matlab
while true
clc;
clear all;
disp ('************************************************************');
disp ('*               Matrix Operation on Matlab                 *');
disp ('* by: (Muhammad Fajri Akbar), Student Reg. No.: (44419016) *');
disp ('************************************************************');
disp (' ');
fprintf('    Matrix Operations Menu :\n');
fprintf('    1. Matrix Addition \n');
fprintf('    2. Matrix Substraction \n');
fprintf('    3. Matrix Multiplication \n');
fprintf('    4. Matrix Transpose \n');
fprintf('    5. Matrix Inversion \n');
fprintf('    6. Scalar Multiplication \n');
fprintf('    7. Exit \n');
    while true
     menu = input('    <strong>Select a menu : </strong>');
     disp(' ');
     switch menu
       case 1
                fprintf('    1. Matrix Addition \n');
                while true
                    barisA = input('        How many row in the matrix A?    : ');
                    kolomA = input('        How many column in the matrix A? : ');
                    barisB = input('        How many row in the matrix B?    : ');
                    kolomB = input('        How many column in the matrix B? : ');
                    if (barisA == barisB && kolomA == kolomB)
                        for i=1:barisA
                            for j=1:kolomA
                                fprintf('\t\t\tElement A%d%d : ', i, j);
                                A(i,j) = input('');
                            end
                        end
                        disp('    Matrix A');
                        disp(A);
                        for i=1:barisB
                            for j=1:kolomB
                                fprintf('\t\t\tElement B%d%d : ', i, j);
                                B(i,j) = input('');
                            end
                        end
                        disp('    Matrix B');
                        disp(B);
                        disp('        Matrix A + Matrix B = Matrix C, so the result is')
                        C = A+B;
                        disp(C);
                        break
                    else
                        fprintf('\t\t\t<strong>Your matrices are not eligible.\n\t\t\tPlease reinput the right dimension...!!</strong>\n\n');
                    end
                end            
            case 2
                fprintf('   2. Matrix Substraction \n');
                while true
                    barisA = input('        How many row in the matrix A?    : ');
                    kolomA = input('        How many column in the matrix A? : ');
                    barisB = input('        How many row in the matrix B?    : ');
                    kolomB = input('        How many column in the matrix B? : ');
                    if (barisA == barisB && kolomA == kolomB)
                        for i=1:barisA
                            for j=1:kolomA
                                fprintf('\t\t\tElement A%d%d : ', i, j);
                                A(i,j) = input('');
                            end
                        end
                        disp('    Matrix A');
                        disp(A);
                        for i=1:barisB
                            for j=1:kolomB
                                fprintf('\t\t\tElement B%d%d : ', i, j);
                                B(i,j) = input('');
                            end
                        end
                        disp('    Matrix B');
                        disp(B);
                        disp('        Matrix A - Matrix B = Matrix C, so the result is')
                        C = A-B;
                        disp(C);
                        break
                    else
                        fprintf('\t\t\t<strong>Your matrices are not eligible.\n\t\t\tPlease reinput the right dimension...!!</strong>\n\n');
                    end                   
                end    
            case 3
                fprintf('    3. Matrix Multiplication \n');
                while true
                    barisA = input('        How many row in the matrix A?    : ');
                    kolomA = input('        How many column in the matrix A? : ');
                    barisB = input('        How many row in the matrix B?    : ');
                    kolomB = input('        How many column in the matrix B? : ');
                    if (kolomA == barisB)
                        for i=1:barisA
                            for j=1:kolomA
                                fprintf('\t\t\tElement A%d%d : ', i, j);
                                A(i,j) = input('');
                            end
                        end
                        disp('    Matrix A');
                        disp(A);
                        for i=1:barisB
                            for j=1:kolomB
                                fprintf('\t\t\tElement B%d%d : ', i, j);
                                B(i,j) = input('');
                            end
                        end
                        disp('    Matrix B');
                        disp(B);
                        disp('        Matrix A * Matrix B = Matrix C, so the result is')
                        C = A*B;
                        disp(C);
                        break
                    else
                        fprintf('\t\t\t<strong>Your matrices are not eligible.\n\t\t\tPlease reinput the right dimension...!!</strong>\n\n');
                    end
                end            
            case 4
                fprintf('    4. Matrix Transpose \n');
                barisA = input('        How many row in the matrix A?    : ');
                kolomA = input('        How many column in the matrix A? : ');
                for i=1:barisA
                    for j=1:kolomA
                        fprintf('\t\t\tElement A%d%d : ', i, j);
                        A(i,j) = input('');
                    end
                end
                disp('    Matrix A');
                disp(A);
                C = transpose(A);
                disp('        The transpose of Matrix A = Matrix C, so the result is')
                disp(C)        
            case 5
                fprintf('    5. Matrix Inversion \n');
                barisA = input('        How many row in the matrix A?    : ');
                kolomA = input('        How many column in the matrix A? : ');
                for i=1:barisA
                    for j=1:kolomA
                        fprintf('\t\t\tElement A%d%d : ', i, j);
                        A(i,j) = input('');
                    end
                end
                disp('    Matrix A');
                disp(A);
                C = inv(A);
                disp('        The inversion of Matrix A = Matrix C, so the result is')
                disp(C)
            case 6
                fprintf('    6. Scalar Multiplication \n');
                skalar = input('        What is the value of scalar? : ');
                barisA = input('        How many row in the matrix A?    : ');
                kolomA = input('        How many column in the matrix A? : ');
                for i=1:barisA
                    for j=1:kolomA
                        fprintf('\t\t\tElement A%d%d : ', i, j);
                        A(i,j) = input('');
                    end
                end
                disp('    Matrix A');
                disp(A);
                C = skalar * A;
                disp('        Scalar * Matrix A = Matrix C, so the result is')
                format bank
                disp(C)
            case 7
                fprintf('    7. Exit \n');
                disp('    Thank you for using this program. Good bye!');
                return;
            
            otherwise
            fprintf('        <strong>Re-input the right choice...!!</strong>\n');
        end
        if (menu>=1 && menu <=7)
            break
        end
    end
    fprintf('    <strong>Do you want to use this program again?</strong>\n');
    while true
        id = input('    Input ''1'' for Yes | Input ''0'' for No = ');
        if (id == 1)
            break
        elseif (id == 0)
            disp('    Thank you for using this program. Good bye!');
            break
        else
            fprintf('\n    <strong>Re-input the right choice...!!</strong>\n');
        end
    end
    if (id == 0)
        break
    end
end
