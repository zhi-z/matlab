

%
%       三维图形
%
%       使用plot3(x1,y1,选项1，x2,,y2,选项2，。。。。。)绘制三维图形
%
%

t = 0:pi/50:2*pi;
x = 8 *cos(t);
y = 4*sqrt(2)*sin(t);
z = -4*sqrt(2)*sin(t);
plot3(x,y,z,'p');      %绘制三角形图形，选项为五角星符号、
title('Line in 3-D Space');
text(0,0,0,'origin');
xlabel('x'),ylabel('y'),zlabel('z');grid;


