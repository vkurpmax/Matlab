clear
clc

[num, txt, raw] = xlsread('COVID19 Kutai Timur1.xls');

t = txt(2:38,1);
y = num(:,1);
plot(y)
hold on
y2 = num(:,2);
plot(y2)
y3 = num(:,3);
plot(y3)
y4 = num(:,4);
plot(y4)
y5 = num(:,5);
plot(y5)
xticklabels(t)
hold off
