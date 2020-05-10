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
disp ('3. Free Fall Motion');
disp ('4. Density');
disp ('5. Upward Vertical Motion');
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
        disp ('Remember you may empty for only one variable');
        disp ("If you don't have the number, just press <strong>Enter</strong>");
        disp (' ');
        v = input('Input velocity (v) [meter/second]: ');
        d = input('Input distance (d) [meter]: ');
        t = input('Input time (t) [second]: ');
        disp ('-----------------------------------');
        if isempty(v)
            v = d / t;
            fprintf('The Velocity (v) is: <strong>%.2f [meter/second]</strong> \n', v);
        elseif isempty(d)
            d = v * t;
            fprintf('The Distance (d) is: <strong>%.2f [meter]</strong> \n', d);
        else
            t = d / v;
            fprintf('The time (t) is: <strong>%.2f [second]</strong> \n', t);
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
        g = 9.81;
        if choice3 == 1
           h = input('Input Height (h) [meter]: ');
           Vf = sqrt(2*g*h);
           fprintf('The Final Velocity (Vf) is: <strong>%.2f [meter/second]</strong> \n', Vf);
        elseif choice3 == 2
           disp ('What do you know?');
           disp ('1. Vf');
           disp ('2. t');
           choice3_2 = input('Input your choice: ');
           disp ('---------------------------------------------'); 
           if choice3_2 == 1
               Vf = input('Input Final Velocity (Vf) [meter/second]: ');
               h = Vf^2 / (2*g);
               disp ('---------------------------------------------');
               fprintf('The Height (h) is: <strong>%.2f [meter]</strong> \n', h);
           elseif choice3_2 == 2               
               t = input('Input Time (t) [second]: ');
               h = ((t^2) * g) / 2;
               disp ('---------------------------------------------');
               fprintf('The Height (h) is: <strong>%.2f [meter]</strong> \n', h);
           end
        elseif choice3 == 3                      
            h = input('Input Height (h) [meter]: ');
            t = sqrt((2*h)/g);
            fprintf('The Time (t) is: <strong>%.2f [second]</strong> \n', t);
        end
        
    case 4
        disp ('<strong>Density</strong>');
        disp (' ');
        disp ('Remember you may empty for only one variable');
        disp ("If you don't have the number, just press <strong>Enter</strong>");
        disp (' ');
        p = input('Input density (p) [kilogram/meter^3]: ');
        m = input('Input mass (m) [kilogram]: ');
        V = input('Input volume (V) [meter^3]: ');
        disp ('-----------------------------------');
        if isempty(p)
            p = m / V;
            fprintf('The Density (p) is: <strong>%.2f [kilogram/meter^3]</strong> \n', p);
        elseif isempty(m)
            m = p * V;
            fprintf('The Mass (m) is: <strong>%.2f [kilogram]</strong> \n', m);
        else
            V = m / p;
            fprintf('The Volume (V) is: <strong>%.2f [meter^3]</strong> \n', V);
        end
        
    case 5
        disp ('<strong>Vertical Upward Motion</strong>');
        disp (' ');
        disp ('To be known - Equations of Motion: ');
        disp ('• tmax = Vi/g');
        disp ('• hmax = Vi^2 / 2.g');
        disp ('• Vf^2 = Vi^2 - 2.g.h');
        disp ('------------------------------');
        disp ('What do you want to find out?');
        disp ('1. Time for Upward Movement (tmax)');
        disp ('2. Initial Velocity (Vi)');
        disp ('3. Maximum Height (hmax)');
        disp ('4. Final Velocity (Vf)');
        choice5 = input('Input your choice: ');
        disp (' ');
        g = 9.81;
        if choice5 == 1
            Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
            tmax = Vi/g;
            fprintf('Time required to reach maximum height (tmax) is: <strong>%.2f [second]</strong> \n', tmax);
        elseif choice5 == 2
            disp ('What do you know?');
            disp ('1. tmax');
            disp ('2. hmax');
            choice5_2 = input('Input your choice: ');
            disp ('---------------------------------------------');
            if choice5_2 == 1                
                tmax = input('Input time for upward movement (tmax) [second]: ');               
                Vi = tmax * g;
                disp ('---------------------------------------------');
                fprintf('The Initial Velocity (Vi) is: <strong>%.2f [meter/second]</strong> \n', Vi);
            elseif choice5_2 == 2                
                hmax = input('Input maximum height (hmax) [meter]: ');
                Vi = sqrt(hmax * (2*g));
                disp ('---------------------------------------------');
                fprintf('The Initial Velocity (Vi) is: <strong>%.2f [meter/second]</strong> \n', Vi);
            end
        elseif choice5 == 3
            Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
            hmax = Vi^2 / (2*g);
            fprintf('Maximum height (hmax) is: <strong>%.2f [meter]</strong> \n', hmax);
        elseif choice5 == 4
            Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
            hmax = input('Input maximum height (hmax) [meter]: ');
            Vf = sqrt(Vi^2 - 2*g*hmax);
            fprintf('The Final Velocity (Vf) is: <strong>%.2f [meter/second]</strong> \n', Vf);
        end
end
