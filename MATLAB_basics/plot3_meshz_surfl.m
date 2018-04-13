
%       
% 
%   绘制三维图形的方法
% 
%   例子：在xy平面内选择区域【-8,8】*【-8,8】，绘制函数z = sin(sqrt(x平方))/根号x平方加y的平方
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

