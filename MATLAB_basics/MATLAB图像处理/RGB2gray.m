%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ʱ�䣺2017��1��15��22:35:56
% ���ݣ���RGBͼ��תת�ɻҶ�ͼ��
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ����һ
% map = imread('hh.jpg');
% gmap = rgb2gray(map);
% figure(1); imshow(map);
% figure(2); imshow(gmap);

%% ������
% I=imread('zy.tif');
% x=rgb2gray(I);
% figure(1);
% subplot(1,2,1);
% imshow(I);
% title('ԭʼͼ��');
% subplot(1,2,2);
% imshow(x);
% title('�Ҷ�ͼ��'); 

I=imread('zy.tif');
x=rgb2gray(I);
figure(1);
subplot(1,2,1);
imshow(I);
title('ԭʼͼ��');
subplot(1,2,2);
imshow(x,[60 120]);%imshow(x,[60 120]); С��60��ʾΪ��ɫ������120���ɫ
title('�Ҷ�ͼ��'); 




