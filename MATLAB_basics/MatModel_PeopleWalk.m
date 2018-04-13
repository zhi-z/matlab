% 
% 
%   人行走时消耗的能量（数学建模）
% 

V=134;%V速度
t1=102;%t1为人行走的时间Δt
H=1.8;%高为H－－1.8米
m=700;%人的质量为m--70公斤
 
begin0=1;%临时变量
end0=1000;%临时变量
 
for c=begin0:end0%c为任意值,表每一步生物能量损失
    for a=1:180%a表示θ
        E=(1-cos(a/2*(pi/180)))*V*t1*m/sqrt(2-2*cos(a*(pi/180)))+V*t1*c*2/H/sqrt(2-2*cos(a*(pi/180)));%E为走路损失的总能量
        b(a)=E;%b为存值的变量
    end;
    hold on;
    plot(b)
    for o=1:a%求消耗能量最少的角度，并记录下来
        if b(o)==min(b)
         jd(c)=o;
         e(c)=min(b);
        end;
    end;
end;
%以上程序中jd()保存了c从begin到end0取值间，与c对应的损失最少的角度值
%画出jd()的图来就可以看到效果
for p=begin0:end0%求消耗能量最少的角度与生物能损失
    if e(p)==min(e)
        ok=p%以损失生物能o，以角度jd走能量损耗最少
        jd(p)
    end;
end;