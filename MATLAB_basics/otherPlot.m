
%
%
%   ����һ����ͼ�����ͼ������ͼ�͸�ͼ��ʽ��������
%
%

x = 0:0.35:7;
y = 2*exp(-0.5*x);
subplot(2,2,1); bar(x,y,'g');    %ͼ�εķָ�
title('bar(x,y,"g")');
axis([0 7 0 2]);           %����Ŀ���
subplot(2,2,2);  fill(x,y,'r');
title('fill(x,y,"r")');axis([0 7 0 2]);
subplot(2,2,3);stairs(x,y,'k');
title('stairs(x,y,"b")');axis([0 7 0 2]);
subplot(2,2,4);stem(x,y,'k');
title('stem(x,y,"k")');axis([0 7 0 2]);
