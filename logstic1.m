%��һ������
load('�������ݴ�����.mat')
x=C5;
y=Y1;
[m,n]=size(x);
X=[ones(m,1),x];	%���Ա�����������ӳ��������ٻع�Y=y;
[B,Bint,E,Eint,Stats]=regress(Y,X);
B
Bint
Stats
