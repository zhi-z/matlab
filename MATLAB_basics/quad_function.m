%
%   时间：2016年7月16日09:16:07
%   
%   作用：数值积分的实现
%       
%   内容：学会使用quad函数与quadl函数求定积分。
%

format long         %设置输出形式
I = quad('ex',0,1);
I
I = quadl('ex',0,1)

