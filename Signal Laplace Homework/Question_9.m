clc
syms s t
h=(s*exp(-4*s))/((3*s+2)*(s-2));
answer=ilaplace(h);
pretty(answer)
