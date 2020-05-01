clear all
clc
syms x1(t) x2(t)
A = [-1 -1 3;1 1 -1;-1 -1 3]
lambda = eig(A);
fprintf('\n The eig values of A are: %f,%f\n\n',lambda);
for i=1:length(lambda)
    temp = null(A-lambda(i)*eye(size(A)),'r');
    P(:,i) = temp/min(temp);
end
disp('The modal matrix is:');
disp(P);
D = inv(P)*A*P;
X = [x1;x2];
sol1 = dsolve(diff(x1,2)+D(1)*x1==0);
sol2 = dsolve(diff(x2,2)+D(4)*x2==0);
disp('The sol of the system diff(X,2)+DX=0 is:');
disp(sol1);
disp(sol2);
disp('The sol of the given system is:');
Y = P*[sol1;sol2]
