while true
clc;
clear all;
disp ('************************************************************');
disp ('*              Mid Test Semester on Matlab                 *');
disp ('* by: (MFA), Student Reg. No.: () *');
disp ('************************************************************');
disp (' ');
disp (' ');
disp ('      Daftar Pilihan = ');
disp ('   1. Menghitung Gerak Lurus Berubah Beraturan (GLBB)');
disp ('   2. Rangkaian Listrik Searah (DC)  ');
disp ('   3. Rangkaian Listrik Bolak-Balik (AC) ');
disp ('   4. Keluar ');
 
pil=input('Masukkan Pilihan Anda = ');
 
if (pil==1)
    disp (' ');
    vo=input('Masukkan Kecapatan Awal satuan m/s =');
    a=input('Masukkan Percepatan satuan m/s^2    =');
    t=input('Masukkan waktu satuan sekon         =');
    vt = vo+a*t;
    disp (' ');
    fprintf ('Hasil dari GLBB = %f m/s \n', vt );
end
 
if (pil==2)
    disp (' ');
    i=input('Masukkan Kuat Arus satuan Ampere =');
    r=input('Masukkan Tahanan satuan Ohm      =');
    t=input('Masukkan waktu satuan sekon      = ');
    V=i*r;;
    P=i*i*r;
    W=i*i*r*t;
    disp (' ');
    fprintf ('Hasil dari beda potensial = %f (volt) \n', V );
    fprintf ('Hasil dari Daya Listrik   = %f (Watt) \n', P );
    fprintf ('Hasil dari Energi Listrik = %f (Joule) \n', W );
        
end
 
if (pil==3)
    r=input('Masukkan Tahanan satuan Ohm         =');
    f=input('Masukkan Frekuensi satuan Hertz     =');
    l=input('Masukkan Induktansi satuan Henry    =');
    c=input('Masukkan Kapasistansi satuan Farad  =');
    XL=2*3.14*f*l; 
    XC=1/(2*3.14*f*c);
    Z=sqrt(r*r+(XL-XC));
     fprintf ('Hasil dari Reaktansi Induktif  = %f (Ohm) \n', XL );
     fprintf ('Hasil dari Reaktasni Kapasitif = %f (Ohm) \n', XC );
     fprintf ('Hasil dari Impedansi           = %f (Ohm) \n', Z );
end
if (pil==4)
disp (' ');
disp ('Terima Kasih Telah Menggunakan Program ini ');
disp ('Jangan Lupa Memberikan Apresiasi Pada programer ');
break
end
 
if(pil<=0 || pil>3)
     disp ('Mohon Maaf Pilahan Hanya 1-3, Mohon untuk memilih kembali');
 break
end
disp (' ');
disp ('Apakahh anda masih ingin Melanjutkan?');
disp ('Jika "Ya" tekan ( 1 ), Jika "Tidak" Tekan ( 0 )  ');
pilih=input('Masukkan Pilihan Anda = ');
if (pilih==1)
end
if (pilih==0)
disp (' ');
disp ('Terima Kasih Telah Menggunakan Program ini ');
disp ('Jangan Lupa Memberikan Apresiasi Pada programer ');
break
end
end
