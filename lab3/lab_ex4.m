% Cramers Rule

A = [1, 3, -2, 4; -2, -3, -2, 1; 3, 3, 5, -9; 4, 9, -5, -4];
U = [13;-2;-22;-19];
B = [1, 3, -2, 4, 13; -2, -3, -2, 1, -2; 3, 3, 5, -9, -22; 4, 9, -5, -4, -19];

B = rref(B);

A_1=A;
A_2=A;
A_3=A;
A_4=A;

A_1(:,1)=U;
A_2(:,2)=U;
A_3(:,3)=U;
A_4(:,4)=U;

A_deter = det(A);
A1_deter = det(A_1);
A2_deter = det(A_2);
A3_deter = det(A_3);
A4_deter = det(A_4);

x = A1_deter/A_deter;
y = A2_deter/A_deter;
z = A3_deter/A_deter;
w = A4_deter/A_deter;

disp("Value of x = "+ x);
disp("Value of y = "+ y);
disp("Value of z = "+ z);
disp("Value of w = "+ w);

disp("Matrice B");
disp(B);

disp("Matrice U");
disp(U);

disp("Matrice A");
disp(A);
disp("Determinant of A = " +A_deter);

disp("Matrice A1");
disp(A_1);
disp("Determinant of A1 = " +A1_deter);

disp("Matrice A2");
disp(A_2);
disp("Determinant of A2 = " +A2_deter);

disp("Matrice A3");
disp(A_3);
disp("Determinant of A3 = " +A3_deter);

disp("Matrice A4");
disp(A_4);
disp("Determinant of A4 = " +A4_deter);


