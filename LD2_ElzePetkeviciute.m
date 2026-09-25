% Elzė Petkevičiūtė
% Ef-25/2
% 2026-09-18

% 1. Vienmaciai masyvai

v1 = 10 : -1 : -15;

v2 = log2(v1);

v3 = v1./v2;

v4 = v3';

disp (v4)

%% 

% 2. Dvimaciai masyvai

Cm1 = [ pi/2 : pi/2 : 3*pi/2 ]

Cm2 = [-1 : 1 : 1]

Cm3 = [-3 : -1 : -5]

C = [Cm1; Cm2; Cm3]

eiluciu_sumos = sum(C, 2)

%%

% 3. Praktinis veiksmu su masyvais taikymas

A = 4.5;
f = 6;
sigma = 1;
U1 = 3;
U2 = 1.5;

t = 0 : 0.001 : 1.5;

s = A*cos(2*pi*f*t);
n = sigma*randn(size(t));
x = s + n;

daugiau_U1 = x(abs(x) > U1);

x_filtr = x;
x_filtr(abs(x_filtr) < U2) = 0;

nefiltruotas = length(x);

dydis_daugiau_U1 = length(daugiau_U1);

max_reiksme = max(x_filtr);
min_reiksme = min(x_filtr);

fprintf('Nefiltruoto signalo dydis: %d\n', nefiltruotas)
fprintf('Atrinktu reiksmiu dydis: %d\n', dydis_daugiau_U1)
fprintf('Didziausia filtruoto signalo reiksme: %d\n', max_reiksme)
fprintf('Maziausia filtruoto signalo reiksme: %d\n', min_reiksme)


%%

% Papildoma uzd

A = input('\n Iveskite vektoriu A, kuri sudaro 10 skaiciu: ')
B = A([end:-1:6, 1:5])