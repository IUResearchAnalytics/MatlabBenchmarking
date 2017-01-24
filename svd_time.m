function output = svd_time(n)
%SVD_TIME returns the time for a singular value decomposition on an n x n
%matrix
%For the kn box, we can go up to 50,000 safely

rng(17);%Initialize rnd seed with 17
tic
svd(rand(n));
output = toc;
