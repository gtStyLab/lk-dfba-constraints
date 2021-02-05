function wrapper_fitCostaNoisySplit(fileName,fitStringList)
    % Edited to be able to smooth fluxes (flux estimation scheme 4) and
    % smooth both concentrations and fluxes (scheme 5) JLMar19
    
    % Specify directories and names for file I/O 
    odeDataDir = 'costa_LKDFBA/costaModel/costaData/noisy_data';
    seriesName = sprintf('Costa Noisy Split');
    
    % Are we separating out efflux controls? This makes for a lot of params
    % Set as true if using split method.
    fitOptions.separateParams = true;

    % Don't want to have to have separate fluxes for reversible reactions
    % when using the original model
    fitOptions.setIrreversible = 0;

    % Which flux estimation scheme are we using?
    %-1) Return original data, no interpolation
    % 0) Defaults to original data, but no suffix added to file name
    % 1) Original concentration and flux data from data set
    % 2) Smoothed concentrations with original flux data
    % 3) Original concentrations with fluxs from smoothing & backslash
    % 4) Smooth fluxes
    % 5) Smooth concentrations and fluxes
    fitOptions.fitPreprocessScheme = -1; 
    %fitOptions.fitPreprocessScheme = 5; 

    % T/F: Use a hueristic to modify objective weights on metabolite terms?
    % weights = ||errorVector(1:nMetabs)./(range(odeConcMatrix,1).^2)||
    fitOptions.useHeuristicWeights = true; 
    % If we use a heuristic, we can just set these as empty
    fitOptions.metaboliteWeights = [];
    fitOptions.allWeights = [];

    % Are we setting the efflux constraints from '<' to '='?
    % (This has a high chance of overconstraining the system)
	fitOptions.setEqualityEffluxes = false;

    % Are we displaying intermediate fitting progress?
    fitOptions.gaDisplay = 'iter';
    fitOptions.gaDisplay = 'off';
    
    % Set up a few more I/O things
    fitOptions.odeFile = sprintf('%s/%s',odeDataDir,fileName);
    fitOptions.seriesName = seriesName;
    
    % Make sure we have a directory in place to save results
    if ~isfield(fitOptions,'resultsDir')
        if fitOptions.fitPreprocessScheme >= 2
            fitOptions.resultsDir = 'results_split_noisy_smooth';
        else
            fitOptions.resultsDir = 'results_split_noisy';
        end
    end
    
    % Make sure the FBA model will know if we're doing pooled or split
    % regulation parameter mode
    if isfield(fitOptions,'separateParams')
        modelStruct.separateParams = fitOptions.separateParams;
    end
    
    % Load the FBA model structure
    setLkdfbaParamsCosta;
    
    % Overwrite the FBA objective according to our setting
    modelStruct.objectiveFluxIndex = 9;
    
    % Script to initialize other default fitting parameter
    if strcmp(fitStringList,'HP')
        setFitParamsCosta_HP
    else
        setFitParamsCosta
    end
    
    % We're not allowing missing values in this wrapper function
    missingX = zeros(26,1);
    
    % Filename for current fit results
    if ~isfield(fitOptions,'resultsFileStem')
        fitOptions.resultsFileStem = sprintf('%s',fileName(1:end-4));
    end

    % Finally: Perform the parameter fitting procedure
    fprintf('Fitting %s...\n',fitOptions.odeFile)
    fitCosta(modelStruct,fitOptions,fitStringList,missingX,fitOptions.resultsFileStem)

end
