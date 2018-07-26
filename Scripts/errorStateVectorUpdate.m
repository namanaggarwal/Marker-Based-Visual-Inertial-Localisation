function errorStateVectorUpdate()
%This function updates the system error-state vector.
global errorStateVector;
global thetaTilde;
global bgTilde;
global G_vTilde;
global baTilde;
global G_pTilde;
global g_p_fTilde;
errorStateVector = [thetaTilde bgTilde G_vTilde baTilde G_pTilde g_p_fTilde];
end