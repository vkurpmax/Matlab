%Prettyprint symbolic expression

syms x
s = solve(x^4 + 2*x + 1, x,'MaxDegree',3);
pretty(s)
