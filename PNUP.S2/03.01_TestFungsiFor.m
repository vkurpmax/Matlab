function a = TestFungsiFor
clc;
p = input('Input your own p = ');
disp ('Elements of a are the quadratic number from 1 to p as follows:');
for y = 1:p
a(y) = y^2;
end
