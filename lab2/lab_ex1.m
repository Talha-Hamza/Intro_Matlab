A = [2 -1 4 -5 19; -1 3 -2 -1 -18; 0 1 5 -6 12; 3 -8 1 0 29];
B = [2 -1 4 -5 19; -1 3 -2 -1 -18; 0 1 5 -6 12; 3 -8 1 0 29];
% Using disp function
% disp('Matrix A:');
% disp(A);

A([2 1],:)=A([1 2],:);
A([4 3],:)=A([3 4],:);

% Using disp function
disp('A in ascending column:');
disp(A);

% cancelling the first column
A(2,:)=A(2,:)+2*A(1,:);
A(3,:)=A(3,:)+3*A(1,:);

% cancelling the second column
A(2,:)=(1/5)*A(2,:);
A(1,:)=A(1,:)-3*A(2,:);
A(3,:)=A(3,:)-A(2,:);
A(4,:)=A(4,:)-A(2,:);

% cancelling the third column
A(1,:)=(-1)*A(1,:);
A(3,:)=(1/5)*A(3,:);
A(1,:)=A(1,:)+2*A(3,:);
A(4,:)=A(4,:)+5*A(3,:);

% making lead entries 1
A(3,:)=(-1)*A(3,:);
A(4,:)=(-5/31)*A(4,:);

% cancelling the fourth column
A(3,:)=A(3,:)-(8/25)*A(4,:);
A(2,:)=A(2,:)+(7/5)*A(4,:);
A(1,:)=A(1,:)+(96/25)*A(4,:);
% Using disp function
disp('Reduced matrix A :');
disp(A);

B = rref (B);

% Using disp function
disp('Actual Answer :');
disp(B);





