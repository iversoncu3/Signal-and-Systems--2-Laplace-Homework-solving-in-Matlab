clc
syms s t
f(t)=4*cos(4*t)-9*sin(4*t)+2*cos(10*t);
answer=laplace(f)