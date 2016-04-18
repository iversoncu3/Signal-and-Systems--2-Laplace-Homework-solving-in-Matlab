clc
syms s t
g(s)=8/(3*s^2+12)+3/(s^2-49);
answer=ilaplace(g);
pretty(answer)