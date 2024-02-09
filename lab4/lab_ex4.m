% Excercise 3
a = [0 1 2 3 4 5];
b = a.^3-9*a.^2+18*a;
plot(a,b);

% Excercise 4 - smoother graph
c=(0:0.1:5);
d=c.^3-9*c.^2+18*c;
plot(c,d);
c,d;