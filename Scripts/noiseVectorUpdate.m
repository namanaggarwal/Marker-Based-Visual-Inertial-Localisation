function noiseVectorUpdate()
%This function updates the state-noise vector. 
global n_g;
global n_wg;
global n_a;
global n_wa;
global systemNoiseVector;
systemNoiseVector = [n_g n_wg n_a n_wa];
end
