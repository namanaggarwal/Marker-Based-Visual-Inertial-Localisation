function statePropagation(IMUdata)
% This function propagates (apriori estimate) the system-state vector and the updated
% system-state covariance matrix by taking in input the previous values of
% the system-state vector and the covariance matrix.

%Remark: IMU data acts as an input to the filter. IMU data = [ax, ay, az, omegax, omegay, omegaz]
global stateVector;
global errorStateVector;
global stateCovarianceMatrix; 
global systemNoiseVector;
global QcMatrix;
global T;

global bg;
global ba;
global IqGQuaternion;

omegaHatVector = IMUdata([4 5 6]) - bg;
accelerationHatVector = IMUdata([1 2 3]) - ba;

FcMatrix = Fc(omegaHatVector, accelerationHatVector, IqGQuaternion);
GcMatrix = Gc(IqGQuaternion);
phiMatrix = phiMat(FcMatrix, T);
QdkMatrix = Qdk(phiMatrix, GcMatrix, QcMatrix);

errorStateVector = phiMatrix*errorStateVector + (phiMatrix - eye(18))*GcMatrix*(inv(FcMatrix))*systemNoiseVector;
stateCovarianceMatrix = phiMatrix*stateCovarianceMatrix*(tranpose(phiMatrix)) + QdkMatrix;
stateVector = stateVector + errorStateVector;
end
% the code may fail if FcMatrix is not invertible. In that case, we'll have
% to numerically integrate the differential equation to get the coefficient
% matrix of system-noise vector in line 24.