% ����������˶�������
% �������ǻ����ݶ�ѵ���㷨��RBF����
% ������Ӷ��������Ա㲻����������ֲ���Сֵ
function main()
clc;
close all;
clear all;
warning off;
% ��ʼ������
% �����������㣬����������㶼�����Ժ������������ɾ��뺯���ͼ��������
SamNum = 120;
TargetSamNum = 60;
% ��������ά��
InDim = 1;
% ��������Ԫ����
UnitNum = 10;
MaxEpoch = 10000;
% Ŀ�����
E0 = 0.09;

% ��������[1,60]����������
% ��������
SamIn = sort(59*rand(1,SamNum)+1);
SamOut = 0.5447*SamIn.^0.1489;

% ʵ������
TargetIn = 1:60;
TargetOut = [0.53173198482933 
0.599828865
0.644564773
0.671027441
0.697281167
0.717013297
0.732752613
0.745040151
0.75565936
0.763524144
0.779177473
0.792189854
0.806571209
0.813644571
0.822233807
0.826976013
0.837737352
0.842773177
0.854878049
0.859771055
0.863536819
0.865907219
0.869966906
0.872734818
0.875641915
0.878079332
0.881514601
0.886842845
0.891857506
0.898078292
0.906074968
0.910126947
0.91328894
0.917005814
0.920081668
0.924666569
0.928067079
0.932732111
0.936609264
0.940518784
0.94417839
0.946870779
0.958960328
0.961151737
0.963206107
0.964973998
0.967341306
0.96778647
0.968232044
0.970466082
0.974362934
0.98011496
0.98424337
0.987633062
0.991046183
0.995581505
0.997785861
1
1
1]';

figure;
hold on;
% ��ӱ߿��������
box on;
grid on;
plot(SamIn,SamOut,'kO');
plot(TargetIn,TargetOut,'b-');
xlabel('x');
ylabel('y');
title('ѵ���Ͳ���ͼ');

% ԭʼ�����ԣ�������������ʼ��
[SamIn,minp,maxp,SamOut,mint,maxt] = premnmx(SamIn,SamOut); 

% ����ԭʼ�������ݵĹ�һ�������������ݽ��й�һ����
TargetIn = tramnmx(TargetIn,minp,maxp);    
TargetOut = tramnmx(TargetOut,mint,maxt);   

% ��ʼ����������
Center = 8*rand(InDim,UnitNum)-4;
% ��ʼ�����
SP = 0.2*rand(1,UnitNum)+0.1;
% ��ʼ��Ȩֵ�������Ȩֵ��ָ�������������֮���Ȩֵ
% ��BP���粻ͬ���ǣ�����û���������������֮���Ȩֵ
% ���Ե�������ṹ�Ͻ���RBF����ʵ����
W = 0.2*rand(1,UnitNum)-0.1;

% ��������ѧϰ�ٶȣ����ʣ�
lrCent = 0.02;
% ���ѧϰ�ٶȣ����ʣ�
lrSP = 0.001;
% Ȩֵѧϰ�ٶȣ����ʣ�
lrW = 0.001;
% ��������ϵ��
arf = 0.001;

% �����洢���
ErrHistory = [];

for epoch = 1:MaxEpoch
% �������������������������֮��ľ��루������ŷʽ���룩
% �൱�����е�||x-c||���ʽ���������ʽΪ sum((x-y).^2).^0.5
    AllDist = dist(Center',SamIn);
SPMat = repmat(SP',1,SamNum);
% �Ը�˹������Ϊ���������˹�������ʽΪexp(-n^2)
UnitOut = radbas(AllDist./SPMat);
% ��������Ԫ���ݾ�����Ȩ������������
% ����������Լ��������ֱ�Ӽ�Ȩ�������
    NetOut = W*UnitOut;
    Error = SamOut-NetOut;
    
    SSE = sumsqr(Error)
    ErrHistory = [ErrHistory SSE];

    if SSE<E0,break,end
    
        % ��ʼ�������洢ǰһ�ε������ı�����ȫ����0�������
        CentGrad = zeros(size(Center(:,1))); 
        SPGrad = zeros(size(SP(1))); 
        WGrad = zeros(size(W(1)));
    
    for i = 1:UnitNum
        
       % �洢ǰһ��ѵ���ĵ���������������������ǰһ�ε�������������CenterPre
       % �Ա�����������ӻ��õ�
        CenterPre = CentGrad ;
       % ���ǰһ�ε�����
        SPPre = SPGrad ;
       % �������������֮�������Ȩֵ����ǰһ�ε�����
        WPre = WGrad ;
      
        % �������ĵ����練�����
        % ԭ����Ȼ����ʽƫ��
        % �����󵼣��������ĵĵ�����CentGrad���� ������-�������ģ�*���*�������������
% *Ȩֵ/���ƽ��
% ���¿�ȵ�������Ȩֵ����������
CentGrad=(SamIn-repmat(Center(:,i),1,SamNum))*(Error.*UnitOut(i,:)*W(i)/(SP(i)^2))'; 
    SPGrad = AllDist(i,:).^2*(Error.*UnitOut(i,:)*W(i)/(SP(i)^3))';
        WGrad = Error*UnitOut(i,:)';
        
        % ����������������ġ�����Լ�Ȩֵ
        Center(:,i) = Center(:,i)+lrCent*CentGrad;
        SP(i) = SP(i)+lrSP*SPGrad;
        W(i) = W(i)+lrW*WGrad;
        
        % �ݶȷ�ѵ��RBF����ͬ���������⼫������ֲ���Сֵ��ȱ�ݣ�����������Ӷ�������
        Center(:,i) = Center(:,i)+ arf*CenterPre ;
        SP(i) = SP(i)+ arf*SPPre ;
        W(i) = W(i) + arf*WPre ;   
    end
end

% ����������������
TestDistance = dist(Center',TargetIn);
TestSpreadsMat = repmat(SP',1,TargetSamNum);
TestHiddenUnitOut = radbas(TestDistance./TestSpreadsMat);
TestNNOut = W*TestHiddenUnitOut;
% ѵ�����������˹�һ����������Ҫ��ԭ
TestNNOut = postmnmx(TestNNOut,mint,maxt);
TargetIn = postmnmx(TargetIn,minp,maxp);
plot(TargetIn,TestNNOut,'r-');
axis tight;
legend('��������','ʵ������','��������');

figure;
hold on;
grid;
box;
[xx,Num] = size(ErrHistory);
plot(1:Num,ErrHistory,'k-');
xlabel('ѵ������');
ylabel('����С');
title('ѵ�����ͼ');
