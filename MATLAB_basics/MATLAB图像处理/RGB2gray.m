%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% 时间：2017年1月15日22:35:56
% 内容：把RGB图像转转成灰度图像
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 方法一
% map = imread('hh.jpg');
% gmap = rgb2gray(map);
% figure(1); imshow(map);
% figure(2); imshow(gmap);

%% 方法二
% I=imread('zy.tif');
% x=rgb2gray(I);
% figure(1);
% subplot(1,2,1);
% imshow(I);
% title('原始图像');
% subplot(1,2,2);
% imshow(x);
% title('灰度图像'); 

I=imread('zy.tif');
x=rgb2gray(I);
figure(1);
subplot(1,2,1);
imshow(I);
title('原始图像');
subplot(1,2,2);
imshow(x,[60 120]);%imshow(x,[60 120]); 小于60表示为黑色。大于120表白色
title('灰度图像'); 




