% M.Nagarjuna-17MIS7162
% PPT Question
clc
clear all
syms x1(t) x2(t)
A = [5 8 16;4 1 8;-4 -4 -11]
lambda = eig(A)
fprintf('\nThe eigen values of A are:%f,%f\n\n',lambda);
for i=1:length(lambda)
    temp = null(A-lambda(i)*eye(size(A)),'r');
    P(:,i) = temp/min(temp);
end
disp('The Modal Matrix is:');
disp(P);
D = inv(P)*A*P;
X = [x1;x2];
eqn1 = diff(x1,t,2) == x1+2*x1+5*x2;
Sol1 = dsolve(eqn1);
eqn2 = diff(x2,t,2) == x2+5*x1+2*x2
Sol2 = dsolve(eqn2);
disp('The solution of the system diff(X,2)+DX = 0 is:');
disp(Sol1);
disp(Sol2);
disp('The solution of the given system is:');
Y = P*[Sol1;Sol2];