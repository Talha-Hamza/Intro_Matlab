% Define the matrix (A) to be solved
A = [4, -3; -7, 8];

% Compute eigenvalues and eigenvectors of matrix A
eigenvalues = eig(A);
[eigenvectors, diagonal_matrix] = eig(A);

% Display the eigenvectors
disp('Eigenvectors (P):');
disp(eigenvectors);

% Display the diagonal matrix containing the eigenvalues
disp('Diagonal Matrix (D):');
disp(diagonal_matrix);

% Solve the intital value problem for constants 
c = eigenvectors\[10; -5];
disp('Solution constants c:');
disp(c);

% Create the diagonal matrix R using the values in vector c
R = [c(1) 0; 0 c(2)];

% Compute the matrix E = P*R
E = eigenvectors * R;

% Display the resulting matrix E
disp('Resulting Matrix E:');
disp(E);

