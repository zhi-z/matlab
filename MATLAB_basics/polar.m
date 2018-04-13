

%   
%       极坐标图:polar(theta,rho,选项)
%
%       绘制p = sin(2theta)cos(2theta)

theta = 0:0.01:2*pi;
rho = sin(2*theta).*cos(2*theta);
polar(theta,rho,'b')