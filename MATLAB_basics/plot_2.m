%
%
%   ����ͼ�εĻ�������
%   
%   1.plot������ʹ��
%   2.����ͼ�εĸ���������title��ͼ�ε����ƣ���xlabel(x��˵��)��
%   3.����Ŀ��ƣ�axis()
%   4.ͼ�εı��֣�hold on/off
%   5.ͼ�δ��ڵķָsubplot(m,n,p)
%   
%


x = linspace(0,2*pi,100);
y1 = sin(x);
y2 = 2*sin(x);
y3 = 3*sin(x);
x = [x;x;x]';
y = [y1;y2;y3]';
subplot(2,2,1);        %ͼ�δ��ڵķָ�
plot(x,y,x,cos(x))
title('����');
xlabel('m/s');
ylabel('h');
%axis off                %ȡ��������
grid                     %�����ߵĿ���
                       %���Ƶڶ���ͼ��
%hold on                  %����ͼ��

[x,y] = plot_1();
subplot(2,2,2);          %ͼ�δ��ڵķָ�
plot(x,y)

[x,y] = plot_1();
subplot(2,2,3);          %ͼ�δ��ڵķָ�
plot(x,y)

[x,y] = plot_1();
subplot(2,2,4);          %ͼ�δ��ڵķָ�
plot(x,y)
