function output = fft_time(n)
%FFT_TIME returns the time for some fast Fourier transforms
%n should go up to 35 or so?
%Code is adapted from bench.m

x = randn(RandStream('mt19937ar'),1,2^n);
tic;
y = fft(x);
output = toc;
