[x,y] = meshgrid(-3:1:3,-5:5:5)
z = ((x.^2)+(y.^2))/2
surf(x,y,z)