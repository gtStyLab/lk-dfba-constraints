% This script sets default fitting parameters for the synthetic models,
% except for the hyperplane approach. Default values contained here are be 
% overwritten by the wrapper function from which this script is called, 
% depending on the specific configuration the wrapper script is being used 
% to represent.


% The number of regualtions depends on whether we are using the 'unsplit'
% or 'split' parameterization methods. This is specified by the wrapper
% function which calls this script by pre-setting the field
% fitOptions.separateParams. For the "Improved constraints increase the
% predictivity and applicability of a linear programming-based dynamic
% metabolic modeling framework" manuscript, we focus on the unsplit method.
if exist('fitOptions','var') && isfield(fitOptions,'separateParams') && fitOptions.separateParams
    nRegs = 7;
else
    %nRegs = ;
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


% Bounds on [a,b] parameter search space   
% Default vaues
fitOptions.pLB = [-inf(nRegs,1),-inf(nRegs,1)];
fitOptions.pUB = [inf(nRegs,1), inf(nRegs,1)];

