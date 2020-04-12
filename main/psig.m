function psig = psig(t,Ab)
addpath main public;
%psig-湖水与岩土的换热量,lambdag-土壤的导热系数,P-湖面的周长,tg-当地的地下水温度
dg = 2;
lambdag=2.78;
P=954;
tg=21;
psig = (0.99*(lambdag/dg)+0.9*(lambdag*P/Ab))*(t-tg);
% dg-地下水位与湖底之间的垂直距离，lambdag-土壤的导热系数，P-湖面的周长，tg-当地的地下水温度
end

