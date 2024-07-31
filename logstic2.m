%两元logistics模型
load('基础数据处理结果.mat');
a=mean(Y1);
Y1(Y1>a)=1; 
Y1(Y1<=a)=0;
myf = @(beta,X)beta(1)+(beta(2)*X(:,1))+(beta(3)*X(:,2))+(beta(4)*X(:,3))+(beta(5)*X(:,4))+(beta(6)*X(:,5));
mymodelfun = @(beta,X) 1./(1 + exp(-myf(beta,X)));
X=data2; n=1; y=Y1;
beta=[1 1 1 1 1 1];
wfun = @(XX) n./(XX.*(1-XX));
nlm = fitnlm(X,y,mymodelfun,beta,'Weights',wfun);