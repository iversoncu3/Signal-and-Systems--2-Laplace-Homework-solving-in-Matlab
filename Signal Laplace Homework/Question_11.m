clc
syms s t
f=(4*s+exp(-s))/((s-1)*(s+2));
answer=ilaplace(f);
pretty(answer)
