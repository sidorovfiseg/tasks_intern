
x = 1:100;
y = 2.^x;

% ���������� ������ ��� ���������� ���������    
[left, right] = create_matrixes(x, y, 5);

% ������� ������������� ��������
b = linsolve(left, right);
warning('off', 'MATLAB:nearlySingularMatrix')

% �������� �������� 
p = Polynom(b);

% ������ P(x);
answer = calc(p, x);

% ���������� ����� ��� ��������� � ���������������� �������� 5 �������
plot(x, y, 'ro');
hold on;
plot(x, answer, 'b-');