% 
% 
%   ������άͼ��
% 
%   waterfall�����������ٲ�ͼ��Ч��
%   �ȸ���ͼʹ��contour3����
%   peaks��������庯��
%
%   ������ʾ�����ƶ�庯�����ٲ��͵ȸ���ͼ
%

subplot(1,2,1);
[X,Y,Z] = peaks(30);
waterfall(X,Y,Z);
xlabel('x'),ylabel('y'),zlabel('z');
subplot(1,2,2);
contour3(X,Y,Z,12,'k');   %����12����߶ȵĵȼ���
xlabel('x'),ylabel('y'),zlabel('z');
