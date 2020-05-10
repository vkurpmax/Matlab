[X,Y] = meshgrid([-2:0.1:2]);
Z = X.*exp(-x.^2-Y.^2);
plot3 (X,Y,Z)
grid on
