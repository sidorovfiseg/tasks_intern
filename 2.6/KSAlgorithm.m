function [samples] = KSAlgorithm(frequency, duration, sample_rate)
%KSAlgorithm
%   Реализация алгоритма Карплуса-Стронга   

noise = -1 + (1 + 1).*rand(1, round(sample_rate / frequency)); % массив из белого шума
samples = zeros(1, sample_rate * duration);

for i = 1:size(noise, 2)
    samples(i) = noise(i); % в общий массив вносятся значения белого шума
end

for i = size(noise, 2) + 2:size(samples, 2)
    samples(i) = (samples(i - size(noise, 2)) + samples(i - size(noise, 2) - 1)) / 2; % расчет остальных значений
end

samples = samples / max(abs(samples));

end