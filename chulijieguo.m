%�����ȡTIFFդ���ļ�
x1=geotiffread('F:\2020����\23-�ռ�����ͳ�Ʒ����γ�\2-����ƪ����\������Matlab��������\��������\lake.tif');
x2=geotiffread('F:\2020����\23-�ռ�����ͳ�Ʒ����γ�\2-����ƪ����\������Matlab��������\��������\river.tif');
x3=geotiffread('F:\2020����\23-�ռ�����ͳ�Ʒ����γ�\2-����ƪ����\������Matlab��������\��������\shopping.tif');
x4=geotiffread('F:\2020����\23-�ռ�����ͳ�Ʒ����γ�\2-����ƪ����\������Matlab��������\��������\education.tif');
x5=geotiffread('F:\2020����\23-�ռ�����ͳ�Ʒ����γ�\2-����ƪ����\������Matlab��������\��������\road.tif');
y=geotiffread('F:\2020����\23-�ռ�����ͳ�Ʒ����γ�\2-����ƪ����\������Matlab��������\��������\fangjiacahzhi.tif');
%��ȡ TIFF ���ݾ����������
[m,n]=size(x1); a=m*n; b=1;
%���к��֪ a=1187688��b=1
%��ÿ����������ת��Ϊ����������ͬ�����Ա������󼯺�
F1=reshape(x1,a,b);
F2=reshape(x2,a,b);
F3=reshape(x3,a,b);
F4=reshape(x4,a,b);
F5=reshape(x5,a,b);
Y=reshape(y,a,b);
%�޳���ֵդ��
F1(F1==99999)=[];
F2(F2==99999)=[];
F3(F3==99999)=[];
F4(F4==99999)=[];
F5(F5==99999)=[];
Y(Y==99999)=[];
%��һ�����ݴ���
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
%��ȡ�Ա�����������������������ͬ������5�еĿվ���
[c,d]=size(C1); 
data2=zeros(c,5);
%�ֱ�Ϊ�վ�������и�ֵ
data2(:,1)=C1;
data2(:,2)=C2;
data2(:,3)=C3;
data2(:,4)=C4;
data2(:,5)=C5;



