

%
%       ��άͼ��
%
%       ʹ��plot3(x1,y1,ѡ��1��x2,,y2,ѡ��2������������)������άͼ��
%
%

t = 0:pi/50:2*pi;
x = 8 *cos(t);
y = 4*sqrt(2)*sin(t);
z = -4*sqrt(2)*sin(t);
plot3(x,y,z,'p');      %����������ͼ�Σ�ѡ��Ϊ����Ƿ��š�
title('Line in 3-D Space');
text(0,0,0,'origin');
xlabel('x'),ylabel('y'),zlabel('z');grid;


