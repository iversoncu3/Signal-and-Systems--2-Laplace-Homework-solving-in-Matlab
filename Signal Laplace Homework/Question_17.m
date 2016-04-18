clc
syms s t
f(s)=6*s/(s^2+25)+3/(s^2+25);
answer=ilaplace(f);
pretty(answer)