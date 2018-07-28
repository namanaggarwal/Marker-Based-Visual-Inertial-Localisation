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

IqGQuaternion = [0.5000 0.5000 0.5000 -0.5000];
bg = deg2rad([0.05 0.001 0.005]); %w.r.t order of magnitudes
G_v = [0 0 0]; %as a first estimate
ba = 9.7853*[0.01 -0.01 0.3];
G_p = [0.1710 0.2280 1.6900];
%g_p_f_temp = transpose(generateCheckerboardPoints([7 9],35)); %square size is 35mm
g_p_f = generateCheckerboardPoints([7 9],35);
g_p_f = [g_p_f(10,1) g_p_f(10,2) 0];
%for i=1:96
 %  g_p_f(i) = g_p_f_temp(i);
%end

global stateVector;
stateVector = [IqGQuaternion bg G_v ba G_p g_p_f]; %initialising the system state vector

% Initialising the error-state vector parameters
global thetaTilde;
global bgTilde;
global G_vTilde;
global baTilde;
global G_pTilde;
global g_p_fTilde;

thetaTilde = [0.002 0.002 0.002]; %tune this parameter
bgTilde = deg2rad([0.005 0.0001 0.0005]);
G_vTilde = [0.001 0.001 0.001];
baTilde = [0.01 0.01 0.3];
G_pTilde = [0.02 0.02 0.2];
g_p_fTilde = zeros(size(g_p_f));

global errorStateVector;
errorStateVector = transpose([thetaTilde bgTilde G_vTilde baTilde G_pTilde g_p_fTilde]);

% Initialising the noise vector parameters
global n_g;
global n_wg;
global n_a;
global n_wa;

n_g = [0.001 0.001 0.001];
n_wg = [0.001 0.001 0.001];
n_a = [0.001 0.001 0.001];
n_wa = [0.001 0.001 0.001];

global systemNoiseVector;
systemNoiseVector = [n_g n_wg n_a n_wa];

%Initialising system-noise covariance matrix
global Qc;
Qc = diag([0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001]); %tune the diagonal entries of the 12*12 matrix

%Initialising the sampling time of IMU
global T;
T = 0.0044; % in seconds

%Initialising the state-covariance matrix (usually denoted by Pk)
global stateCovarianceMatrix;
stateCovarianceMatrix = eye(18); %state vector is of dimension 112*112