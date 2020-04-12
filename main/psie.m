function psie = psie(ts,ta,W1)
addpath main public;
global es ea;
if ts>ta
    psie=0.01*(es-ea)*sqrt(22+12.5*W1^2+2*(ts-ta));
else
    psie=0.01*(es-ea)*sqrt(22+12.5*W1^2);
end

