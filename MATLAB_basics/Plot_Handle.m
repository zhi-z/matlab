% 
% 
%   �����ʹ��(handle)
%   
%   ���ԵĲ�����set()��get()����
% 

x = linspace(0,2*pi,30);
y = sin(x);
h0 = plot(x,y,'rx')         %���߶���ľ��
% h0 = 151.0034
 h1 = gcf                   %ͼ�δ��ھ��
% h1 = 1
 h2 = gca                   %��������
% h2 = 150.0012
 h3 = findobj(gca,'Marker','x')     %�����������ߵľ��
% h3 = 151.0034

set(h0,'Color','b')            %���ԵĲ�����
get(h0,'Color')