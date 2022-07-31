function [ left, right ] = create_matrixes(x, y, poly_degree )
% Функция, которая расчитывает матрицы для матричного уравнения в
% зависимости от степени апроксимирующей полиноминальной функции
    left = zeros(poly_degree + 1);
    right = zeros(poly_degree + 1, 1);
    
    for i = 0:poly_degree
       for j = 0:poly_degree
          if i == 0 && j == 0
              left(i + 1, j + 1) = poly_degree;
          else
              left(i + 1, j + 1) = sum(x.^(i+j));
          end
       end
       right(i + 1, 1) = sum(y.* x.^i);  
    end
end
