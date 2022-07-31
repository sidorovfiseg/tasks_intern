classdef Polynom
    %   Polynom
    %   Ќебольша€ реализаци€ класса полином, в котором есть конструктор и
    %   метод дл€ подсчета результа полинома при подстановке х.
    
    properties
        coef
    end
    
    methods
        function obj = Polynom(c)
            if nargin > 0
                if isa(c, 'Polynom')
                    obj.coef = c.coef;
                else
                    obj.coef = c;
                end
            end
        end
        
        function answer = calc(obj, x) 
            answer = zeros(size(x));
            
            for i = 1:size(x, 2)
                for j = 0:size(obj.coef) - 1
                    answer(i) = answer(i) + power(x(i), j) * obj.coef(j + 1);
                end
            end
        end
    end
end

