clc
syms s t
g(s)=(86*s-78)/((s+3)*(s-4)*(5*s-1));
answer=ilaplace(g);
pretty(answer)