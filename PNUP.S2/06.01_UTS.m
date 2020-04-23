clear
clc
disp ('***************************************************************');
disp ('*                    Physics Problem Solver                   *');
disp ('* by: (vkurpmax),     Student Reg. No.: ()*');
disp ('***************************************************************');
disp (' ');

disp ('Field of problem:');
disp ('1. Linear Motion with Constant Velocity');
disp ('2. Linear Motion with Constant Acceleration');
disp ('3. Gerak Jatuh Bebas (GJB)');
disp ('4. Massa Jenis');
disp ('5. Gerak Vertikal ke Atas');
disp ('6. Kalor');
disp ('7. Gelombang');
disp ('8. Rangkaian Listrik Searah');
disp ('9. Gerak Parabola');
disp ('10. Rangkaian Listrik Bolak-Balik (AC)');
disp ('11. Usaha dan Energi');
disp ('12. Gaya');
disp ('---------------------------------------');
menu = input('Choose your Field Of Problem: ');
disp (' ');

switch menu
    case 1
        disp ('<strong>Linear Motion with Constant Velocity</strong>');
        disp (' ');
        disp ('Remember you may not input one variable only');
        disp ("If you don't have the number, just press <strong>Enter</strong>");
        disp (' ');
        velocity = input('Input velocity (v) [meter/second]: ');
        distance = input('Input distance (d) [meter]: ');
        time = input('Input time (t) in second: ');
        disp ('-----------------------------------');
        if isempty(velocity)
            velocity = distance / time;
            fprintf('The Velocity (v) is: <strong>%.2f [meter]/second</strong> \n', velocity);
        elseif isempty(distance)
            distance = velocity * time;
            fprintf('The Distance (d) is: <strong>%.2f [meter]</strong> \n', distance);
        else
            time = distance / velocity;
            fprintf('The time (t) is: <strong>%.2f [second]</strong> \n', time);
        end
        
    case 2
        disp ('<strong>Linear Motion with Constant Acceleration</strong>');
        disp (' ');
        disp ('To be known - Equations of Motion: ');
        disp ('• Vf = Vi + a.t');
        disp ('• d = Vi.t + 1/2.a.t^2');
        disp ('• Vf^2 = Vi^2 + 2.a.d');
        disp ('• d = 1/2(Vf + Vi)t');
        disp ('------------------------------');
        disp ('What do you want to find out?');
        disp ('1. Final Velocity (Vf)');
        disp ('2. Initial Velocity (Vi)');
        disp ('3. Acceleration (a)');
        disp ('4. Time (t)');
        disp ('5. Displacement (d)');
        choice2 = input('Input your choice: ');
        disp (' ');
        if choice2 == 1
           disp ('What do you know?');
           disp ('1. Vi; a; t');
           disp ('2. Vi; a; d');
           choice2_1 = input('Input your choice: ');
           disp ('---------------------------------------------');
           if choice2_1 == 1
               Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
               a = input('Input Acceleration (a) [meter/second^2]: ');
               t = input('Input Time (t) [second]: ');
               Vf = Vi + a*t;
               disp ('---------------------------------------------');
               fprintf('The Final Velocity (Vf) is: <strong>%.2f [meter/second]</strong> \n', Vf);
           elseif choice2_1 == 2
               Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
               a = input('Input Acceleration (a) [meter/second^2]: ');
               d = input('Input Displacement (d) [meter]: ');
               Vf = sqrt(Vi^2 + 2*a*d);
               disp ('---------------------------------------------');
               fprintf('The Final Velocity (Vf) is: <strong>%.2f [meter/second]</strong> \n', Vf);
           else
               disp('Please input the right number!');
           end
        elseif choice2 == 2
            disp ('What do you know?');
            disp ('1. Vf; a; t');
            disp ('2. Vf; a; d');
            choice2_2 = input('Input your choice: ');
            disp ('---------------------------------------------');
            if choice2_2 == 1
               Vf = input('Input Final Velocity (Vf) [meter/second]: ');
               a = input('Input Acceleration (a) [meter/second^2]: ');
               t = input('Input Time (t) [second]: ');
               Vi = Vf - a*t;
               disp ('---------------------------------------------');
               fprintf('The Initial Velocity (Vi) is: <strong>%.2f [meter/second]</strong> \n', Vi);
           elseif choice2_2 == 2
               Vf = input('Input Final Velocity (Vf) [meter/second]: ');
               a = input('Input Acceleration (a) [meter/second^2]: ');
               d = input('Input Displacement (d) [meter]: ');
               Vi = sqrt(Vf^2 - 2*a*d);
               disp ('---------------------------------------------');
               fprintf('The Initial Velocity (Vi) is: <strong>%.2f [meter/second]</strong> \n', Vi);
           else
               disp('Please input the right number!');
            end
        elseif choice2 == 3
            disp ('What do you know?');
            disp ('1. Vf; Vi; t');
            disp ('2. Vi; d; t');
            disp ('3. Vf; Vi; d');
            choice2_3 = input('Input your choice: ');
            disp ('---------------------------------------------');
            if choice2_3 == 1
               Vf = input('Input Final Velocity (Vf) [meter/second]: ');
               Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
               t = input('Input Time (t) [second]: ');
               a = (Vf - Vi)/t;
               disp ('---------------------------------------------');
               fprintf('The Acceleration (a) is: <strong>%.2f [meter/second^2]</strong> \n', a);
           elseif choice2_3 == 2
               Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
               d = input('Input Displacement (d) [meter]: ');
               t = input('Input Time (t) [second]: ');
               a = (2*(d - Vi*t))/t^2;
               disp ('---------------------------------------------');
               fprintf('The Acceleration (a) is: <strong>%.2f [meter/second^2]</strong> \n', a);
            elseif choice2_3 == 3
               Vf = input('Input Final Velocity (Vf) [meter/second]: ');
               Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
               d = input('Input Displacement (d) [meter]: ');
               a = (Vf^2 - Vi^2) / (2*d);
               disp ('---------------------------------------------');
               fprintf('The Acceleration (a) is: <strong>%.2f [meter/second^2]</strong> \n', a);
           else
               disp('Please input the right number!');
           end
        elseif choice2 == 4
            disp ('What do you know?');
            disp ('1. Vf; Vi; a');
            disp ('2. Vf; Vi; d');
            choice2_4 = input('Input your choice: ');
            disp ('---------------------------------------------');
            if choice2_4 == 1
               Vf = input('Input Final Velocity (Vf) [meter/second]: ');
               Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
               a = input('Input Acceleration (a) [meter/second^2]: ');
               t = (Vf - Vi) / a;
               disp ('---------------------------------------------');
               fprintf('The Time (t) is: <strong>%.2f [second]</strong> \n', t);
           elseif choice2_4 == 2
               Vf = input('Input Final Velocity (Vf) [meter/second]: ');
               Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
               d = input('Input Displacement (d) [meter]: ');
               t = (2*d)/(Vf + Vi);
               disp ('---------------------------------------------');
               fprintf('The Time (t) is: <strong>%.2f [second]</strong> \n', t);
           else
               disp('Please input the right number!');
           end
        elseif choice2 == 5
            disp ('What do you know?');
            disp ('1. Vi; a; t');
            disp ('2. Vf; Vi; a');
            disp ('3. Vf; Vi; t');
            choice2_5 = input('Input your choice: ');
            disp ('---------------------------------------------');
            if choice2_5 == 1
               Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
               a = input('Input Acceleration (a) [meter/second^2]: ');
               t = input('Input Time (t) [second]: ');
               d = Vi*t + 1/2*(a*t^2);
               disp ('---------------------------------------------');
               fprintf('The Displacement (d) is: <strong>%.2f [meter]</strong> \n', d);
           elseif choice2_5 == 2
               Vf = input('Input Final Velocity (Vf) [meter/second]: ');
               Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
               a = input('Input Acceleration (a) [meter/second^2]: ');
               d = (Vf^2 - Vi^2)/(2*a);
               disp ('---------------------------------------------');
               fprintf('The Displacement (d) is: <strong>%.2f [meter]</strong> \n', d);
           
           elseif choice2_5 == 3
               Vf = input('Input Final Velocity (Vf) [meter/second]: ');
               Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
               t = input('Input Time (t) [second]: ');
               d = 1/2 * (Vf + Vi) * t;
               disp ('---------------------------------------------');
               fprintf('The Displacement (d) is: <strong>%.2f [meter]</strong> \n', d);
           else
               disp('Please input the right number!');
           end 
        end
        
    case 3
        disp ('<strong>Free Fall Motion</strong>');
        disp (' ');
        disp ('To be known - Equations: ');
        disp ('• Vf = sqrt(2.g.h)');
        disp ('• t = sqrt((2h)/g)');
        disp ('------------------------------');
        disp ('What do you want to find out?');
        disp ('1. Final Velocity (Vf)');
        disp ('2. Height (h)');
        disp ('3. Time (t)');
        choice3 = input('Input your choice: ');
        disp (' ');
        if choice3 == 1
           disp ('What do you know?');
           disp ('1. Vi; a; t');
           disp ('2. Vi; a; d');
           choice2_1 = input('Input your choice: ');
           disp ('---------------------------------------------');
           if choice3_1 == 1
               Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
               a = input('Input Acceleration (a) [meter/second^2]: ');
               t = input('Input Time (t) [second]: ');
               Vf = Vi + a*t;
               disp ('---------------------------------------------');
               fprintf('The Final Velocity is: <strong>%.2f [meter/second]</strong> \n', Vf);
           elseif choice3_1 == 2
               Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
               a = input('Input Acceleration (a) [meter/second^2]: ');
               d = input('Input Displacement (d) [meter]: ');
               Vf = sqrt(Vi^2 + 2*a*d);
               disp ('---------------------------------------------');
               fprintf('The Final Velocity is: <strong>%.2f [meter/second]</strong> \n', Vf);
           else
               disp('Please input the right number!');
           end
        end
end
