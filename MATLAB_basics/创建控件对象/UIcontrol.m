%   
%   ʱ�䣺2016��8��8��15:10:01
%   ����:�Ի�������
%       �����ؼ����������
%       
%       ����uicontrol���������ؼ�


pbstart = uicontrol(gcf,'Style','push','Position',[40 5 100 25],'String',...
    '����ͼ��','CallBack','t = 0:pi/20:2*pi;plot(t,sin(t));axis([0 2*pi -1 1]);');

ptgrid = uicontrol(gcf,'Style','toggle','Position',[170 5 100 25],'String',...
    '����','CallBack','grid');



