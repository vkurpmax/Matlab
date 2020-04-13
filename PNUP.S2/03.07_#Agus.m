clc;
disp ('*********************************************');
disp ('* Looping Control by using for-end on Matlab*');
disp ('* by: (Agus), Student Reg. No.: (44419003) *');
disp ('*********************************************');
clear all;
disp (' ');
disp ('Program Menampilkan Luas Lingkaran');
disp (' ');
i=1;
while i<=3
    disp (' ');
    disp (['*******lingkaran ke-',num2str(i)]);
    r(i)=input ('Masukkan nilai jari-jari (dalam satuan cm)= ');
    L(i)= pi * (r(i))^2;
    i=i+1;
    disp ('');
end
disp  (' ');
 
i=1;
while i<=3
    fprintf (['\n jadi luas lingkaran ke-',num2str(i),' adalah ',num2str(L(i)),' cm^2 \n\n']);
    i=i+1;
end
disp('');
disp('*========= JIKA ADA KEMAUAN DISITU ADA JALAN ===========*');
