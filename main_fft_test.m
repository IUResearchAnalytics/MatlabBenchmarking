nTrials = 20;

parameters = [20, 23, 25, 30, 35, 50];
nParameters = length(parameters);
%%FFT test

fftTimes = nan(nTrials, nParameters);

for n = 1:length(parameters)
    parameters(n)
    for i = 1:nTrials
        try
            fftTimes(i,n) = fft_time(parameters(n));
        catch ME
            disp(ME.message)
            %The only error I expect is OOM. For now leave is as nan
        end
    end
    save fft_test_columbus.mat
end

