%   
%   时间：2016年8月8日15:10:01
%   内容:对话框的设计
%       建立控件对象的事例
%       
%       利用uicontrol函数建立控件


pbstart = uicontrol(gcf,'Style','push','Position',[40 5 100 25],'String',...
    '绘制图形','CallBack','t = 0:pi/20:2*pi;plot(t,sin(t));axis([0 2*pi -1 1]);');

ptgrid = uicontrol(gcf,'Style','toggle','Position',[170 5 100 25],'String',...
    '网格','CallBack','grid');



