function [] = createGUI()
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
figure('Position', [ 300, 60, 1400, 900] )

uicontrol('Style', 'text', 'String', 'Внесите частоту в звуковом диапазоне', ... % отрисовка текста 1
    'Position', [100, 520, 300, 100], 'Backgroundcolor', [1 1 1]);

uicontrol('Style', 'text', 'String', 'Внесите частоту дискретизации', ... % отрисовка текста 2
    'Position', [100, 640, 300, 100], 'Backgroundcolor', [1 1 1]);

uicontrol('Style', 'text', 'String', 'Внесите длительность в секундах ', ... % отрисовка текста 3
    'Position', [100, 760, 300, 100], 'Backgroundcolor', [1 1 1]);

frequency = uicontrol ('Style', 'edit', 'Position' ,[400, 520, 150, 100], ... % отрисовка поля редактирования 1
    'Backgroundcolor', [1 1 1], 'HorizontalAlignment', 'left');

sample_rate = uicontrol ('Style', 'edit', 'Position' ,[400, 640, 150, 100], ... % отрисовка поля редактирования 2
    'Backgroundcolor', [1 1 1], 'HorizontalAlignment', 'left');

duration = uicontrol ('Style', 'edit', 'Position' ,[400, 760, 150, 100], ... % отрисовка поля редактирования 3
    'Backgroundcolor', [1 1 1], 'HorizontalAlignment', 'left');
but = uicontrol('Style', 'pushbutton', 'String', 'Озвучить',... % отрисовка кнопки
    'Position', [300, 400, 250, 100]);

but.Callback = {@buttonPushed, frequency, duration, sample_rate}; 

end

