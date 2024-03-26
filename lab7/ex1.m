A = [0, 1/3, 1/2, 1/2, 0; 1/2, 0, 0, 0, 0; 0, 1/3, 0, 0, 0; 0, 1/3, 1/2, 0, 1; 1/2, 0, 0, 1/2, 0];
% Unchanged p0 
% p0 = [0;1;0;0;0];
% Changed p0 
p0 = [0;0;0;1;0];

result = (A^100)*p0;
disp("When A^100:")
disp(result)

result = (A^200)*p0;
disp("When A^200:")
disp(result)

result = (A^500)*p0;
disp("When A^500:")
disp(result)