% 
% 
%   其他三维图形
% 
%   waterfall函数：绘制瀑布图的效果
%   等高线图使用contour3绘制
%   peaks函数：多峰函数
%
%   代码例示：绘制多峰函数的瀑布和等高线图
%

subplot(1,2,1);
[X,Y,Z] = peaks(30);
waterfall(X,Y,Z);
xlabel('x'),ylabel('y'),zlabel('z');
subplot(1,2,2);
contour3(X,Y,Z,12,'k');   %其中12代表高度的等级数
xlabel('x'),ylabel('y'),zlabel('z');
