clc;
disp ('****************************************************************');
disp ('*                      UJIAN TENGAH SEMESTER                   *');
disp ('* by: (MAH), Student Reg. No.: () *');
disp ('****************************************************************');
disp (' '); 
jb='y';
while (jb=='y')||(jb=='Y') 
   
    disp ('MENU : ');
    disp ('1. Gerak Lurus Berubah Beraturan (GLBB) ');
    disp ('2. Kalor ');
    disp ('3. Vektor Gaya ');
    disp ('4. Exit ');
    G = input ('Please input your choice : ');
    if (G ~=1 && G ~=2 && G ~=3 && G ~=4)
    G = input ('Tolong Masukkan pilihan yang Benar: ');
    end
if G == 1
            disp('1. Gerak Lurus Berubah Beraturan (GLBB)');
            n = input ('How many trial ? ');
            disp (' ');
            for i = 1:n;
            disp (['No. : ', num2str(i)]);
            disp(' ');
             Vo = input ('Masukkan Kecepatan awal (m/s): ');
                 a  = input ('Masukkan percepatan (m/s^2) : ');
                 t  = input ('Masukkan waktu (s): ');
                    
                 Vt = Vo + (a * t);
                    
                 fprintf( 'Kecepatan saat t = %.2f m/s \n',Vt);
            end     
end
if G == 2
    disp('2. Kalor');
         n = input ('How many trial ? ');
         disp (' ');
         for i = 1:n;
         disp (['No. : ', num2str(i)]);
         disp(' ');
         Ces = 2100;
         Cair = 4200;
         Les = 336000;
         m  = input ('Masukkan Massa (Kg): ');
         dt = input ('Masukkan perubahan suhu (Celcius): ');
                    
         Q1 = m * Ces * dt;
         Q2 = m * Les;
         Q3 = m * Cair * dt;
         
         fprintf (' Besaran Energi (Q1) = %.2f J \n', Q1);
         fprintf (' Besaran Energi (Q2) = %.2f J \n', Q2);
         fprintf (' Besaran Energi (Q3) = %.2f J \n', Q3);
         
         end
end
if G == 3
    disp('3. Gaya');
         n = input ('How many trial ? ');
         disp (' ');
         for i = 1:n;
         disp (['No. : ', num2str(i)]);
         disp(' ');
         F  =  input ('Masukkan Gaya  (N): ');
         tet = input ('Masukkan Tetha (derajat): ');
         rad = (tet/180) * pi;
         
         Fx = F * cos(rad);
         Fy = F * sin(rad);
         
         fprintf (' Uraian Gaya F pada sumbu X = %.2f N \n', Fx);
         fprintf (' Uraian Gaya F pada sumbu Y = %.2f N \n', Fy);
         
         end
    
end
 
if G == 4
         disp ('Exit program');
         break
end
 
jb=input('Are you want to continue ? y/n = ','s');
disp(' ');
    
 
end
fprintf('Thank you friend\n\n');
disp('"Apabila telah datang Bulan Ramadhan,');
disp('Maka pintu pintu syurga dibuka,');
disp('dan pintu pintu neraka pun ditutup,');
disp('dan para syaitan pun Dibelenggu"');
disp('H.R Bukhari no. 3277');
