% 
% 
%      ӰƬ����������
% 
%      MATLAB�ж���������
%      ���⣺����һ��ֱ�����ϱ仯������
%       
%

[x,y,z] = sphere(50);
m = moviein(30);
for i = 1:30
    surf(i*x,i*y,i*z)
    m(:,i) = getframe;
end
movie(m,10)
