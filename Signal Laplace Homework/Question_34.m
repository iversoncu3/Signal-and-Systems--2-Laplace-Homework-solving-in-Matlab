clc
syms s t 
h(s)=(s+1)/(s^2+2*s+2);
x(t)=exp(-t);
x(s)=laplace(x(t));
y(s)=x(s)*h(s)
y(t)=ilaplace(y(s))