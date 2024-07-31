%输入读取TIFF栅格文件
x1=geotiffread('F:\2020工作\23-空间数据统计方法课程\2-基础篇数据\第七章Matlab基础数据\基础数据\lake.tif');
x2=geotiffread('F:\2020工作\23-空间数据统计方法课程\2-基础篇数据\第七章Matlab基础数据\基础数据\river.tif');
x3=geotiffread('F:\2020工作\23-空间数据统计方法课程\2-基础篇数据\第七章Matlab基础数据\基础数据\shopping.tif');
x4=geotiffread('F:\2020工作\23-空间数据统计方法课程\2-基础篇数据\第七章Matlab基础数据\基础数据\education.tif');
x5=geotiffread('F:\2020工作\23-空间数据统计方法课程\2-基础篇数据\第七章Matlab基础数据\基础数据\road.tif');
y=geotiffread('F:\2020工作\23-空间数据统计方法课程\2-基础篇数据\第七章Matlab基础数据\基础数据\fangjiacahzhi.tif');
%获取 TIFF 数据矩阵的行列数
[m,n]=size(x1); a=m*n; b=1;
%运行后可知 a=1187688，b=1
%将每个变量矩阵转置为列向量，共同构建自变量矩阵集合
F1=reshape(x1,a,b);
F2=reshape(x2,a,b);
F3=reshape(x3,a,b);
F4=reshape(x4,a,b);
F5=reshape(x5,a,b);
Y=reshape(y,a,b);
%剔除空值栅格
F1(F1==99999)=[];
F2(F2==99999)=[];
F3(F3==99999)=[];
F4(F4==99999)=[];
F5(F5==99999)=[];
Y(Y==99999)=[];
%归一化数据处理
[c,~]=size(F1);
F1min = min(F1); F1max = max(F1);
C1=(F1-repmat(F1min,c,1))./repmat(F1max-F1min,c,1);
F2min = min(F2); F2max = max(F2);
C2=(F2-repmat(F2min,c,1))./repmat(F2max-F2min,c,1);
F3min = min(F3); F3max = max(F3);
C3=(F3-repmat(F3min,c,1))./repmat(F3max-F3min,c,1);
F4min = min(F4); F4max = max(F4);
C4=(F4-repmat(F4min,c,1))./repmat(F4max-F4min,c,1);
F5min = min(F5); F5max = max(F5);
C5=(F5-repmat(F5min,c,1))./repmat(F5max-F5min,c,1); 
Ymin = min(Y); Ymax = max(Y);
Y1=(Y-repmat(Ymin,c,1))./repmat(Ymax-Ymin,c,1); 
%读取自变量列向量的行列数，构建同行数，5列的空矩阵
[c,d]=size(C1); 
data2=zeros(c,5);
%分别为空矩阵的五列赋值
data2(:,1)=C1;
data2(:,2)=C2;
data2(:,3)=C3;
data2(:,4)=C4;
data2(:,5)=C5;



