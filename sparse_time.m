function output = sparse_time(n)
%SPARSE_TIME returns the time for a 
%For the kn box, we can go up to 20,000 safely
%Code is adapted from bench.m

rng(17);%Initialize rnd seed with 17
% Sparse linear equations
%n = 300;
A = delsq(numgrid('L',n));
%n = size(A, 1);
b = sum(A)';
tic
x = A\b; %#ok Result not used -- strictly for timing
output = toc;
