% MATLAB script used to set default LK-DFBA run parameters for the L.
% lactis model.

% Max value for otherwise unconstrained internal fluxes
boundMax = 1000;

modelStruct.solverScheme = 0;
modelStruct.nTBufferFraction = 0.25;
modelStruct.objectiveType = 'instant';
modelStruct.l2Weight = 1e-3;
modelStruct.minNt = 200;


% % % % % % % % % % Build the basic FBA model % % % % % % % % % % % % % % %

% First, load in the L. lactis model information
load('costaSTM_copasi.mat')
if exist('fitOptions','var') && isfield(fitOptions,'odeFile')
    load(fitOptions.odeFile,'concNames','fluxNames','concMatrix');
end

% Option: do we want to set equality constraints on efflux fluxes?
if exist('fitOptions','var') && isfield(fitOptions,'setEqualityEffluxes') && fitOptions.setEqualityEffluxes
    %modelStruct.equalityEffluxList = [];    
end

modelStruct.S = sparse(stm);
clear('stm')

% Save the concentration and flux names to our FBA structure
modelStruct.concNames = concNames;
modelStruct.fluxNames = fluxNames;


% Regulation Info: Each row is one regulatory constraint
% First column: Indices for Controller Metabolites 
% Second column: Indices for Target Fluxes
% Third column: Constraint 'sense' string, either '<' or '='

metReg = [2  4  8 25  3  4 22  3 25  5  6 24  7 21  4  8 21 25  4  9 23 25  5 13 16 14 15 21 23 ...
    14 17 21 10 12 23 11  3 18 23 19  8 18 20 22 25]; % Controller metabolites in allosteric regulation. Includes product inhibition.
rxnReg = [1  1  1  1  2  3  3  4  4  5  6  6  7  7  8  8  8  8  9  9  9  9 10 10 10 11 11 11 11 ...
    12 12 12 13 14 14 15 16 16 16 17 18 18 19 20 20]; % Target fluxes in allosteric regulation. Includes product inhibition.

% 'Allosteric' regulation
for regIdx = 1:length(metReg)
    modelStruct.kineticsMap{regIdx,1} = metReg(regIdx);
    modelStruct.kineticsMap{regIdx,2} = rxnReg(regIdx);
    modelStruct.kineticsMap{regIdx,3} = '<';
end

% Define concentration bounds on the model; default is 0 to inf
modelStruct.xBounds = [zeros(26,1) inf(26,1)];
clear('concMatrix')

% Define flux bounds on the original model;  LB = -inf --> reversible
modelStruct.vBounds = [-inf(21,1) inf(21,1)];
% Set irreversible reactions
modelStruct.vBounds([1 3 4 8 9 11 12 15 17 18 19 20 21],1) = 0;

% Now we're going to convert these bounds to finite values
modelStruct.vBounds(isinf(modelStruct.vBounds)) = boundMax*sign(modelStruct.vBounds(isinf(modelStruct.vBounds)));

% % % % Convert the FBA model to the reversible version % % % % % % % % % %
% I added in an option to let us skip taking this step, if we want...
if ~exist('fitOptions','var') || ~isfield(fitOptions,'setIrreversible') || isempty(fitOptions.setIrreversible) || ~fitOptions.setIrreversible
    % We need to split reversible reactions into 2x non-reversible
    modelStruct = convertModelIrrev(modelStruct);
else
    % We need to limit reversible reactions to forward direction
    modelStruct.vBounds(modelStruct.vBounds(:,1)<0,1) = 0;
end

% Then, let's add "Activity Constraints"
modelStruct = addActivityConstraints(modelStruct);


% objectiveFluxIndex is for instant objective function
%modelStruct.objectiveFluxIndex = [9]; % Default, Lactate only
modelStruct.objectiveFluxIndex = [9 11 12 14 15 19 21]; % All effluxes

% objectiveMetaboliteIndex is for terminal objective for pooling objective
modelStruct.objectiveMetaboliteIndex = [];


