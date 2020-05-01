% M.NAGARJUNA 17MIS7162
% 29 Aug 2019
% LAB MANUAL PROBLEM-1
clear all
clc
A=[80 20 0;30 40 30;20 10 70]
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