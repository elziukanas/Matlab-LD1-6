10% Elzė Petkevičiūtė
% Ef-25/2
% 2026-10-09

% 1. Celiu masyvai

% a)
C1 = cell(2, 2);
C1{1,1} = 42;
C1{1,2} = 'kazkaskazkas';
C1{2,1} = true;
C1{2,2} = 2 +2i;

C2 = cell(2, 2);
C2{1,1} = [1, 2; 3, 4];
C2{1,2} = struct('vardas', 'Tadas');
C2{2,1} = @sin;
C2{2,2} = uint8(225);

disp('Masyvas 1:');
disp(C1);

disp('Masyvas 2: ');
disp(C2);

% b)
C3D = cat(3, C1, C2);
figure('Name', 'Trimatis celiu masyvas');
cellplot(C3D);
title('Trimacio celiu masyvo (2x2x2) grafinis vaizdavimas');

tipai = cellfun(@class, C1, 'UniformOutput', false);
disp('C1 elementu duomenu tipai: ')
celldisp(tipai);

disp(['Ar C1{1,1} yra realusis skaicius?', num2str(isreal(C1{1,1}))]);
disp(['Ar C1{2,2} yra realusis skaicius?', num2str(isreal(C1{2,2}))]);

disp(['C3D ilgis (lentgh): ', num2str(length(C3D))]);

C_num = {1, 2; 3, 4};
M = cell2mat(C_num);
disp('Masyvas, paverstas is cell2mat: ')
disp(M);

disp(['Ar C3D yra tuscias?', num2str(isempty(C3D))]);


%% 2. Srauto valdymo konstruktoriai

while true
    m = input('Iveskite skaiciu m: ');
    n = input('Iveskite skaiciu n: ');

    if m == n
        disp('m=n, todel programa baigia darba');
        break;
    end

    if m > n
        didesnis = m;
        mazesnis = n;
    else
        didesnis = n;
        mazesnis = m;
    end

    while(didesnis - mazesnis) > 0
        didesnis = didesnis - mazesnis;

        if didesnis < mazesnis && didesnis > 0
            temp = didesnis;
            didesnis = mazesnis;
            mazesnis = temp;
        end
    end

    maziausia_teigiama = didesnis;

    disp(['Maziausia teigiama reiksme: ', num2str(maziausia_teigiama)]);
end


%% Papildoma

x = input('Iveskite skaiciu x: ');
y = input('Iveskite skaiciu y: ');

for i = 1:20
    m = randi([1, x]);
    n = randi([1, y]);

    A = nan(x, y);
    A(m, n) = 0;
    fprintf('Iteracija %d (m = %d, n = %d):\n', i, m, n);
    disp(A);
    pause(0.5);
end