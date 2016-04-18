clc
syms s t Y
%%%%%%%%%%%%%%%%%% Laplace ile Cozumu 
ode='D(D(y))(t)-10*D(y)(t)+9*y(t)=5*t' %Denklemi Yaziyoruz
ltode=laplace(ode,t,s); % once tek tarafli laplace ini aliyoruz
eqn=subs(ltode,{'laplace(y(t),t,s)','y(0)','D(y)(0)'},{Y,-1,2});
% denklemde initial conditions yerine degerlerini koyuyoruz
Y=solve(eqn,Y) %Denklemi Y ye gore cozuyoruz
y(t)=ilaplace(Y,s,t) % Ters laplace alarak gercek sonuca ulasiyoruz 

%%%%%%%%%%%%%%%%%% dSolve Komutu ile Cozumu %%%%%%%%%
dsolve('D2y -10*Dy +9*y=5*t','Dy(0)=2','y(0)=-1')
