%practice question 4
%M.Nagarjuna 17MIS7162
% 19 Sept 2019 L17+L18
clc
clear all
A = [8 5 6;7 7 8;6 8 6]
eigenvaluesofA = eig(A)
if eigenvaluesofA > 0
    disp('It is positive Definite')
else
    disp('It is Negative Definite')
end
n=length(A);
c=poly(A) %coefficients of the char equation
P=zeros(n,n); %initialization purpose
for i=4
    P=P+c(i)*A^(n+1-i) %characterstic equation
end
disp('Hamilton is verified')