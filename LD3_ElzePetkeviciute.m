% Elzė Petkevičiūtė
% Ef-25/2
% 2026-09-25

% 1. Dvimatis grafiku vaizdavimas

% a)
x = -pi : 0.1 : pi;
f1 = tan(sin(x) + sin (tan(x)));
figure(1);
plot(x, f1, 'y', 'LineWidth', 1.5);
title('Funkcija f(x) = tan(sin(x)) + sin(tan(x))');
xlabel('x');
ylabel('f(x)');
grid on;

% b)
f2_1 = exp(-0.5 * x);
f2_2 = sin(x);
figure(2);

% c)
yyaxis left;
semilogy(x, f2_1, 'r', 'LineWidth', 1.5);
ylabel('f(x) = e^{-0.5x} (Logaritminis mastelis');

yyaxis right;
plot(x, f2_2, 'b--', 'LineWidth', 1.5);
ylabel('f(x) = sin(x) (Tiesinis mastelis)');

xlabel('x');
title('Dvi funkcijos su skirtingomis y asimis');
legend('f(x) = e^{-0.5x}', 'f(x) = sin(x)', 'Location', 'northeast');
grid on;


%%

% 2. Specializuotu grafiku kurimas

% a)
N = 6;
M = 4;
A = rand(N, M);

figure(3);
area(A);
title('Atsitiktines matricos ploto diagrama');
xlabel('Eilutes (N)');
ylabel('Reiksmiu suma');
grid on;

% b)
figure(4);
mesh(A);
title('Atsitiktines matricos 3D pavirsius');
xlabel('Stulpeliai (M)');
ylabel('Eilutes (N)');
zlabel('Reiksme');
grid on;


%%

% P. Signalu grafinis atvaizdavimas
A= 4.5;
f = 6;
sigma = 1;
U1 = 3;
U2 = 1.5;

t = 0 : 0.001 : 1.5;

s = A * cos(2 * pi * f * t);
n = sigma * randn(size(t));
x = s + n;

x_filtr = x;
x_filtr(abs(x_filtr) < U2) = 0;

figure(5);

% a)
subplot(2, 1, 1);
hold on;
plot(t, x, '--', 'DisplayName', 'Pradinis signalas x(t)');
plot(t, x_filtr, '-', 'LineWidth', 1.2, 'DisplayName', 'Filtruotas signalas x_{filtr}(t)');
yline(U1, ':b', 'LineWidth', 1.25, 'DisplayName', 'Riba U_1');
yline(-U1, ':b', 'LineWidth', 1.25, 'HandleVisibility', 'off');
yline(U2, 'Color', [0.5, 0, 0.5], 'LineWidth', 1.25, 'DisplayName', 'Riba U_2');
yline(-U2, 'Color', [0.5, 0, 0.5], 'LineWidth', 1.25, 'HandleVisibility', 'off');

title('Pradinis ir filtruotas signalai bei ribos U_1, U_2');
xlabel('Laikas t, s');
ylabel('Itampa U, V');
grid on;

legend('Location', 'southwest');

xlim([min(t), max(t)]);
ylim([min(x)-0.5, max(x)+0.5]);
hold off;

% b)
subplot(2, 1, 2);
hold on;

ind_virs = abs(x) > U1;
t_virs = t(ind_virs);
x_virs = x(ind_virs);
stem(t_virs, x_virs, 'filled', 'DisplayName', 'Reiksmes |x| > U_1');
[max_val, max_idx] = max(x);
[min_val, min_idx] = min(x);

plot(t(max_idx), max_val, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r', ...
    'DisplayName', sprintf('Max itampa (%.2f V)', max_val));
plot(t(min_idx), min_val, 'vk', 'MarkerSize', 8, 'MarkerFaceColor', 'k', ...
    'DisplayName', sprintf('Min itampa (%.2f V)', min_val));

title('Signalu reiksmes, virsijancios U_1 riba ir ekstremumai');
xlabel('Laikas t, s');
ylabel('Itampa U, V');
grid on;

legend('Location', 'southwest');
xlim([min(t), max(t)]);
ylim([min(x)-0.5, max(x)+0.5]);
hold off;