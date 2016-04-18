clc
syms s t
g=(3*s+8*exp(-20*s)-2*s*exp(-3*s)+6*exp(-7*s))/((s^2)*(s+3));
answer=ilaplace(g);
pretty(answer)
