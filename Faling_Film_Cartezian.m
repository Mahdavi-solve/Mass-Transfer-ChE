clc;
clear;
close all;
z = linspace(0,0.01,30);
y = linspace(0,10,50);
m=0;
C0=8;
sol = pdepe(m,@FalingFun,@Falingic,@Falingbc,z,y);

CAw = sol(:,28,1) %(length,depth)
CAmid1=sol(:,22,1)
CAmid2 = sol(:,14,1)
CAif = sol(:,7,1)
plot(CAw,y,CAmid1,y,CAmid2,y,CAif,y)
legend ('CAW','CAmid1','CAmid2','CAif')
set(gca, 'YDir', 'reverse')
xlabel('CA')
ylabel('Wall Height')
title('Wall Falling Film')
