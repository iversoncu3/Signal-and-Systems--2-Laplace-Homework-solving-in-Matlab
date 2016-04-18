clc
syms s t
f(s)=(1-3*s)/(s^2+8*s+21);
answer=ilaplace(f);
pretty(answer)