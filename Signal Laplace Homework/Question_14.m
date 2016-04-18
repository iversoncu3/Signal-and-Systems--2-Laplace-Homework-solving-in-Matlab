clc
syms s t
y(s)=10/(s+2) + 48/((s+2)*(s^2+16));
answer=ilaplace(y(s));
pretty(answer)