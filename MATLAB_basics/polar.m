

%   
%       ������ͼ:polar(theta,rho,ѡ��)
%
%       ����p = sin(2theta)cos(2theta)

theta = 0:0.01:2*pi;
rho = sin(2*theta).*cos(2*theta);
polar(theta,rho,'b')