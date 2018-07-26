% First declare and initialise all global variables
global stateVector;
global IqGQuaternion;
global bg;
global G_v;
global ba;
global G_p;
global g_p_f;

global errorStateVector;
global thetaTilde;
global bgTilde;
global G_vTilde;
global baTilde;
global G_pTilde;
global g_p_fTilde;

globalParamInitialise(); %Initialises the global parameters
stateVectorInitialise(); %Initialises the state-vector
errorStateVectorInitialise(); %Initialises the error-state vector

for i=1:5 %decide on the basis of the sampling interval
    statePropagation(IMUdata); %Import IMUdata first of all; do something like IMUdata(i)
    globalParamUpdate();
    %also update the error-state vector parameters
end 

% once the state is propagated for like 5-10 times; do the update step
%write a function for the update step
%------------------------
%Write a routine to extract IMU Data
statePropagation(imuData);