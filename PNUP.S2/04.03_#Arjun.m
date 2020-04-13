clc;
for i=1:3;
disp ('****************************************************************');
disp ('*     calculate the charge of used electricity for a month.    *');
disp ('* by: (MAH), Student Reg. No.: () *');
disp ('****************************************************************');
disp (' '); 
 
id=input(' masukkan ID pelanggan = '); 
go=input(' Masukkan pemakaian bulan lalu(kWh) = '); 
gi=input(' Masukkan pemakaian bulan ini (kWh) = ');
ga=input(' masukkan Daya (VA) = ');
%process
kWh = gi - go;
if (ga~=450 && ga ~=900 && ga ~= 1300)
    ga = input ('Mohon maaf saat ini kami hanya menerima pembayaran dengan daya 450, 900, dan 1300, jadi tolong masukkan daya lagi : ');
end
%output
if ga == 450
    fprintf('\n');
    tarif = 415 * kWh;
    disp ('****************************************************');
    fprintf('ID Pelanggan = %.0f \n',id);
    fprintf('pemakaian bulan lalu = %.0f kWh \n',go);
    fprintf('pemakaian bulan ini  = %.0f kWh \n',gi);
    fprintf('jadi yang harus anda bayar adalah Rp %.0f \n',tarif);
    disp ('****************************************************');
    disp(' ');
end
if ga == 900
    fprintf('\n');
    tarif = 1352 * kWh;
    disp ('****************************************************');
    fprintf('ID Pelanggan = %.0f \n',id);
    fprintf('pemakaian bulan lalu = %.0f kWh \n',go);
    fprintf('pemakaian bulan ini = %.0f kWh \n',gi);
    fprintf('jadi yang harus anda bayar adalah Rp %.0f \n', tarif);
    disp ('****************************************************');
    disp (' ');
end
if ga == 1300
    fprintf('\n');
    tarif = 1467.28 * kWh;
    disp ('****************************************************');
    fprintf('ID Pelanggan = %.0f \n',id);
    fprintf('pemakaian bulan lalu = %.0f kWh \n',go);
    fprintf('pemakaian bulan ini = %.0f kWh \n',gi);
    fprintf('jadi yang harus anda bayar adalah Rp %.2f \n',tarif);
    disp ('****************************************************');
    disp (' ');
end
 
 
fprintf('Thank you friend\n\n');
disp('Sufyan bin Uyanah mengatakan :');
disp('"Bukanlah orang berakal itu yang hanya tahu baik dan buruk');
disp('orang berakal adalah orang yang jika mengetahui kebaikan, ia ikuti');
disp('jika mengetahui keburukan, maka ia tinggalkan"');
disp('Hilyatul auliya, no. 12893');
end
