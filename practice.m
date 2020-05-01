% M.NAGARJUNA 17MIS7162
% 29 Aug 2019
% CLASS PROBLEM
clear all
clc
A=[8 7 6;5 7 8;6 8 6]
%A=input('Enter the matrix A:');
% eigen values of A
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