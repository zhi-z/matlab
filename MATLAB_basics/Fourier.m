%
%   时间：2016年7月16日09:57:50
%
%   内容：离散傅里叶变换
%         离散傅里叶变换的实现
% 
%   给定数学函数x(t) = 12sin(2pi*10t+pi/4) + 5cos(2*pi*40t)
%

N = 128;        %采样点数
T = 1;          %取样时间终点
t = linspace(0,T,N);    %给定出N个时间ti(i = 1:N)
x = 12*sin(2*pi*10*t+pi/4) + 5*cos(2*pi*40*t);
dt = t(2) - t(1);
f = 1/dt;
X = fft(x);
F = X(1:N/2+1);
f = f*(0:N/2)/N;
plot(f,abs(F),'-*');
xlabel('Frequency');
ylabel('F(k)');

