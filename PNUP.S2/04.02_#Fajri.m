clc;
disp ('****************************************************************');
disp ('*     calculate the charge of used electricity for a month.    *');
disp ('*   by: (MFA), Student Reg. No.: ()   *');
disp ('****************************************************************');
disp (' '); 
 
id=input(' Input your ID = '); 
go=input(' Input your electricity consumption last month (kWh) = '); 
gi=input(' Input your electricity comsumption this month (kWh) = ');
disp ('Pilih Daya yang Anda gunakan di rumah Anda:');
disp ('1 . 450  VA');
disp ('2 . 900  VA');
disp ('3 . 1300 VA');
disp ('***************');
disp (' ');
pilihan = input('Masukkn pilihan Anda: ');
if (pilihan ~=1 && pilihan ~=2 && pilihan ~=3)
    pilihan = input ('Pilihlah hanya 1 - 3: ');
end
%process
kWh = gi - go;
%output
if pilihan ==1
    tarif = 415 * kWh;
    fprintf('ID Pelanggan = %.0f \n',id);
    fprintf('pemakaian bulan lalu = %.0f kWh \n',go);
    fprintf('pemakaian bulan ini = %.0f kWh \n',gi);
    fprintf('jadi yang harus anda bayar adalah Rp %.0f \n\n',tarif);
end
if pilihan ==2
    tarif = 1352 * kWh;
    fprintf('ID Pelanggan = %.0f \n',id);
    fprintf('pemakaian bulan lalu = %.0f kWh \n',go);
    fprintf('pemakaian bulan ini = %.0f kWh \n',gi);
    fprintf('jadi yang harus anda bayar adalah Rp %.0f \n\n', tarif);
end
if pilihan ==3
    tarif = 1467.28*kWh;
    fprintf('ID Pelanggan = %.0f \n',id);
    fprintf('pemakaian bulan lalu = %.0f kWh \n',go);
    fprintf('pemakaian bulan ini = %.0f kWh \n',gi);
    fprintf('jadi yang harus anda bayar adalah Rp %.2f \n\n',tarif);
 
end
