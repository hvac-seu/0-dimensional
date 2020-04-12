function f3 = testrk(A,Ab)
addpath main public;
global ts ta psisr W1 es ea i L;
syms t;
f1=psis(ts,ta,psisr,W1,es,ea);
f2=psig(t,Ab);
f4=QL(i,L);
%如需计算引入负荷后的水温变化，则在下式中加入f4
f3=(A*f1-Ab*f2+f4)*3600/(1000*117600*4186);
% 零维水温模型右侧等式
end
