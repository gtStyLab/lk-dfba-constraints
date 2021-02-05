%% Generate noiseless E. coli data
% Includes original E. coli model and new "E. coli" models with different
% kinetic parameters. Also includes downregulated data.

clc; clear; close all;

dataDir = 'chassData';

nTotal = 56;

for k = 1:nTotal
    k
    datasetNames{k} = wrapper_genOdeData_chassV(k,dataDir);
    
end

%% Generate noisy E. coli data
% Generate noisy data for original E. coli model

clear;clc;

nTList = [15 50];
covList = [0.05 0.15];
numSets = 50;

% Get the hi-res dataset file name
hiResDataFileName = ['chassData/chassV_k-01_hiRes.mat'];

% Loop nT values
for nT = nTList

    % Loop CoV Values
    for cov = covList
        % Generate my noisy datasets
        wrapper_genNoisyDataChass(hiResDataFileName,nT,cov,numSets)
    end
end
    
