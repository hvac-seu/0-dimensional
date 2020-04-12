function k = ff(y)
addpath main public;
A=19600;
Ab=29400;
z=testrk(A,Ab);
%实现水温模型右侧等式，即z=右侧等式
g=vpa(z,4)
%化简代数式结果，保留4位小数
f=matlabFunction(z);
%将z值赋给含t代数式中的t
k = f(y);
end