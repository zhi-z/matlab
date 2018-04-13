%   时间：2016年8月7日16:54:44
%   作用：快捷菜单
%
%   内容：通过uicontextmenu函数创快捷菜单。
%   建菜单绘制曲线2e（-0.5x）sin(2*pi*x)
%   并创建一个与之相联系的快捷菜单，用以控制曲线额线型和虚线的宽度
%   

x = 0:pi/100:2*pi;
% y = 2*exp(-0.5*x)*sin(2*pi*x);
y = 2*exp(-0.5*x).*sin(2*pi*x);
h1 = plot(x,y);
hc = uicontextmenu;
hls = uimenu(hc,'Label','线型');
hlw = uimenu(hc,'Label','线宽');
uimenu(hls,'Label','虚线','Call','set(h1,''LineStyle'','':'');');
uimenu(hls,'Label','实线','Call','set(h1,''LineStyle'',''-'');');
uimenu(hlw,'Label','加宽','Call','set(h1,''LineWidth'',8);');
uimenu(hlw,'Label','变细','Call','set(h1,''LineWidth'',0.5);');
set(h1,'UIContextMenu',hc);







