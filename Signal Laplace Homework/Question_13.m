clc
syms s t
f(s)=(100*(s+3))/((s+1)*(s^2+2*s+5)*(s+2));
answer=ilaplace(f);
pretty(answer)
