%% Noiseless data

clc; clear; close all;

dataDir = 'SyntheticData';

% Generate my hi-res datasets: see getParamsVecNum.m for param vals
nTotal = 20;

for k = 1:nTotal
    
    datasetNames{k} = wrapper_genOdeData_Synthetic(k,dataDir,'');
    
end

%% Noiseless down/up-regulated data

clc; clear; close all;

% Choose regulation
regName = 'dV2'; % dV2, dV3, dV4, uV2, uV3, uV4

dataDir = 'SyntheticData';

% Generate my hi-res datasets with regulation: see getParamsVecNum.m for param vals
nTotal = 20;

for k = 1:nTotal
    
    datasetNames{k} = wrapper_genOdeData_Synthetic(k,dataDir,regName);
    
end

%% Noisy data

%  Generate my noisy datasets, over various nT and CoV combinations
nTList = [15 50];
covList = [0.05 0.15];
numSets = 10;

nTotal = 20;

% Loop model #
for k = 1:nTotal
    % Get the hi-res dataset file name
    hiResDataFileName = sprintf('SyntheticData/Synthetic_k-%02d_hiRes.mat',k);
    
    % Loop nT values
    for nT = nTList

        % Loop CoV Values
        for cov = covList
            % Generate my noisy datasets
            wrapper_genNoisyDataSynthetic(hiResDataFileName,nT,cov,numSets)
        end
    end
end
    
