% 
% 
%      影片动画制作。
% 
%      MATLAB中动画的制作
%      例题：播放一个直径不断变化的球体
%       
%

[x,y,z] = sphere(50);
m = moviein(30);
for i = 1:30
    surf(i*x,i*y,i*z)
    m(:,i) = getframe;
end
movie(m,10)
