clc;
close;
clear all;
% ��������������
format short;
% ԭʼ����
x=[308.58 310 295 346 367
195.4 189.9 187.2 205 222.7
24.6 21 12.2 15.1 14.57
20 25.6 23.3 29.2 30
18.98 19 22.3 23.5 27.655
170 174 197 216.4 235.8
57.55 70.74 76.8 80.7 89.85
88.56 70 85.38 99.83 103.4
11.19 13.28 16.82 18.9 22.8
4.03 4.26 4.34 5.06 5.78
13.7 15.6 13.77 11.98 13.95];
n1=size(x,1);
% ���ݱ�׼������
for i = 1:n1
x(i,:) = x(i,:)/x(i,1);
end
% �����м���������ʡ�Դ˲�����ԭʼ���ݸ������data
data=x;
% ����ο����У�ĸ���أ�
consult=data(6:n1,:);
m1=size(consult,1);
% ����Ƚ����У������أ�
compare=data(1:5,:);
m2=size(compare,1);
for i=1:m1
for j=1:m2
t(j,:)=compare(j,:)-consult(i,:);
end
min_min=min(min(abs(t')));
max_max=max(max(abs(t')));
% ͨ���ֱ��ʶ���ȡ0.5
resolution=0.5;
% �������ϵ��
coefficient=(min_min+resolution*max_max)./(abs(t)+resolution*max_max);
% ���������
corr_degree=sum(coefficient')/size(coefficient,2);
r(i,:)=corr_degree;
end

% ���������ֵ����������ͼ
r
bar(r,0.90);
axis tight;
% �������������� �̶��ʲ�Ͷ��,��ҵͶ��,ũҵͶ��,�Ƽ�Ͷ��,��ͨͶ��
legend('�̶��ʲ�Ͷ��','��ҵͶ��','ũҵͶ��','�Ƽ�Ͷ��','��ͨͶ��');

% ���³�����Ϊ�˸�x����Ӻ��ֱ�ǩ
% �����ԭ������ȥ��x���ϵĹ��б�ǩ��Ȼ�����ı���עx��
% ȥ��X����Ĭ�ϵı�ǩ
set(gca,'XTickLabel','');

%  �趨X��̶ȵ�λ�ã�������6��ĸ����
n=6;
% ����ע�⣺x_range��Χ�����[1 n]�ᵼ�²���������������ʾ����
% ���Է�ΧҪ��һ��
x_value = 1:1:n;
x_range = [0.6 n+.4];
% ��ȡ��ǰͼ�εľ��
set(gca,'XTick',x_value,'XLim',x_range);

% ��X���ϱ��6��ĸ����
profits={'��������','��ҵ����','ũҵ����','��ҵ����','��ͨ����','����ҵ����'};
y_range = ylim;
% ���ı���עĸ��������
handle_date = text(x_value,y_range(1)*ones(1,n)+.018,profits(1:1:n));
% ���ı����������ú��ʵĸ�ʽ�ʹ�С����תһ���ĽǶ�
set(handle_date,'HorizontalAlignment','right','VerticalAlignment','top', 'Rotation',35,...
'fontname','Arial','fontsize',10.5);
% y����
ylabel('y');
title('Ͷ�ʶ����������');
