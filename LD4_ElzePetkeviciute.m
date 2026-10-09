% Elzė Petkevičiūtė
% Ef-25/2
% 2026-10-02

% 1. Trimatis grafiku vaizdavimas

% a)
figure(1);
x = linspace(-2, 2, 20);
y = linspace(-2, 2, 20);
z = linspace(-1, 1,20);

[X, Y, Z]  = meshgrid(x, y, z);
R2 = X.^2 + Y.^2 + Z.^2;
F = sin(R2 / 20) .* exp(-R2);

slice(X, Y, Z, F, [0], [0], [0]);

colormap('jet');
shading interp;
colorbar;

xlabel('X asis');
ylabel('Y asis');
zlabel('Z asis');
title('Trimatis turio grafikas f(x, y, z)');

% b)
figure(2);
x_b = linspace(-1, 1, 50);
y_b = linspace(-1, 1, 50);
[X_b, Y_b] = meshgrid(x_b, y_b);

R_b = sqrt(X_b.^2 + Y_b.^2);
Z_b = exp(R_b.^2);

surf(X_b, Y_b, Z_b);
colormap('parula');
shading faceted;
colorbar;

xlabel('X asis');
ylabel('Y asis');
zlabel('Z asis');
title('Trimatis pavirsiaus grafikas z(r)');

view(70, 30);
grid on;


%% P. Funkcijos surf savybes

[X, Y] = meshgrid(-2:0.1:2, -2:0.1:2);
Z = 1 - (X.^2 + Y.^2);

% a)
figure(3);
surf(X, Y, Z);
shading interp;
lighting gouraud;
camlight('headlight');

title('a) pavirsius su apsvietimu (camlight)');
xlabel('X');
ylabel('Y');
zlabel('Z');
grid on;

% b)
figure(4);
surfc(X, Y, Z);

title('b) pavirsius su konturu pagrindo plokstumoje');
xlabel('X');
ylabel('Y');
zlabel('Z');
grid on;

% c)
figure(5);
surf(X, Y, Z);
title('c) paprastas funkcijos pavirsius');
xlabel('X');
ylabel('Y');
zlabel('Z');
grid on;