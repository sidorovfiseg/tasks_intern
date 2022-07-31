
x = 1:100;
y = 2.^x;

% Нахождение матриц для матричного уравнения    
[left, right] = create_matrixes(x, y, 5);

% Рассчет коэффициентов полинома
b = linsolve(left, right);
warning('off', 'MATLAB:nearlySingularMatrix')

% Создание полинома 
p = Polynom(b);

% Расчет P(x);
answer = calc(p, x);

% Построение точек для логарифма и апроксимирующего полинома 5 степени
plot(x, y, 'ro');
hold on;
plot(x, answer, 'b-');