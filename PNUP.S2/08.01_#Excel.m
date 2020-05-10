while true
    clc
    clear
    disp ('***************************************************************');
    disp ('*                    Numerical Computation                    *');
    disp ('*         by: (E),      Student Reg. No.: ()       *');
    disp ('***************************************************************');
    disp (' ');
    p = input('    Input your P number : ');
    dx = input('    Input delta x : ');
    iteration = 10/dx;
    fun = @(x) (p/100)*x.^2+p;
    exsol = integral(fun,0,10);
    Dx=0;
    Area=0;
    disp(' ');
    fprintf('\t    # Used Rectangle : %d rectangles \n', iteration);
    fprintf('\t    #     Delta X    : %f \n', dx);
    fprintf('\t    -------------------------------------------\n');
    fprintf('\t    | <strong>Iteration</strong> |    <strong>x</strong>    |   <strong>f(x)</strong>  |   <strong>Area</strong>  |\n');
    fprintf('\t    -------------------------------------------\n');
    for j=1:iteration
        fx(j) = (p/100)*Dx.^2+p;
        area(j) = dx*fx(j);
        Area = Area + area(j);
        fprintf('\t    | %9d | %7.2f | %7.2f | %7.2f |\n', j, Dx, fx(j), area(j));
        X(j)=Dx;
        Dx = Dx + dx;
    end
    plot(X, fx, '-yo', 'linewidth', 2, 'markeredgecolor','g', 'markerfacecolor','w', 'markersize',3);
    xlabel('x');
    ylabel('f(x)');
    title('Grafik f(x)=(p/100)x^2+p');
    AREA = Area;
    error = (exsol - AREA)/exsol*100;
    fprintf('\t    -------------------------------------------\n');
    fprintf('\t    |        Numerical Area         | <strong>%7.2f</strong> |\n', AREA);
    fprintf('\t    -------------------------------------------\n');
    fprintf('\t    |          Exact Area           | <strong>%7.2f</strong> |\n', exsol);
    fprintf('\t    -------------------------------------------\n');
    fprintf('\t    |           Error (%%)           | <strong>%7.2f</strong> |\n', error);
    fprintf('\t    -------------------------------------------\n');
    fprintf('\n    <strong>Do you want to use this program again?\n\tInput ''1'' for Yes | Input ''0'' for No</strong>\n');
    while true
        id = input('    Your choice : ');
        if (id == 1)
            break
        elseif (id == 0)
            fprintf('\n\t    Thank you for using this program. Good bye!\n');
            break
        else
            fprintf('\n    <strong>Re-input the right choice...!!</strong>\n');
        end
    end
    if (id == 0)
        break
    end
end
