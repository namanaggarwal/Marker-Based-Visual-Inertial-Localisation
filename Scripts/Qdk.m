function QdkMatrix = Qdk(phiMat, Gc, Qc)
% This function returns the discrete-time system-noise covariance matrix.

% Remark: T, the sampling time is not taken as an input as it is assumed to
% be constant for the entire application.

%PhiMatrix, GcMatrix and QcMatrix are considered constant over a sampling
%interval.

QdkMatrix = phiMat*Gc*Qc*(tranpose(Gc))*(transpose(phiMat))*T;
end