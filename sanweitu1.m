x=xlsread('C:\Users\song\Desktop\CUMCM2017\定价模型在失败任务数据集上的定价结果图.xls','Sheet2','B2:B836');
y=xlsread('C:\Users\song\Desktop\CUMCM2017\定价模型在失败任务数据集上的定价结果图.xls','Sheet2','C2:C836');
z=xlsread('C:\Users\song\Desktop\CUMCM2017\定价模型在失败任务数据集上的定价结果图.xls','Sheet2','D2:D836');
xi=linspace(min(x),max(x));
yi=linspace(min(y),max(y));
[X,Y]=meshgrid(xi,yi);
Z=griddata(x,y,z,X,Y,'v4');
Ind=griddata(x,y,ind,X,Y,'nearest');
surf(X,Y,Z,Ind);