%This function initialises the global parameters like the biases,
%quaternion from {G} to {I}, position of IMU in {G}, Gaussian zero-mean white noise n_a 
%and n_g etc.

% Initialising the state-vector parameters
global IqGQuaternion;
global bg;
global G_v;
global ba;
global G_p;
global g_p_f;

IqGQuaternion = 0;
bg = 0;
G_v = 0;
ba = 0;
G_p = 0;
g_p_f = 0;

% Initialising the error-state vector parameters
global thetaTilde;
global bgTilde;
global G_vTilde;
global baTilde;
global G_pTilde;
global g_p_fTilde;

thetaTilde = 0;
bgTilde = 0;
G_vTilde = 0;
baTilde = 0;
G_pTilde = 0;
g_p_fTilde = 0;

% Initialising the noise vector parameters
global n_g;
global n_wg;
global n_a;
global n_wa;

n_g = 0;
n_wg = 0;
n_a = 0;
n_wa = 0;

%Initialising system-noise covariance matrix
global Qc;
Qc = eye(12); %tune the diagonal entries of the 12*12 matrix