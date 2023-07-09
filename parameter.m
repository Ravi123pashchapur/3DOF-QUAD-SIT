%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @author: Ravi Ashok Pashchapur                                             %
% @Date: 08/07/2023                                                          %
% @Project: 3DOF Hover QUAD                                                  %
% @Licence: MIT                                                              %
% @Reference Documents: QUANSER 3DOF Hover Model                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc
clear
close all

% Torqe co-efficient
kt = 0.0036;

% Force co-efficient
kf = 0.119;

% Moment of Inertia in yaw,pitch and roll
jy = 0.1044;
jp = 0.0552;
jr = 0.0552;

% Distance between pivot and motor axis
L = 0.1237;

% Maximum voltage
VMAX_AMP = 24;

% Bais Voltage
V_bias = 2;

% State Space matrix for 3DOF hover Quad
A = [0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1;0 0 0 0 0 0;0 0 0 0 0 0;0 0 0 0 0 0];

B = [0 0 0 0;0 0 0 0;0 0 0 0;-kt/jy -kt/jy kt/jy kt/jy;L*kf/jp -L*kf/jp 0 0;0 0 L*kf/jr -L*kf/jr];

C = [1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0];

D = [0 0 0 0;0 0 0 0;0 0 0 0];

% Q-Penelty Matrix
Q = [500 0 0 0 0 0;0 350 0 0 0 0;0 0 350 0 0 0;0 0 0 0 0 0;0 0 0 0 20 0;0 0 0 0 0 20];

% R-Penelty Matrix
R = [0.01 0 0 0;0 0.01 0 0;0 0 0.01 0;0 0 0 0.01];

% Control gain matrix from LQR 
K_LQR = lqr(A,B,Q,R);

disp("The LQR gain matrix K_LQR shown below:");
disp(K_LQR);
%K_LQR = [-111.8 132.3 0 -41.41 36.23 0;-111.8 -132.3 0 -41.41 -36.23 0;111.8 0 132.3 41.41 0 36.23;111.8 0 -132.3 41.41 0 -36.23];


