B = [5, 7, 8;-3, 0, 4; -11, 10, 6];
D = [8, -4; 11, 15; 6, 27];

V = [51;52;53];

B_1=B;
B_1(:,1)=V;
B_2=B;
B_2(:,2)=V;
B_3=B;
B_3(:,3)=V;

disp("Matrice V");
disp(V);

disp("Matrice B");
disp(B);

disp("Matrice B1");
disp(B_1);

disp("Matrice B2");
disp(B_2);

disp("Matrice B3");
disp(B_3);


