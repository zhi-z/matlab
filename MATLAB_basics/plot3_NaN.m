% 
% 
%   ͼ�εĲü�����
% 
%   �ڴ�Բ�����СԲ
%   

[x,y,z] = sphere(20);
% ��������Ĵ���
z1 = z;
z1(:,1:4) = NaN;
c1 = ones(size(z1));
surf(3*x,3*y,3*z1,c1);
hold on

%���������С��
z2 = z;
c2 = 2*ones(size(z2));
c2(:,1:4) = 3*ones(size(c2(:,1:4)));
surf(2*x,2*y,2*z2,c2);
colormap([0,1,0;0.49,0,0;1,0,0]);   
grid on
hold off

