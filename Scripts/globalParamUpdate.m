function globalParamUpdate()
%This function updates the global parameters of interest based on the
%latest state estimate.
global stateVector;
global IqGQuaternion;
global bg;
global G_v;
global ba;
global G_p;
global g_p_f;

IqGQuaternion = stateVector([1 2 3 4]);
bg = stateVector([5 6 7]);
G_v = stateVector([8 9 10]);
ba = stateVector([11 12 13]);
G_p = stateVector([14 15 16]);
g_p_f = stateVector([17 18 19]); % 48 feature points; 48*2 = 96; we are writing this code for a single feature
end