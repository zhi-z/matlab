% 
% 
%       ʵʱ��������
%
%       ģ�Ⲽ���˶�

n = 30;         %�����˶��ĵ���
s = 0.01;       %ָ�����¶�

% ����n������㣨x,y��������-0.5~0.5֮��
x = rand(n,1) - 0.5;        
y = rand(n,1) - 0.5;
h = plot(x,y,'.');          %���������
axis([-1 1 -1 1]);
axis square
grid off
set(h,'EraseMode','Xor','MarkerSize',20);       %���ò���ģʽΪXor
%ѭ��5000�Σ���������Ч��
for i = linspace(1,10,50000)
    drawnow
    x = x + s*randn(n,1);       %���긽������������
    y = y + s*randn(n,1);
    
    set(h,'XData',x,'YData',y);     %ͨ���ı��������������»�ͼ
end