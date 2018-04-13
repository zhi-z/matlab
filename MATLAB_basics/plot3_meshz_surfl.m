
%       
% 
%   ������άͼ�εķ���
% 
%   ���ӣ���xyƽ����ѡ������-8,8��*��-8,8�������ƺ���z = sin(sqrt(xƽ��))/����xƽ����y��ƽ��
% 
% 

[x,y] = meshgrid(-8:0.5:8);
z = sin(sqrt(x.^2+y.^2))./sqrt(x.^2+y.^2+eps);
subplot(2,2,1);
meshc(x,y,z);
title('meshc(x,y,z)');
subplot(2,2,2);
meshz(x,y,z);
title('meshz(x,y,z)');
subplot(2,2,3);
surfc(x,y,z);
title('surfc(x,y,z)');
subplot(2,2,4);
surfl(x,y,z);
title('surfl(x,y,z)');

