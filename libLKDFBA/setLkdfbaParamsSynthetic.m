% MATLAB script used to set default LK-DFBA run parameters for the
% synthetic models.

% Max value for otherwise unconstrained internal fluxes
boundMax = 1000;

modelStruct.solverScheme = 0;
modelStruct.nTBufferFraction = 0.25;
modelStruct.objectiveType = 'instant';
modelStruct.l2Weight = 1e-3;
modelStruct.minNt = 200;


% % % % % % % % % % Build the basic FBA model % % % % % % % % % % % % % % %

% First, load in the synthetic model information
load('Synthetic_STM.mat')
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
%modelStruct.concNames = concNames;
%modelStruct.fluxNames = fluxNames;


% Regulation Info: Each row is one regulatory constraint
% First column: Indices for Controller Metabolites 
% Second column: Indices for Target Fluxes
% Third column: Constraint 'sense' string, either '<' or '='

metReg = [4 3]; % Controller metabolites in allosteric regulation
rxnReg = [2 4]; % Target fluxes in allosteric regulation

% 'Allosteric' regulation
for regIdx = 1:length(metReg)
    modelStruct.kineticsMap{regIdx,1} = metReg(regIdx);
    modelStruct.kineticsMap{regIdx,2} = rxnReg(regIdx);
    modelStruct.kineticsMap{regIdx,3} = '<';
end

% Define concentration bounds on the model; default is 0 to inf
modelStruct.xBounds = [zeros(5,1) inf(5,1)];
clear('concMatrix')

% Define flux bounds on the original model;  LB = -inf --> reversible
modelStruct.vBounds = [-inf(5,1) inf(5,1)];
% Set irreversible reactions
modelStruct.vBounds([1:5],1) = 0;

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
modelStruct.objectiveFluxIndex = [5]; % Default

% objectiveMetaboliteIndex is for terminal objective for pooling objective
modelStruct.objectiveMetaboliteIndex = [];


