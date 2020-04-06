clc;
disp ('****************************************************************');
disp ('*           to calculate the area of 3 circles by using        *');
disp ('* by: (MAH), Student Reg. No.: () *');
disp ('****************************************************************');
lp = input('berapa kali percobaan = ');
p = 1;
while p<=lp
    r = input('jari - jari(dalam satuan (cm))  = '); 
    
    L = pi * r^2;
    fprintf ('Luas lingkaran = %.2f cm^2 \n', L);
    p=p+1;
end
fprintf('\n\n');
disp('Ibnu Rajab Rahimahulah berkata :');
disp('"Diantara tanda orang yang ilmunya bermanfaat adalah mereka ');
disp('tidak memandang diri mereka memiliki satu statuspun');
disp('dan tidak pula satu pendapatpun');
disp('mereka tidak senang menanggap hatinya suci');
disp('mereka membenci pujian dan tidak sombong kepada siapapun"');
disp('Fadlu ilmis salaf alal Khalaf 107');
