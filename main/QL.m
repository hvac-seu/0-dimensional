function QL = QL(i,L)
addpath main public;
global COP;
if i>7535 || i<1656 %供暖季
    %通过时刻数来划分空调季、供暖季以及过度季
    QL=-(1-1/COP)*L;
elseif i>1656 && i<6192 %空调季
    QL=(1+1/COP)*L;
else
    QL=0; %过度季
end
end

