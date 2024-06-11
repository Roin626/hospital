clc,clear,close
% num返回的是excel中的数据，txt输出的是文本内容，raw输出的是未处理数据
[num,txt,raw]=xlsread('D:/Image_test/logdata.xlsx');
data=[];
num=num(:,17:37);
%时间规范化
data(1,:)=num(1,:)*24; %'挂号区'
data(2,:)=num(11,:)*24; %,'内外科'
data(3,:)=num(21,:)*24; %,'儿科'
data(4,:)=num(31,:)*24; %,'检查'
data(5,:)=num(41,:)*24; %,'药房'
%% 按日期提取
%星期一
waiting(1,:) = num(13,:)+num(23,:);
waiting(2,:) = waiting(1,:)/max(waiting(1,:));
monday(1,:)=num(3,:)/sum(num(3,:));
monday(2,:)=num(13,:)/sum(num(13,:));
monday(3,:)=num(23,:)/sum(num(23,:));
monday(4,:)=num(33,:)/sum(num(33,:));
monday(5,:)=num(43,:)/sum(num(43,:));

tuesday(1,:)=num(4,:)/sum(num(4,:));
tuesday(2,:)=num(14,:)/sum(num(14,:));
tuesday(3,:)=num(24,:)/sum(num(24,:));
tuesday(4,:)=num(34,:)/sum(num(34,:));
tuesday(5,:)=num(44,:)/sum(num(44,:));

wednsday(1,:)=num(5,:)/sum(num(5,:));
wednsday(2,:)=num(15,:)/sum(num(15,:));
wednsday(3,:)=num(25,:)/sum(num(25,:));
wednsday(4,:)=num(35,:)/sum(num(35,:));
wednsday(5,:)=num(45,:)/sum(num(45,:));

thursday(1,:)=num(6,:)/sum(num(6,:));
thursday(2,:)=num(16,:)/sum(num(16,:));
thursday(3,:)=num(26,:)/sum(num(26,:));
thursday(4,:)=num(36,:)/sum(num(36,:));
thursday(5,:)=num(46,:)/sum(num(46,:));

friday(1,:)=num(7,:)/sum(num(7,:));
friday(2,:)=num(17,:)/sum(num(17,:));
friday(3,:)=num(27,:)/sum(num(27,:));
friday(4,:)=num(37,:)/sum(num(37,:));
friday(5,:)=num(47,:)/sum(num(47,:));

saturday(1,:)=num(8,:)/sum(num(8,:));
saturday(2,:)=num(18,:)/max(num(18,:));
saturday(3,:)=num(28,:)/max(num(28,:));
saturday(4,:)=num(38,:)/max(num(38,:));
saturday(5,:)=num(48,:)/max(num(48,:));

sunday(1,:)=num(9,:)/max(num(9,:));
sunday(2,:)=num(19,:)/max(num(19,:));
sunday(3,:)=num(29,:)/max(num(29,:));
sunsday(4,:)=num(39,:)/max(num(39,:));
sunday(5,:)=num(49,:)/max(num(49,:));

%%
%人数归一化

figure (1) 
plot(data(1,:),monday(1,:),data(2,:),monday(2,:),data(3,:),...
monday(3,:),data(4,:),monday(4,:),data(5,:),monday(5,:))
grid on
legend('挂号区','内外科','儿科','检查','药房');
title('monday')
xlabel('时间')
ylabel('人数')

figure (2) 
plot(data(1,:),tuesday(1,:),data(2,:),tuesday(2,:),data(3,:),...
tuesday(3,:),data(4,:),tuesday(4,:),data(5,:),tuesday(5,:))
grid on
legend('挂号区','内外科','儿科','检查','药房');
title('tuesday')
xlabel('时间')
ylabel('人数')


