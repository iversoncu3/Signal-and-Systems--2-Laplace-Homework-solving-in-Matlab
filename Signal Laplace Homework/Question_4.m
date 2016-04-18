clc
syms s t Y
%%%%%%%%%%%%%%%%%% Laplace ile Cozumu 
ode='D(D(y))(t)+4*D(y)(t)=4*t+cos(t-3)' %Denklemi Yaziyoruz
ltode=laplace(ode,t,s); % once tek tarafli laplace ini aliyoruz
eqn=subs(ltode,{'laplace(y(t),t,s)','y(3)','D(y)(3)'},{Y,0,7});
% denklemde initial conditions yerine degerlerini koyuyoruz
Y=solve(eqn,Y) %Denklemi Y ye gore cozuyoruz
y(t)=ilaplace(Y,s,t) % Ters laplace alarak gercek sonuca ulasiyoruz 



