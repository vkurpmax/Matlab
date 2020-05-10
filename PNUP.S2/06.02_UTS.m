%UTS
clear
clc
loop = 1;
while loop ~= 0
disp ('***************************************************************');
disp ('*           Program of Basic Physics Problem Solver           *');
disp ('*     Created as Mid Test Assignment of Matlab Programming    *');
disp ('* by: (Putu Herdy Kurniawan),     Student Reg. No.: (44419020)*');
disp ('***************************************************************');
disp (' ');


    disp('List of Cases:');
    disp('1. (B) - Linear Motion with Constant Acceleration');
    disp('2. (G) - Wave');
    disp('3. (J) - Alternating Current (AC) Circuit');
    disp('4. Exit');
    menu = input('Choose your cases: ');
    clc
    if menu == 1
        disp('<strong>(B) - Linear Motion with Constant Acceleration</strong>');
        disp(' ');
        disp('Formula');
        disp('<strong>Vf = Vi + a.t</strong>');
        disp(' ');
        disp ('Remember you may empty for only one variable');
        disp ("If you don't have the number, just press <strong>Enter</strong>");
        disp (' ');
        Vi = input('Input Initial Velocity (Vi) [meter/second]: ');
        a = input('Input Acceleration (a) [meter/second^2]: ');
        t = input('Input Time (t) [second]: ');
        Vf = Vi + a*t;
        disp ('---------------------------------------------');
        fprintf('The Final Velocity (Vf) is: <strong>%.2f [meter/second]</strong> \n', Vf);
        disp (' ');
        ulanggak = input ('Press 1 to continue, Press 0 to exit: ');
        if ulanggak == 1
            clc
            loop = 1;
        elseif ulanggak == 0
            loop = 0;
        end
        
    elseif menu == 2
        disp('<strong>(G) - Wave</strong>');
        disp(' ');
        disp('Formula');
        disp('<strong>y(t) = A.sin(2pi.f.t + phi)</strong>');
        disp (' ');
        phi = 0;
        pi = 3.1416;
        A = input('Input amplitudo (A) [meter]: ');
        f = input('Input frequency (f) [Hz]: ');
        t = input('Input Time (t) [second]: ');
        y = A *(sin((2*pi)*f*t + phi));
        disp ('---------------------------------------------');
        fprintf('Persamaan simpangan gelombang (y(t)) is: <strong>%f [meter]</strong> \n', y);
        disp (' ');
        ulanggak = input ('Press 1 to continue, Press 0 to exit: ');
        if ulanggak == 1
            clc
            loop = 1;
        elseif ulanggak == 0
            loop = 0;
        end
        
    elseif menu == 3
        disp('<strong>(J) - Alternating Current (AC) Circuit</strong>');
        disp (' ');
        R = input('Input tahanan (R) [Ohm]: ');
        f = input('Input frequency (f) [Hz]: ');
        L = input('Input Induktansi (L) [Henry]: ');
        C = input('Input Kapasitansi (C) [Farad]: ');
        
        XL = 2*pi*f*L;
        XC = 1/(2*pi*f*C);
        Z = sqrt(R^2 + (XL - XC)^2);
        disp ('---------------------------------------------');
        fprintf('Reaktansi induktif (XL) is: <strong>%f [Ohm]</strong> \n', XL);
        fprintf('Reaktansi kapasitif (XC) is: <strong>%f [Ohm]</strong> \n', XC);
        fprintf('Impedansi (Z) is: <strong>%f [Ohm]</strong> \n', Z);
        disp (' ');
        ulanggak = input ('Press 1 to continue, Press 0 to exit: ');
        if ulanggak == 1
            clc
            loop = 1;
        elseif ulanggak == 0
            loop = 0;
        end
               
    elseif menu == 4
        display('Exiting program...');
        pause(1);
        clc;
        loop = 0;
    else
        loop = 1;
    end
end
