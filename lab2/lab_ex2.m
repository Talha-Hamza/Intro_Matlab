A = [-2 1 9 1; 3 3 -4 2; 1 4 5 5];
B = [-2 1 9 1; 3 3 -4 2; 1 4 5 5];
% Using disp function
disp('Matrix A:');
disp(A);

A([1 3],:)=A([3 1],:);
A([2 3],:)=A([3 2],:);
A(2,:) = A(2,:)*(-1);
disp('Descending form of A:');
disp(A);

A(2,:) = A(2,:) - 2*A(1,:);
A(3,:) = A(3,:) - 3*A(1,:);

A(3,:) = A(3,:) - A(2,:);
A(2,:) = (-1/9)*A(2,:);

disp('Reduced form:');
disp(A);

B=rref(B);
disp('rref form:');
disp(B);