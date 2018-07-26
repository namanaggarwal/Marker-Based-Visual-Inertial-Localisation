function gMat = Gc(IqGHatQuaternion)
% This function returns the input noise matrix
IcGTranspose = transpose(quat2rotm(IqGHatQuaternion));
gMat = [-eye(3) zeros(3) zeros(3) zeros(3);
    -zeros(3) eye(3) zeros(3) zeros(3);
    -eye(3) zeros(3) -IcGTranspose zeros(3);
    -eye(3) zeros(3) zeros(3) eye(3);
    -eye(3) zeros(3) zeros(3) zeros(3);
    zeros(3) zeros(3) zeros(3) zeros(3);];
end