A = [2 3 -4 4; 8 11 -7 8; 2 2 -4 -3];
B = [2 3 -4 4; 8 11 -7 8; 2 2 -4 -3];

% disp('Matrix A:');
% disp(A);

A([1 3],:)=A([3 1],:);
A([2 3],:)=A([3 2],:);
disp('Descending form of A:');
disp(A);

% getting rid of first column:
A(1,:) = (1/2)*A(1,:); % making leading entry 1
A(2,:) = A(2,:) - (2)*A(1,:);
A(3, :) = A(3, :) - 8*A(1, :);

% getting rid of second column:
A(1,:) = A(1,:) - A(2,:);
A(3,:) = A(3,:) - 3*A(2,:);


% getting rid of third column:
A(3,:) = (1/9)*A(3,:);
A(1,:) = A(1,:) + (2)*A(3,:);


disp('Reduced form of A:');
disp(A);

B = rref(B);
disp('Actual Answer');
disp(B);
