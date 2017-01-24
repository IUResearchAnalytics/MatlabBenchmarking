nTrials = 20;

parameters = [100, 1000, 5000, 10000, 20000, 40000, 70000, 80000];
nParameters = length(parameters);
%%svd test

svdTimes = nan(nTrials, nParameters);

for n = 1:length(parameters)
    parameters(n)
    for i = 1:nTrials
        try
            svdTimes(i,n) = svd_time(parameters(n));
        catch ME
            disp(ME.message)
            %The only error I expect is OOM. For now leave is as nan
        end
    end
    %If it crashes it's probably because of a bad parameter saving here seems okay
    save svd_columbus.mat
end
