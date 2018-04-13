%   时间：2016年8月7日16:23:00
%   作用：菜单的设计
%
%   内容：通过uinmenu函数创建菜单
%

% figure(gcf,'MenuBar','none');
% hm = uimenu(gcf,'Label','文件');
hm0 = figure(gcf,'MenuBar','none');
hm = uimenu(hm0,'Label','文件');
hm1 = uimenu(hm,'Label','保存');
hm2 = uimenu(hm,'Label','另存为');


