clc; clear; close all;

nTList = [15 50];
covList = [0.05 0.15];
numSets = 10;

% a. Get the hi-res dataset file name
hiResDataFileName = 'costaData/costa_k-01_concMol_1000_hiRes.mat';

% b. Loop nT values
for nT = nTList

    % c. Loop CoV Values
    for cov = covList
        % Generate my noisy datasets
        wrapper_genNoisyDataCosta(hiResDataFileName,nT,cov,numSets)
    end
end
    
