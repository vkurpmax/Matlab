clear;
clc;

%% MATLAB Program 2-5

A = [0 1; -25 -4];
B = [1 1; 0 1];
C = [1 0; 0 1];
D = [0 0; 0 0];

[NUM,den] = ss2tf(A,B,C,D,1)
[NUM,den] = ss2tf(A,B,C,D,2)
