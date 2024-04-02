% Define the matrix (A) to be solved
A = [12, -7, 4; 6, -1, 1; -12, 12, -7];

% Compute eigenvalues and eigenvectors of matrix A
eigenvalues = eig(A);
[eigenvectors, diagonal_matrix] = eig(A);

% Display the eigenvectors
disp('Eigenvectors (P):');
disp(eigenvectors);

% Display the diagonal matrix containing the eigenvalues
disp('Diagonal Matrix (D):');
disp(diagonal_matrix);

% Solve the inital value problem for constants
c = eigenvectors\[-10;20;25];
disp('Solution constants c:');
disp(c);

% Create the diagonal matrix R using the values in vector c
R = [c(1) 0 0; 0 c(2) 0; 0 0 c(3)];

% Compute the matrix E = P*R
E = eigenvectors * R;

% Display the resulting matrix E
disp('Resulting Matrix E:');
disp(E);

