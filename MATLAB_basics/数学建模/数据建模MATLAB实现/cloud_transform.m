function [x,y,Ex,En,He] = cloud_transform(y_spor,n)
 % x ��ʾ�Ƶ�
 % y ��ʾ�����ȣ������ǡ����Ρ������ȣ��������Ƕ���������ȶ��̶�
 % Ex ��ģ�͵�������������ʾ����
 % En ��ģ�͵�������������ʾ��
 % He ��ģ�͵�������������ʾ����
 
 % ͨ��ͳ����������������ģ�͵���������
 Ex = mean(y_spor);
 En = mean(abs(y_spor-Ex)).*sqrt(pi./2);
 He = sqrt(var(y_spor)-En.^2);

 % ͨ����ģ�͵�����������ԭ����ġ��ƵΡ�
 for q = 1:n
     Enn = randn(1).*He + En ;
     x(q) = randn(1).*Enn + Ex ;
     y(q) = exp(-(x(q) - Ex).^2./(2 .* Enn.^2));
 end
 x;
 y;
