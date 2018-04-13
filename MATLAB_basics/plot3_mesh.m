%
%   用三维图表现函数z = sinycosx。
%
%   使用mesh(x,y,z,c)或者surf（x,y,z,c）绘制三维图形
%


x = 0:0.1:2*pi;
[x,y] = meshgrid(x);
z = sin(y).*cos(x);
subplot(2,2,1);
mesh(x,y,z);
xlabel('x'),ylabel('y'),zlabel('z');
title('mesh');
grid off                        %关闭网格

x = 0:0.1:2*pi;
[x,y] = meshgrid(x);
z = sin(y).*cos(x);
subplot(2,2,2);
surf(x,y,z);
xlabel('x'),ylabel('y'),zlabel('z');
title('surf');
grid off                       %关闭网格

