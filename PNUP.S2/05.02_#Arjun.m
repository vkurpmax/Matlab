clc;
disp ('****************************************************************');
disp ('*                         MATRIX OPERATION                     *');
disp ('* by: (MAH), Student Reg. No.: () *');
disp ('****************************************************************');
disp (' '); 
jb='y';
while (jb=='y')||(jb=='Y') 
   
    disp ('Matriks Operation menu : ');
    disp ('1. Matriks Addition ');
    disp ('2. Matrix Substraction ');
    disp ('3. Matrix Multiplication ');
    disp ('4. Matrix Transpose ');
    disp ('5. Matrix Inversion ');
    disp ('6. Scalar Multiplication ');
    disp ('7. Exit ');
    G = input ('Please input your choice : ');
    switch G
        case 1
            
            disp('1. Matrix addition');
            disp(' ');
            disp('   Example to input element of matrix    ');
            disp(' Input matrix X = [12 12 12;24 24 24;36 36 36] ')
            X = [12 12 12;24 24 24;36 36 36];
            disp(X);
            disp(' ');
    
            disp ('So, Please Input element of matrix according to Example');
            a=input('Input matriks  a =');
            b=input('Input matriks  b ='); 
            
            c = a+b;
            
            disp ('matriks c = a+b')
            disp(c)
            
 
        case 2 
            disp('2. Matrix Substraction');
            disp(' ');
            disp('   Example to input element of matrix    ');
            disp(' Input matrix X = [12 12 12;24 24 24;36 36 36] ')
            X = [12 12 12;24 24 24;36 36 36];
            disp(X);
            disp(' ');
    
            disp ('So, Please Input element of matrix according to Example');
            a=input('Input matriks  a =');
            b=input('Input matriks  b =');
            
            c = a-b;
            disp ('matriks c = a-b')
            disp(c)
            
 
        case 3
            disp('3. Matrix Multiplication');
            disp(' ');
            disp('   Example to input element of matrix    ');
            disp(' Input matrix X = [12 12 12;24 24 24;36 36 36] ')
            X = [12 12 12;24 24 24;36 36 36];
            disp(X);
            disp(' ');
    
            disp ('So, Please Input element of matrix according to Example');
            a=input('Input matriks  a =');
            b=input('Input matriks  b =');
            
            c = a*b;
            disp ('matriks c = a*b')
            disp(c)
            
 
        case 4
            disp('4. Matrix Transpose');
            disp(' ');
            disp('   Example to input element of matrix    ');
            disp(' Input matrix X = [12 12 12;24 24 24;36 36 36] ')
            X = [12 12 12;24 24 24;36 36 36];
            disp(X);
            disp(' ');
    
            disp ('So, Please Input element of matrix according to Example');
            a=input('Input matriks  a =');
            disp(a)
            c = a';
            disp ('matriks c = a`')
            disp(c)
            
 
        case 5 
            disp('5. Matrix Invers');
            disp(' ');
            disp('   Example to input element of matrix    ');
            disp(' Input matrix X = [12 12 12;24 24 24;36 36 36] ')
            X = [12 12 12;24 24 24;36 36 36];
            disp(X);
            disp(' ');
    
            disp ('So, Please Input element of matrix according to Example');
            a=input('Input matriks  a =');
            disp(a)
            c = inv(a);
            disp ('matriks c = invers a')
            disp(c)
            
 
        case 6
           disp('6. Scalar Multiplication');
            disp(' ');
            disp('   Example to input element of matrix    ');
            disp(' Input matrix X = [12 12 12;24 24 24;36 36 36] ')
            X = [12 12 12;24 24 24;36 36 36];
            disp(X);
            disp(' ');
    
            disp ('So, Please Input element of matrix according to Example');
            a=input('Input matriks  a =');
            p=input('input scalar = ');
            c = p*a;
            disp ('matriks c = p * a')
            disp(c);
            
            
 
        case 7 
            disp ('Exit program');
          break
        otherwise
            fprintf('Re-input the right choice...!!\n')
    
    end
    %Output
    
jb=input('Are you want to continue ? y/n = ','s');
disp(' ');
end 
fprintf('Thank you friend\n\n');
disp('"Barangsiapa yang membaca surah Al kahfi pada malam jum`at');
disp('dia Akan disinari cahaya antara dia dan ka`bah"');
disp('~HR. Ad Darimi');
