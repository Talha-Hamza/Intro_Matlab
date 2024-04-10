% Define the matrix (A) to be solved
A = [-0.3, 0, 0.1; 
     0.1, -0.1, 0; 
     0, 0.1, -0.1];

% Compute eigenvalues and eigenvectors of matrix A
[eigenvectors, diagonal_matrix] = eig(A);

% Display the eigenvectors
disp('Eigenvectors (P):');
disp(eigenvectors);

% Display the diagonal matrix containing the eigenvalues
disp('Diagonal Matrix (D):');
disp(diagonal_matrix);

% Extract the eigenvalues
eigenvalues = diag(diagonal_matrix);

% Extract the first eigenvector and corresponding eigenvalue
first_eigenvector = eigenvectors(:,3);
first_eigenvalue = eigenvalues(1);
second_eigenvalue = eigenvalues(2);
third_eigenvalue = eigenvalues(3);

% First part
selector = [1,0,0; 
            0,0,0; 
            0,0,0];
multiplier = eigenvectors * selector * inv(eigenvectors);
disp(['e^(', num2str(first_eigenvalue), 't) * ']);
disp(multiplier);

% Second part
selector = [0,0,0; 
            0,1,0; 
            0,0,0];
multiplier = eigenvectors * selector * inv(eigenvectors);
disp(['e^(', num2str(second_eigenvalue), 't) * ']);
disp(multiplier);

% Third part
selector = [0,0,0; 
            0,0,0; 
            0,0,1];
multiplier = eigenvectors * selector * inv(eigenvectors);
disp(['e^(', num2str(third_eigenvalue), 't) * ']);
disp(multiplier);

