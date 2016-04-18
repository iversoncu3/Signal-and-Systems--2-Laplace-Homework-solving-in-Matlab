clc
syms s t
f(t)=exp(3*t)+cos(6*t)-exp(3*t)*cos(6*t);
answer=laplace(f);
pretty(answer)