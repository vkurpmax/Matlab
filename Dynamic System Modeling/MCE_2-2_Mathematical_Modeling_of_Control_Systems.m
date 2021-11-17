clear;
clc;

%% MATLAB Program 2-2

% MATLAB transforms the transfer function given by Equation (2-39)
% into the state-space representation given by Equations (2-40) and (2-41).
% For the example system considered here, MATLAB Program 2-2 will produce
% matrices A, B, C, and D.

num = [1 0];
den = [1 14 56 160];
[A,B,C,D] = tf2ss(num,den)
