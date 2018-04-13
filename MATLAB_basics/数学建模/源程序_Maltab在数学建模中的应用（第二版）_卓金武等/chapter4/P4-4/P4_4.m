clc, clear all, close all
% �󳦸˾��ⶨ�Ĺ��ܶ�ֵ
x1=[0.025 0.023 0.029 0.044 0.084 0.164 0.332 0.521 0.97 1.6 2.45 3.11 3.57 3.76 3.96 4 4.46 4.4 4.49 4.76 5.01];
n=length(x1);
year=0:n-1;
figure(1);
plot(year,x1,'k*');
x0=diff(x1);
x0=[x1(1),x0];
for i=2:n
    z1(i)=0.5*(x1(i)+x1(i-1));
end
z1;
B=[-z1(2:end)',z1(2:end)'.^2];
Y=x0(2:end)';
% ��ȻҲ����ʹ����С���˷���verhulst��ɫģ�͵ľ�����ʽ�����
% ǰ���½��Ѿ��к���ϸ�Ľ�����
abvalue=B\Y;
x=dsolve('Dx+a*x=b*x^2','x(0)=x0');
x=subs(x,{'a','b','x0'},{abvalue(1),abvalue(2),x1(1)});
forecast=subs(x,'t',0:n-1);
digits(6);x=vpa(x);
forecast
% ��ͼ
hold on;
plot(year,forecast,'k-.','linewidth',3);
xlabel('ʱ����Ȳ���/5Сʱ','fontsize',12);
ylabel('ϸ������Һ�����/OD600', 'fontsize',12);
legend('ʵ������','Ԥ������');
title('�󳦸˾�����S����������','fontsize',12);
axis tight;
