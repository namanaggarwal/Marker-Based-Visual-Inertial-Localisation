function  stateVectorInitialise(IqGQuaternion, bg, G_v, ba, G_p, g_p_f)
%This function updates/initialises the system-state vector.
global stateVector;
stateVector(1) = IqGQuaternion;
stateVector(2) = bg;
stateVector(3) = G_v;
stateVector(4) = ba;
stateVector(5) = G_p;
stateVector(6) = g_p_f;
end