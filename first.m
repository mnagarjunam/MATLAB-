x = [0:0.2:2]
y1 = sin(x.^2)
y2 = log(sqrt(x))
plot(x,y1)
hold on
plot(x,y2)
hold off
xlabel('x-axis')
ylabel('y-axis')
title('Sinodial and logarthmic graphs')