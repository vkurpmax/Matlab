while true
clc;
clear all;
disp ('***************************************************************');
disp ('*                     Ujian Tengah Semester                   *');
disp ('*                      Pemrograman MATLAB                     *');
disp ('* by: FDEM.,     Student Reg. No.:  *');
disp ('***************************************************************');
disp (' ');
fprintf('    Program Menu :\n');
fprintf('    1. Gerak Lurus Beraturan (GLB) \n');
fprintf('    2. Kalor \n');
fprintf('    3. Gerak Parabola \n');
fprintf('    4. Exit \n');
while true
        menu = input('    <strong>Select a menu : </strong>');
        disp(' ');
        if menu == 1
            fprintf('    1. Gerak Lurus Beraturan (GLB) \n');
            s = input('    Masukkan jarak (meter): ');
            t = input('    Masukkan waktu (sekon): ');
            v = s/t;
            fprintf('        Kecepatan = <strong>%.3f</strong> m/s\n', v);
            
        elseif menu == 2
            fprintf('    2. Kalor \n');
            m = input('    Masukkan massa benda (kg)   : ');
            dT = input('    Masukkan perubahan suhu (C) : ');
            Cair = 4200;
            Ces = 2100;
            Les = 336000;
            Q1 = m*Ces*dT;
            Q2 = m*Les;
            Q3 = m*Cair*dT;
            fprintf('        Banyak kalor yang diperlukan : \n');
            fprintf('        Q1 = <strong>%.3f</strong> J\n', Q1);
            fprintf('        Q2 = <strong>%.3f</strong> J\n', Q2);
            fprintf('        Q3 = <strong>%.3f</strong> J\n', Q3);
            
        elseif menu == 3
            fprintf('    3. Gerak Parabola \n');
            v0 = input('    Masukkan kecepatan awal (m/s) : ');
            tetha = input('    Masukkan sudut (deg) : ');
            g = input('    Masukkan gravitasi (m/s^2) : ');
            hmax = v0^2*sind(tetha)^2 / (2*g);
            hterjauh = v0^2*(sind(2*tetha)) / g;
            fprintf('        Tinggi maksimum = <strong>%.3f</strong> m\n', hmax);
            fprintf('        Jarak terjauh = <strong>%.3f</strong> m\n', hterjauh);
            
        elseif menu == 4
            fprintf('    4. Exit Program \n');
            disp('    Thank you for using this program. Good bye!');
            return;
            
        else
            fprintf('        <strong>Re-input the right choice...!!</strong>\n');
        end
        if (menu>=1 && menu <=4)
            break
        end
end
fprintf('\n    <strong>Do you want to use this program again?</strong>\n');
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
