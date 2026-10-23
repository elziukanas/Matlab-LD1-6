% Elzė Petkevičiūtė
% Ef-25/2
% 2026-10-16

% 1. Elementariu funkciju kurimas


function naujas_masyvas = pakartojimai(masyvas, kiek_kairen, kiek_desinen)
    naujas_masyvas = masyvas;

    for i = 1:kiek_kairen
        naujas_masyvas = [masyvas naujas_masyvas];
    end

    for i = 1:kiek_desinen
        naujas_masyvas = [naujas_masyvas masyvas];
    end
end

pakartojimai([1 2 3], 2, 1)


%%

% 2. Globaliu kintamuju naudojimas

global x y

x = 0:0.1:2*pi;

skaiciuoti

plot(x, y, '--s');
grid on;
xlabel('x');
ylabel('sin(x) + cos(x)');
title('sin(x) + cos(x)');


%%

% P. Funkcijos argumentu skaiciaus nustatymas

spefcfunkc(2, 3)
spefcfunkc(5, 2)
spefcfunkc(3, 4)

a = 2;
b = 3;
c = spefcfunkc(a, b);

function c = spefcfunkc(a, b)
    if nargin ~= 2
        error('Funkcijai reikia dvieju argumentu');
    end
    c = a^b;
end