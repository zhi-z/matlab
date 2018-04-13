% 
% 
%   句柄的使用(handle)
%   
%   属性的操作：set()与get()函数
% 

x = linspace(0,2*pi,30);
y = sin(x);
h0 = plot(x,y,'rx')         %曲线对象的句柄
% h0 = 151.0034
 h1 = gcf                   %图形窗口句柄
% h1 = 1
 h2 = gca                   %坐标轴句柄
% h2 = 150.0012
 h3 = findobj(gca,'Marker','x')     %坐标轴上曲线的句柄
% h3 = 151.0034

set(h0,'Color','b')            %属性的操作，
get(h0,'Color')