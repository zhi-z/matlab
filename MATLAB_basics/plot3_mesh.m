%
%   ����άͼ���ֺ���z = sinycosx��
%
%   ʹ��mesh(x,y,z,c)����surf��x,y,z,c��������άͼ��
%


x = 0:0.1:2*pi;
[x,y] = meshgrid(x);
z = sin(y).*cos(x);
subplot(2,2,1);
mesh(x,y,z);
xlabel('x'),ylabel('y'),zlabel('z');
title('mesh');
grid off                        %�ر�����

x = 0:0.1:2*pi;
[x,y] = meshgrid(x);
z = sin(y).*cos(x);
subplot(2,2,2);
surf(x,y,z);
xlabel('x'),ylabel('y'),zlabel('z');
title('surf');
grid off                       %�ر�����

