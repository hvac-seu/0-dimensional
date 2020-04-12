function E = Tetens(t)
addpath main public;
%E-饱和水汽压
E=6.112*100*exp(17.67*t/(t+243.5));
%修正的Tetens 公式,t 为摄氏度，在-35℃  +30℃范围内，该公式与Tentens公式的误差小于0.3%。
end

