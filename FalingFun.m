function [c,f,s]=FalingFun(x,t,u,dudx)
DAB=2e-4;
d=0.01;
nu=1e-6; %m^2/s
uavg=9.8*d^2/(3*nu);
c=3/2*uavg*(1-(x/d)^2);
f=DAB*dudx;
s=0;
end