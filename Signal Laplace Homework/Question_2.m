clc
syms s t Y
%%%%%%%%%%%%%%%%%% Laplace ile Cozumu 
ode='2*D(D(y))(t)+3*D(y)(t)-2*y(t)=t*exp(-2*t)' %Denklemi Yaziyoruz
ltode=laplace(ode,t,s); % once tek tarafli laplace ini aliyoruz
eqn=subs(ltode,{'laplace(y(t),t,s)','y(0)','D(y)(0)'},{Y,0,-2});
% denklemde initial conditions yerine degerlerini koyuyoruz
Y=solve(eqn,Y) %Denklemi Y ye gore cozuyoruz
y(t)=ilaplace(Y,s,t) % Ters laplace alarak gercek sonuca ulasiyoruz 
