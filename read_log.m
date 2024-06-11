%% 读取指定的文件夹及其子文件中指定后缀文件的内容
%%
clc,close,clear

% 初始化
i=1;
mean_logData={};
name = {};

% 设置工作路径
Path = 'D:\hospital_crowd\All_image\inspection\inspection-20201027';% 设置数据存放的文件夹路径
FilePath = RangTraversal(Path);% 获取所有文件的路径存入元胞数组
Length_file = size(FilePath,1);    % 获取所提取数据文件的个数

for k = 1 : Length_file
    % 如果后缀为txt就读取文件内容
    if FilePath{k}(end-3:end)=='.txt'
        LogData = load(FilePath{k}); % 读取数据（因为这里是.txt格式数据，所以直接用load()函数)
        mean_logData{i} = mean(LogData);
        str = regexp(FilePath{k},'\','split');
        name{i}= char(str(end-1));
        i = i + 1;
        clear str logData
    end
    table = [name; mean_logData];
end
%保存table的Excel文件
str = regexp(Path,'\','split');
SheelName= char(str(end));
xlswrite([Path '/table.xlsx'],table,SheelName)

% x = [8:0.5:18];
% len = size(x,2);
% y = cell2mat(table(2,:));
% 
% plot(x,y,'-x')
% grid on
% xlabel('time')%x轴标记
% ylabel('number of people')%y轴标记
% for j=1:len
% text(x(j),y(j),num2str(y(j)))
% end

