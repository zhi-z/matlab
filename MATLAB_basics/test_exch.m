%
%
%   M文件调用方式：命令文件
%
%    创建一个命令文件将变量a b的值互换
%    然后执行该命令文件
%    

clear;
a = 1:10;
b = [11,12,13,14;
     15,16,17,18];
 c = a; a = b;b = c;
 a
 b