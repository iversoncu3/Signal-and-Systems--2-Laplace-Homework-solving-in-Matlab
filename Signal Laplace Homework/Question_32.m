clc
syms s t
g(t)=t;
f(t)=t*diff(g(t),t);
answer=laplace(f)