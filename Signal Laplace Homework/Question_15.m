clc
syms s t
f=6/s - 1/(s-8) +4/(s-3);
answer=ilaplace(f);
pretty(answer)