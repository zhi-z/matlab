%
%
%   绘制图形的基本属性
%   
%   1.plot函数的使用
%   2.绘制图形的辅助操作：title（图形的名称）；xlabel(x轴说明)等
%   3.坐标的控制：axis()
%   4.图形的保持：hold on/off
%   5.图形窗口的分割：subplot(m,n,p)
%   
%


x = linspace(0,2*pi,100);
y1 = sin(x);
y2 = 2*sin(x);
y3 = 3*sin(x);
x = [x;x;x]';
y = [y1;y2;y3]';
subplot(2,2,1);        %图形窗口的分割
plot(x,y,x,cos(x))
title('余弦');
xlabel('m/s');
ylabel('h');
%axis off                %取消坐标轴
grid                     %网络线的控制
                       %绘制第二个图像
%hold on                  %保持图像

[x,y] = plot_1();
subplot(2,2,2);          %图形窗口的分割
plot(x,y)

[x,y] = plot_1();
subplot(2,2,3);          %图形窗口的分割
plot(x,y)

[x,y] = plot_1();
subplot(2,2,4);          %图形窗口的分割
plot(x,y)
