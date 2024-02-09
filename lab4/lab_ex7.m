b = [1, 1, 1, 1, 1, 1; 0, 2, 4, 5, 6, 8];
c = [1, 0; 1, 2; 1, 4; 1, 5; 1, 6; 1, 8];
d = [0; 20; 30; 30; 50; 100];

disp("matrix b");
disp(b);

disp("matrix c");
disp(c);

disp("matrix d");
disp(d);

A = b*c;
Ainv = inv(A);
E = Ainv*b;
F = E*d;


disp("matrix A");
disp(A);

disp("matrix E");
disp(E);


disp("matrix F");
disp(F);

k = F(1);
m = F(2);

xcorrd = [0, 2, 4, 5, 6, 8];
ycorrd = [0; 20; 30; 30; 50; 100];
d=k+m*xcorrd;
plot(xcorrd,ycorrd,"r:p",xcorrd,d);