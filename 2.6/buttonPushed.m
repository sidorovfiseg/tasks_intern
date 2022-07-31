function [] = buttonPushed(src, event, frequency, duration, sample_rate)
    frequency = int64(str2double(get(frequency, 'String'))); 
    duration = int64(str2double(get(duration, 'String')));
    sample_rate = str2double(get(sample_rate, 'String'));
    samples = KSAlgorithm(frequency, duration, sample_rate);
    sound(samples, sample_rate);
end