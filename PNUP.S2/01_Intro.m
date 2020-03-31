clear
clc

p = 13;
q = 2*p

P = 2*p + p^2
Q = p - P / 50*q
R = Q * 1.8 / pi
S = abs (R)
T = sin (pi/(0.1*S))

deret1 = 0:p/10:p
deret2=linspace(0,p/10,p)

akar1=roots([1 -p -2*p^2]) 

akar2=roots([1 0 -10 0 9])
