clc
syms s t
f(s)=(6*s-5)/(s^2+7);
answer=ilaplace(f);
pretty(answer)