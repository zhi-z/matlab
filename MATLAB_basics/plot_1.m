%
%
%   ��άͼ��
%   
%   �������ø�ʽ��plot(x,y)
%
%   ��0<=x<=2pi�����ڣ���������y=2e(-0.5x)sin(2pix)

function [x,y] = plot_1()
x = [0:pi/200:2*pi];
y = [2*exp(-0.5*x).*sin(2*pi*x)];
%plot(x,y)


