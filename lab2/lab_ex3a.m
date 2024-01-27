A = [2 3 -4 1 2; 3 -1 -1 2 4; 1 -7 5 -1 6];
B = [2 3 -4 1 2; 3 -1 -1 2 4; 1 -7 5 -1 6];
disp('Matrix A:');
disp(A);

A([1 3],:)=A([3 1],:);
A([2 3],:)=A([3 2],:);
disp('Descending form of A:');
disp(A);

% cleared first column
A(2,:) = A(2,:) - 2*A(1,:);
A(3,:) = A(3,:) - 3*A(1,:);

% cleared second column
A(2,:) = (1/17)*A(2,:); % making leading entry 1
A(1,:) = A(1,:)+ 7*A(2,:);
A(3,:) = A(3,:)- 20*A(2,:);

A(3,:) = (17/8)*A(3,:);% making leading entry 1
A(2,:) = A(2,:) + (14/17)*A(3,:);
A(1,:) = A(1,:) + (13/17)*A(3,:);

disp('Reduced form:');
disp(A);

B = rref(B);
disp('Actual Answer');
disp(B);
