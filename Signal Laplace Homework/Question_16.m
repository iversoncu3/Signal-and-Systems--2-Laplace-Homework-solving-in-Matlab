clc
syms s t
f(s)=19/(s+2)-1/(3*s-5)+7/(s^5);
answer=ilaplace(f);
pretty(answer)