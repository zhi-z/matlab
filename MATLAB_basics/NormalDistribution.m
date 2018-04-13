%
%正态分布函数。一个方差为σ=2，均值为μ=5的正态分布
%

x=0:0.1:10;
y=gaussmf(x,[2 5]);
plot(x,y)
xlabel('gaussmf, P=[2 5]')