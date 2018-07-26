function phiMatrix = phiMat(FcMat, T)
% This function returns the discrete-time state-transition matrix taking in
% input, the continuous-time state-transition matrix FcMat and sampling
% interval time, T.

%T is a scalar and FcMat is a matrix, of 18*18 dimensionality in our case. 

phiMatrix = expm(T*FcMat);
end