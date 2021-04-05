%global r r_A r_B length_A length_B alpha1 alpha2 alpha3 rotz1 rotz2 rotz3
R=0.0433*1000;  % радиус окружности основания дельта-робота
r=0.0255*1000; % радиус окружности выходного звена дельта-робота
L = 0.065*1000; % длина первого сочленения
l = 0.150*1000; % длина второго сочленения
% alpha1 = 0;
% alpha2 = 2*pi/3;
% alpha3 = -2*pi/3;
% % матрицы поворота вокруг оси z
% rotz1=[cos(alpha1) -sin(alpha1) 0;
%         sin(alpha1) cos(alpha1) 0;
%         0 0 1];
% rotz2=[cos(alpha2) -sin(alpha2) 0;
%         sin(alpha2) cos(alpha2) 0;
%         0 0 1];
% rotz3=[cos(alpha3) -sin(alpha3) 0;
%         sin(alpha3) cos(alpha3) 0;
%         0 0 1];