clc
syms s t
f(s)=(2-5*s)/((s-6)*(s^2+11));
answer=ilaplace(f);
pretty(answer)