clear all;
addpath main public;
%将主函数及数据文件夹加入环境变量
x0 = 0;
%初始时刻
x1 = 8759;
%结束时刻
y0 = 7.5;
%初始温度
h = 1;
%计算步长
[x, y] = runge(x0, x1, y0, h);
%将计算结果存在数组[x,y]中
