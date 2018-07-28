function [phi, H] = discretizeModel(Fc, Gc)
global T;
sys = ss(Fc, Gc, [], []);
sysd = c2d(sys, T);
phi = sysd.A;
H = sysd.B;
end