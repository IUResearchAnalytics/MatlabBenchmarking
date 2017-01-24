nTrials = 20;

parameters = [100, 1000, 5000, 10000, 12800, 15000, 20000, 24000];
nParameters = length(parameters);
%%SParse test

sparseTimes = nan(nTrials, nParameters);

for n = 1:length(parameters)
    parameters(n)
    for i = 1:nTrials
        try
            sparseTimes(i,n) = sparse_time(parameters(n));
        catch ME
            disp(ME.message)
            %The only error I expect is OOM. For now leave is as nan
        end
    end
    save sparse_columbus.mat
end

