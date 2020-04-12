function [x, y] = runge(x0, x1, y0, h)
addpath main public;
global  ts ta psisr W1 es ea i L COP;
position1=load('fushe.txt');
position2=load('qiwen.txt');
position3=load('fengsu.txt');
position4=load('shidu.txt');
position5=load('avgt.txt');
position6=load('fuhe.txt');
[A]=position2;
[B]=position1;
[C]=position3;
[D]=position4;
[E]=position5;
[F]=position6;
n = (x1 - x0) / h;
x = zeros(n + 1,1);
y = zeros(n + 1,1);
x(1) = x0;
y(1) = y0;
for i = 1:n
    ta=A(i)
    ts=y(i);
    psisr=B(i);
    W1=C(i)*0.15^0.16;
    es=Tetens(ts);
    ea=Tetens(ta)*D(n)/100;
    L=F(i)*1000;
    COP=5;
    x(i + 1) = x(i) + h;
    k1 = fun(x(i), y(i));
    %fun函数将微分方程中x,y的值赋给具体等式中的x,y，即该水温模型中的t
    k2 = fun(x(i) + 0.5*h, y(i) + k1*h/2);
    k3 = fun(x(i) + 0.5*h, y(i) + k2*h/2);
    k4 = fun(x(i)+ h, y(i) + k3*h);
    y(i + 1) = y(i) + h*(k1 + 2*k2 + 2*k3 + k4)/6;
end
end
