function errorStateVectorInitialise(thetaTilde, bgTilde, G_vTilde, baTilde, G_pTilde, g_p_fTilde)
%This function updates/initialises the system error-state vector.
global errorStateVector;
errorStateVector(1) = thetaTilde;
errorStateVector(2) = bgTilde;
errorStateVector(3) = G_vTilde;
errorStateVector(4) = baTilde;
errorStateVector(5) = G_pTilde;
errorStateVector(6) = g_p_fTilde;
end
