%practice question 4
%M.Nagarjuna 17MIS7162
% 19 Sept 2019 L17+L18
clc
clear all
syms x y
subplot(2,3,1)
z1 = sin(x)+(2*sin(y));
ezsurf(z1)
subplot(2,3,2)
z2 = (((4*(x^2))+(y^2))*(exp(-(x^2)-(y^2))));
ezsurf(z2)
subplot(2,3,3)
z3 = (x*y*(exp(-(y^2))));
ezsurf(z3)
subplot(2,3,4)
ezcontour(z1)
subplot(2,3,5)
ezcontour(z2)
subplot(2,3,6)
ezcontour(z3)