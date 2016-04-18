clc
syms s t
g=(5*exp(-6*s)-3*exp(-11*s))/((s+2)*(s^2+9));
answer=ilaplace(g);
pretty(answer)
