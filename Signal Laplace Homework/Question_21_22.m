clc
syms s t
g(s)=(3*s-2)/(2*s^2-6*s-2);
answer=ilaplace(g);
pretty(answer)