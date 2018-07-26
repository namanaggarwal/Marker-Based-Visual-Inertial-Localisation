function fMat = Fc(omegaHatVector, accelerationHatVector, IqGHatQuaternion)
%This function populates the continuous-time error-state transition matrix
omegaHatCrossMat = crossMat(omegaHatVector);
accHatCrossMat = crossMat(accelerationHatVector);
quaternionMatrixTranspose = transpose(quat2rotm(IqGHatQuaternion));
fMat = [-omegaHatCrossMat -eye(3) zeros(3) zeros(3) zeros(3) zeros(3); 
     zeros(3) zeros(3) zeros(3) zeros(3) zeros(3) zeros(3); 
    -quaternionMatrixTranspose*accHatCrossMat zeros(3) zeros(3) -quaternionMatrixTranspose zeros(3) zeros(3);
    zeros(3) zeros(3) zeros(3) zeros(3) zeros(3) zeros(3);
    zeros(3) zeros(3) eye(3) zeros(3) zeros(3) zeros(3);
    zeros(3) zeros(3) zeros(3) zeros(3) zeros(3) zeros(3);];
end

