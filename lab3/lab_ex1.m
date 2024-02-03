% Finding determinants of matrices

B = [5, 7, 8;-3, 0, 4; -11, 10, 6];
D = [8, -4; 11, 15; 6, 27];

disp("Matrice B");
disp(B);
disp("Matrice D");
disp(D);

detB = det(B);
detB_str = string(detB);


disp("Determinant of B = "+ detB_str);