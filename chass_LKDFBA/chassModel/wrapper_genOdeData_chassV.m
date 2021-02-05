function datasetFileName = wrapper_genOdeData_chassV(paramSetNum,dataDir)
% The job of this function is to generate noiseless, hi-res data from the
% ODE model. For our noisy cases, we'll feed the results from this script
% into a second function to generate numReps noisy data at a given
% combination of CoV and lo-res nT values. 
    
    % Chass model info
    if paramSetNum <= 16
        modelName = 'k-01';
    elseif paramSetNum > 16 && paramSetNum <= 24
        modelName = 'newModel-01';
    elseif paramSetNum > 24 && paramSetNum <= 32
        modelName = 'newModel-02';
    elseif paramSetNum > 32 && paramSetNum <= 40
        modelName = 'newModel-03';
    elseif paramSetNum > 40 && paramSetNum <= 48
        modelName = 'newModel-04';
    elseif paramSetNum > 48 && paramSetNum <= 56
        modelName = 'newModel-05';
    end
    
    if ismember(paramSetNum,[1 17 25 33 41 49])
        regName = '';
    elseif ismember(paramSetNum,[2 18 26 34 42 50])
        regName = '_dPYK';
    elseif ismember(paramSetNum,[3 19 27 35 43 51])
        regName = '_dPGI';
    elseif ismember(paramSetNum,[4 20 28 36 44 52])
        regName = '_dGAPDH';
    elseif ismember(paramSetNum,[5 21 29 37 45 53])
        regName = '_dPFK';
    elseif ismember(paramSetNum,[6 22 30 38 46 54])
        regName = '_dTIS';
    elseif ismember(paramSetNum,[7 23 31 39 47 55])
        regName = '_dRPE';
    elseif ismember(paramSetNum,[8 24 32 40 48 56])
        regName = '_dPGM';
    elseif paramSetNum == 9
        regName = '_dG6PDH';
    elseif paramSetNum == 10
        regName = '_dPGDH';
    elseif paramSetNum == 11
        regName = '_dALDO';
    elseif paramSetNum == 12
        regName = '_dPGluMu';
    elseif paramSetNum == 13
        regName = '_dR5PI';
    elseif paramSetNum == 14
        regName = '_dTKa';
    elseif paramSetNum == 15
        regName = '_dTKb';
    elseif paramSetNum == 16
        regName = '_dTA';
    end
    
    % Eh let's just hardcode the stem for this stuff here
    datasetFileName = sprintf('chassV_%s%s_hiRes.mat',modelName,regName);

    % We want hi-res version of our time-courses available:
    nT = 50;

    % For this function, we're going to just hard code stuff
    tStart = 0;
    tEnd = 10;
    numMetabs = 18;
    numFluxes = 48;
    
    load('chassSTM.mat');
    load('chass_concNames');
    load('chass_fluxNames');
    
    % Tack on target directory, if we specified a destination
    if exist('dataDir','var')
        if ~exist(dataDir,'dir')
            mkdir(dataDir);
        end
        datasetFileName = sprintf('%s/%s',dataDir,datasetFileName);
    end

    % Define ODE Test Parameter sets -- we can add x0 values to this,
    % perhaps? But not doing so right now. Instead, we have:
    try
        paramsVec = getParamsVecNum_chassV(paramSetNum);
        paramErrorCatch = false;
    catch
        paramErrorCatch = true;
    end


    % Check if we have a valid parameter set to work from before we move on
    if ~paramErrorCatch
    
        % Initialize our structure
        odeDataset.tStart = tStart;
        odeDataset.tEnd = tEnd;
        odeDataset.nT = nT;
        odeDataset.paramsVec = paramsVec(1:126);
        odeDataset.x0 = paramsVec(127:144);

        % Generate the actual ODE time course
        [odeDataset.timeVec, odeDataset.concMatrix, odeDataset.fluxMatrix] = solveOdeOriginalChass_noPooling(odeDataset.tStart,odeDataset.tEnd,odeDataset.nT,odeDataset.x0,odeDataset.paramsVec,stm);
        odeDataset.fluxMatrix(end,:) = [];
        odeDataset.fluxTimeVec = odeDataset.timeVec(1:end-1)+0.5*diff(odeDataset.timeVec(1:2));

        odeDataset.concNames = concNames;
        odeDataset.fluxNames = fluxNames;
        
        % Let's actually export this now
        save(datasetFileName,'-struct','odeDataset');

        % For reference, in case it turns out I want the '-struct' part later
% %         save(sprintf('odeData_k%d.mat',k),'-struct','singleDataStruct')
        
    else
        warning('Error assigning parameters, due to invalid paramSetNum = %d\nSkipping this dataset.',paramSetNum)
    end

end