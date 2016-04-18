clc
syms s t
x(t)=exp(-t)*heaviside(t);
h(t)=exp(-2*t)*heaviside(t);
x(s)=laplace(x(t))
h(s)=laplace(h(t))
y(s)=x(s)*h(s)
y(t)=ilaplace(y(s))