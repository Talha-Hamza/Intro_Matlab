N = 5;

for i=1:5

        h=2/N; t=zeros(1,N+1); y=zeros(1,N+1); t(1)=0; y(1)=1;
        for n=1:N
        t(n+1)=t(n)+h;
        y(n+1)=y(n)+(-0.5*y(n)+2-t(n))*h;
        end
    plot(t, y, 'DisplayName', ['N = ' num2str(N)]), hold on;
     % Calculating error at t = 2
    z = 8 - 2 * 2 - 7 * exp(-2 / 2); % Exact solution at t=2
    error = y(N + 1) - z; % Difference between Euler approximation and exact solution at t=2
    errors(i) = error;
    N = N*2;
end

a = 0:0.01:2;
b = -7 * exp(-a / 2) - (2 * a) + 8;
plot(a, b, 'DisplayName', 'Exact Solution');

hold off;
xlabel('Time (t)');
ylabel('Value of y');
title('Approximation of y(t) with Varying N');
legend('show');

disp('Errors for different N values:');
disp(errors);