% 
%   ��ά��ͼ�ľ�ϸ����
% 
%   �ӵ㴦��:
%           view������ʹ��
% 

subplot(2,2,1);mesh(peaks);     %���ƶ�庯��ͼ��
view(-37.5,30);
title('azimuth = -37.5,elevation = 30');
subplot(2,2,2);mesh(peaks);
view(0,90);
title('azimuth = 0,elevation = 90');
subplot(2,2,3);mesh(peaks);
view(90,0);
title('azimuth = 90,elevation = 0');
subplot(2,2,4);mesh(peaks);
P = gray(100);
collrmap(P);
view(-7,-10);
title('azimuth = -4,elevation = -10');





