%
%       ʱ�䣺2016��7��16��11:31:35
%
%       ���ݣ���΢�ַ������(����-������)
%           ������[x,y] = ode23(f,t,y0)
%

t0 = 0;tf = 10;
y0 = 2;
[t,y] = ode23('funt',[t0,tf],y0);
y1 = sqrt(t+1) + 1;
plot(t,y,'b.',t,y1,'r-');
