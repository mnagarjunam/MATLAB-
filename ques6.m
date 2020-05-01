a = [ 1 1 0;0 1 1;0 0 1]
b = [i 1-i 2+i;0 -1 3-i;0 0 -i]
c = [1 1 1;0 (sqrt(2)*i) -(sqrt(2)*i);1 -1 -1]
z = (a*b) - (b*a)
y = (a^2)+(b^2)+(c^2)
x = a*b*c
w = sqrt(a)+sqrt(b)+sqrt(c)
v = (exp(a)*(exp(b)+exp(c)))