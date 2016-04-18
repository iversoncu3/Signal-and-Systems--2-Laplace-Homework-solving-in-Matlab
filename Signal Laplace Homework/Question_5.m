clc
syms s t Y
%%%%%%%%%%%%%%%%%% Laplace ile Cozumu 
ode='D(D(y))(t)+2*D(y)(t)+5*y(t)=20' %Denklemi Yaziyoruz
ltode=laplace(ode,t,s) % once tek tarafli laplace ini aliyoruz
eqn=subs(ltode,{'laplace(y(t),t,s)','y(0)','D(y)(0)'},{Y,0,10});
% denklemde initial conditions yerine degerlerini koyuyoruz
Y=solve(eqn,Y) %Denklemi Y ye gore cozuyoruz
y(t)=ilaplace(Y,s,t) % Ters laplace alarak gercek sonuca ulasiyoruz 

%%%%%%%%%%%%%%%%%% dSolve Komutu ile Cozumu %%%%%%%%%
dsolve('D2y +2*Dy +5*y=20','y(0)=0','Dy(0)=10')
