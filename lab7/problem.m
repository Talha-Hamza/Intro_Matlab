
% Forming link matrix

A = [0, 1/2, 0, 0, 0, 0;
    0, 0, 1/3, 0, 1/2, 0; 
    1/4, 1/2, 0, 0, 0, 0; 
    1/4, 0, 0, 0, 1/2, 0; 
    1/4, 0, 1/3, 0, 0, 1; 
    1/4, 0, 1/3, 1, 0, 0];

% Calcultaion of power by raising A to 100 and multiplying with p0
p0 = [0; 0; 1; 0; 0; 0];
power_result = (A^100)*p0;
disp("Result for part b:")
disp(power_result);

% Calcultaion of power by finding eigen vector p
I=eye(6); R=rref(A-I);
v=-R(:,6);v(6)=1;
p=v/sum(v);
disp("Result for part c:")
disp(p);

