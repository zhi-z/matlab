% 
% 
%       实时动画制作
%
%       模拟布朗运动

n = 30;         %布朗运动的点数
s = 0.01;       %指定的温度

% 产生n个随机点（x,y），处于-0.5~0.5之间
x = rand(n,1) - 0.5;        
y = rand(n,1) - 0.5;
h = plot(x,y,'.');          %绘制随机点
axis([-1 1 -1 1]);
axis square
grid off
set(h,'EraseMode','Xor','MarkerSize',20);       %设置擦除模式为Xor
%循环5000次，产生动画效果
for i = linspace(1,10,50000)
    drawnow
    x = x + s*randn(n,1);       %坐标附近添加随机噪声
    y = y + s*randn(n,1);
    
    set(h,'XData',x,'YData',y);     %通过改变数据属性来重新绘图
end