clc
syms s t
g(s)=25/((s^3)*(s^2+4*s+5));
answer=ilaplace(g);
pretty(answer)