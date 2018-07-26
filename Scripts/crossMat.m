function crossMatrix = crossMat(vector_)
%returns a matrix crossMatrix such that crossMatrix.B = vector_ x B that is
%pre-multiplication by the crossMatrix of a vector is equal to
%cross-product with the vector
crossMatrix = [0 -vector_(3) vector_(2) ; vector_(3) 0 -vector_(1) ; -vector_(2) vector_(1) 0 ];
end