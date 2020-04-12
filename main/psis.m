function psis = psis(ts,ta,psisr,W1,es,ea)
addpath main public;
%psis 水面的净热流通量，psisr-太阳辐射，psiar-大气长波辐射,rs-水面对太阳辐射的反射率,ra-水面对大气长波辐射的反射率，psiwe-水面发出的长波辐射,psic-蒸发
%psisr,es,ea,ta,W1,
ra=0.03;
rs=0.07;
%psisr,es,ea,ta,W1,
sigma=5.67e-8;
Cr=0.17;
omega=0.5;
epsilonw=0.97;
P0=97220;
Cb=0.00061;
%syms t;
epsilona=(1-0.261*exp((-0.74e-4)*ta^2))*(1+Cr*omega^2);
% Cr-由云层高确定的系数，omega-云层覆盖的比例
psiar=sigma*epsilona*(ta+273.15)^4;
% sigma-Stefan-Boltzmann常数,epsilona-大气发射率,ta-气温
psiwr=sigma*epsilonw*(ts+273.15)^4;
% epsilonw-水面长波发射率
psie1=psie(ts,ta,W1);
% es-水面温度所对应的饱和水汽压，ea-空气的水汽压，W1-水面上方1.5米处的风速
psic=(psie1/(es-ea))*Cb*P0*(ts-ta);
% P0-水面上的大气压力，Cb-Bowen常数
psis = (1-rs)*psisr+(1-ra)*psiar-psiwr-psie1-psic;
end

