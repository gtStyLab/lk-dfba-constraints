% This script sets default hyperplane fitting parameters for the synthetic 
% models. Default values contained here are be overwritten by the wrapper 
% function from which this script is called, depending on the specific 
% configuration the wrapper script is being used to represent.


% The number of regualtions depends on whether we are using the 'unsplit'
% or 'split' parameterization methods. This is specified by the wrapper
% function which calls this script by pre-setting the field
% fitOptions.separateParams. For the "Improved constraints increase the
% predictivity and applicability of a linear programming-based dynamic
% metabolic modeling framework" manuscript, we focus on the unsplit method.
if exist('fitOptions','var') && isfield(fitOptions,'separateParams') && fitOptions.separateParams
    nRegs = 92;
else
    % nRegs = ;
end


% Default: Fit all parameters at once, one pass
fitOptions.fixedParameterSequence = zeros(nRegs,1);

% Model Specific: Weights for metabolites in fitness function.
fitOptions.metaboliteWeights = ones(1,5);      % Default
fitOptions.fitFluxes = false;                   % Default
fitOptions.setEqualityEffluxes = false;         % Default


% These will be assigned by the wrapper functions
% % fitOptions.odeFile = [];
% % fitOptions.resultsDir = [];
fitOptions.seriesName = '';

% Set other default parameters. Some are only used for LR+.
fitOptions.nTFit = [];                          % Default
fitOptions.useNonzeroRegularization = true;     % Default
fitOptions.penaltyWeight = [];                  % Default
fitOptions.nTries = 1;                          % Default
fitOptions.nTriesPerturbation = 1e-2;           % Default
fitOptions.solverType = 'fminsearch';           % Assume LR+
fitOptions.fitScheme = 1;                       % Default

% Default: Show final solver output (For GA *or* fminsearch)
fitOptions.fitProgressDisplay = 'off'; % Options are: 'iter', 'final', 'off', and 'diagnose'

% Default solver options for if I'm using the GA
fitOptions.gaPopulationSize = 40;
fitOptions.gaGenerations = 400;
fitOptions.gaSecondaryOptimization = false;

% Hyperplane parameter setup
[fluxList] = unique([modelStruct.kineticsMap{:,2}],'stable');

countDup = [];
for idx = 1:length(fluxList)
    countDup = [countDup sum(length(find([modelStruct.kineticsMap{:,2}]==fluxList(idx))))];
end
uniqIdx = find(countDup == 1);
dupIdx = find(countDup > 1);

numSconstraints = length(dupIdx);
numUniq = length(uniqIdx);
fitOptions.pLB = [-inf(numSconstraints + numUniq,1) -inf(numSconstraints + numUniq,1)];
fitOptions.pUB = [ inf(numSconstraints + numUniq,1)  inf(numSconstraints + numUniq,1)];

for regIdx = 1:numUniq
    modelStruct.HPkineticsMap{regIdx,1} = [modelStruct.kineticsMap{find([modelStruct.kineticsMap{:,2}] == fluxList(uniqIdx(regIdx))),1}];
    modelStruct.HPkineticsMap{regIdx,2} = fluxList(uniqIdx(regIdx));
    modelStruct.HPkineticsMap{regIdx,3} = [modelStruct.kineticsMap{find([modelStruct.kineticsMap{:,2}] == fluxList(uniqIdx(regIdx))),3}];
end
for HPIdx = 1:numSconstraints
    modelStruct.HPkineticsMap{numUniq+HPIdx,1} = [modelStruct.kineticsMap{find([modelStruct.kineticsMap{:,2}] == fluxList(dupIdx(HPIdx))),1}];
    modelStruct.HPkineticsMap{numUniq+HPIdx,2} = fluxList(dupIdx(HPIdx));
    modelStruct.HPkineticsMap{numUniq+HPIdx,3} = '<';
end

