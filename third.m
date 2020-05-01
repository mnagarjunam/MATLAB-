clc
clear all
syms f(x,y) 
f(x,y) = (((x-1).^2).*(y.^2))/(((x-1).^2)+(y.^2))
x = [0:0.5:2]
y = [-2:1:2]
surf(f(x,y),x,y)