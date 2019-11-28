function [alpha,beta] = RayleighDamping(omg1,omg2,dr1,dr2)
% calculate Rayleigh damping
% by Yan Fei
% Cn = alpha*Mn + beta*Kn
% dr = damping rate
% dr = alpha/2/omg +bate*omg/2 

omg1 = omg1*2*pi
omg2 = omg2*2*pi
% cycles/s to rad/s
b = [dr1;dr2]
a = [1/2/omg1 omg1/2; 1/2/omg2 omg2/2]
damping = a\b
alpha = damping(1)
beta = damping(2)
end