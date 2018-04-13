H=10;%高为H
V=10;%V速度
t1=10;%t1为人行走的时间Δt
m=10;%人的质量为m
c=10;%c为任意值,表每一步生物能量损失
for a=1:180;%a表示θ
E=(1-cos(a/2*(pi/180)))*V*t1*m/sqrt(2-2*cos(a*(pi/180)))+V*t1*c*2/H/sqrt(2-2*cos(a*(pi/180)));%E为走路损失的总能量
    b(a)=E;%b为存值的变量
end;
plot(b)
for o=1:180;%求消耗能量最少的角度aa
    if b(o)==min(b)
        aa=o
    end;
end;