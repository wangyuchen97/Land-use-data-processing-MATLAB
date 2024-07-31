%归一化处理
load('基础数据处理结果.mat')
x=C5;
y=Y1;
[m,n]=size(x);
X=[ones(m,1),x];	%在自变量矩阵中添加常数向量再回归Y=y;
[B,Bint,E,Eint,Stats]=regress(Y,X);
B
Bint
Stats
