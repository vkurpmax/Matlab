function TestFungsiWhile(p)
%selama nilai p kurang dari p+10
clc;
P = input('Input your own p = ');
p = P;
while p < P+10
disp('The value of p now is : ');
%show the value of p
p
%increment the value of p
p = p+1;
end
