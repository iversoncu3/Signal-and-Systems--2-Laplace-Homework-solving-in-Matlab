clc
syms s t
f(t)=6*exp(-5*t)+exp(3*t)+5*t^3-9;
answer=laplace(f);
pretty(answer)