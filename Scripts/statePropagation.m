function [X_kplus1, P_kplus1] = statePropagation(imuData, stateVector, stateCovarianceMatrix, T)
% This function propagates (apriori estimate) the system-state vector and the updated
% system-state covariance matrix by taking in input the previous values of
% the system-state vector and the covariance matrix.

%Remark: IMU data acts as an input to the filter. IMU data = [ax, ay, az, omegax, omegay, omegaz]


omegaHatVector = imuData(4:6) - stateVector(:,2);
accelerationHatVector = imuData(1:3) - stateVector(:,4);
IqGHatQuaternion = 
