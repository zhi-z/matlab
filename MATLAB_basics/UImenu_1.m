%   ʱ�䣺2016��8��7��16:54:44
%   ���ã���ݲ˵�
%
%   ���ݣ�ͨ��uicontextmenu��������ݲ˵���
%   ���˵���������2e��-0.5x��sin(2*pi*x)
%   ������һ����֮����ϵ�Ŀ�ݲ˵������Կ������߶����ͺ����ߵĿ��
%   

x = 0:pi/100:2*pi;
% y = 2*exp(-0.5*x)*sin(2*pi*x);
y = 2*exp(-0.5*x).*sin(2*pi*x);
h1 = plot(x,y);
hc = uicontextmenu;
hls = uimenu(hc,'Label','����');
hlw = uimenu(hc,'Label','�߿�');
uimenu(hls,'Label','����','Call','set(h1,''LineStyle'','':'');');
uimenu(hls,'Label','ʵ��','Call','set(h1,''LineStyle'',''-'');');
uimenu(hlw,'Label','�ӿ�','Call','set(h1,''LineWidth'',8);');
uimenu(hlw,'Label','��ϸ','Call','set(h1,''LineWidth'',0.5);');
set(h1,'UIContextMenu',hc);







