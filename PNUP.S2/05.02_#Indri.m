disp ('*******************');
disp ('*        Input-Output Matrix Operations             *');
disp ('* by: (Indri Puspita), Student Reg. No.: (44419009) *');
disp ('*******************');
disp ('');

disp ('Matrix Operation Menu :');
disp ('1. Matrix Addition');
disp ('2. Matrix Substraction');
disp ('3. Matrix Multiplication');
disp ('4. Matrix Transpose');
disp ('5. Matrix Inversion');
disp ('6. Scalar Multiplication');
disp ('7. Exit');
disp (' ');
pilihan = input('Input your menu: ');

if pilihan == 1
  for i = 1;
      disp (['Menu. : ', num2str(i)]);
      disp ('Input your matrix');
      disp ('[a b c; d e f; g h i]');
      disp ('');
      A = input ('Input matrix A : ');
      B = input ('Input matrix B : ');
      disp ('ad = A + B');
      disp ('');
      ad = A + B
  end
elseif pilihan == 2
   for i = 2;
      disp (['Menu. : ', num2str(i)]);
      disp ('Input your matrix');
      disp ('[a b c; d e f;g h i]');
      disp ('');
      A = input ('Input matrix A : ');
      B = input ('Input matrix B : ');
      disp ('subs = A - B');       
      disp ('');
      subs = A - B
   end
elseif pilihan == 3
   for i = 3;
      disp (['Menu. : ', num2str(i)]);
      disp ('Input your matrix');
      disp ('[a b c; d e f; g h i]');
      disp ('');
      A = input ('Input matrix A : ');
      B = input ('Input matrix B : ');
      disp ('mult = A * B');
      disp ('');
      mult = A * B
   end   
elseif pilihan == 4
    for i = 4;
      disp (['Menu. : ', num2str(i)]);
      disp ('Input your matrix');
      disp ('[a b c; d e f; g h i]');
      disp ('');
      A = input ('Input matrix A : ');
      B = input ('Input matrix B : ');
      transpose = A'
    end    
elseif pilihan == 5
    for i = 5;
      disp (['Menu. : ', num2str(i)]);
      disp ('Input your matrix');
      disp ('[a b c; d e f; g h i]');
      disp ('');
      A = input ('Input matrix A : ');
      B = input ('Input matrix B : ');
      inversion = A^-1
    end    
elseif pilihan == 6
    for i = 6;
      disp (['Menu. : ', num2str(i)]);
      disp ('Input your matrix');
      disp ('[a b c; d e f; g h i]');
      disp ('');
      p = input ('Input p : ');
      A = input ('Input matrix A : ');
      scalar = p * A
    end
elseif pilihan == 7
    disp ('Exit');
    disp ('');
else
    edit
    return
end
