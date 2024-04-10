[Q] = [14.4721 10.0000 5.5279; 8.9443 10.0000 8.9443; 5.5279 10.0000 14.4721];
t = (0:0.2:10);

% Equation 1
x = 10 - 14.4721 * exp(-0.2618 * t) + 10 * exp(-0.2 * t) - 5.5279 * exp(-0.0382 * t);
plot(t, x, 'g:p', 'DisplayName', 'Equation 1');

% Equation 2
y = 10 + 8.9443 * exp(-0.2618 * t) - 10 * exp(-0.2 * t) - 8.9443 * exp(-0.0382 * t);
hold on;
plot(t, y, 'r:o', 'DisplayName', 'Equation 2');

% Equation 3
z = 10 - 5.5279 * exp(-0.2618 * t) + 10 * exp(-0.2 * t) - 14.4721 * exp(-0.0382 * t);
plot(t, z, 'b:s', 'DisplayName', 'Equation 3');

title('Pounds of Salt per Minute');
xlabel('Time in minutes');
ylabel('Pounds of Salt ');
legend('show');
