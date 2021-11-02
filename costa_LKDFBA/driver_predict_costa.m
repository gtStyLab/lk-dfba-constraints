% Predict down/up regulations in noiseless L. lactis model

clc; clear; close all

% Choose flux to down/up regulate
regName = ''; % dLDH, dPFK, uPFK, uACK, uMP

% Choose glc_Ext initial value. Default 40000 for 40mM
glc_initial = 40000; % 20000, 40000, 80000
            
refDataName = 'costa_k-01_concMol_1000_hiRes.mat';
dataDir = '';
nTErrorCalc = 100;
shift_on = 1; % Set to 1 to shift constraints above all data

resultsDirectoryList =  {
                        'results_split';
                        };
saveDir = sprintf('%s_predict',resultsDirectoryList{1});


fileNameList = [];

for dirName = resultsDirectoryList'

    fileSubsetList = dir(dirName{1});
    fileSubsetList = {fileSubsetList(:).name}';
    for k = length(fileSubsetList):-1:1
        if strcmp(fileSubsetList{k}(1),'.')
            fileSubsetList(k) = [];
        else
            fileSubsetList{k} = sprintf('%s/%s',dirName{1},fileSubsetList{k});
        end
    end

    fileNameList = [fileNameList; fileSubsetList];
end


excludeList = {
               '';
               };
           
refData = load(refDataName);
load('costa_k-01_hiRes.mat');
refData.concNames = concNames;
refData.fluxNames = fluxNames;
refData.fluxMatrix = refData.fluxMatrix(:,1:21);

load('costaSTM_copasi_rev.mat','stm')
refData.STM = stm;

% Add terms for reversible reactions
refData = splitOdeDataReversible(refData);

totalTic = tic;

for k = 1:length(fileNameList)

    fileName = fileNameList{k};
    innerTic = tic;

    fprintf('Processing k = %5d\n\t%s\n',k,fileName);

    if exist(fileName,'file')
        slashIdx = strfind(fileName,'/');

        % Load in data files
        data = load(fileName);
        data.nTFit = 50;
        data.modelStruct.objectiveFluxIndex = 9; % Lactate only
        %data.modelStruct.objectiveFluxIndex = [9 11 12 14 15 19 21]; % All effluxes
        data.modelStruct.l2Weight = 0;
        
        errorCheck = false;
        
        if ~any(strcmp(fileName,excludeList))
            
            odeTimeVec = linspace(refData.tStart,refData.tEnd,nTErrorCalc+1);
            odeConcMatrix = interp1(refData.timeVec,refData.concMatrix,odeTimeVec,'linear','extrap');
            
            x0 = odeConcMatrix(1,:);
            x0(1) = glc_initial; % glc_Ext initial value
            
            if ~isempty(strfind(fileName,'HP.mat'))
                tempKineticsMap = data.modelStruct.HPkineticsMap;
            elseif ~isempty(strfind(fileName,'DR.mat'))
                tempKineticsMap = data.modelStruct.DRkineticsMap;
            else
                tempKineticsMap = data.modelStruct.kineticsMap;
            end
        
            if ~isempty(strfind(fileName,'fbaRegressionPlusParams.mat')) || ~isempty(strfind(fileName,'fbaRegressionParams.mat')) || ~isempty(strfind(fileName,'fbaGaParams.mat'))

                ntSim = nTErrorCalc;
                errorCheck = true;
                
                if shift_on == 1
                    % Shift constraints
                    for constraint_idx = 1:length(data.modelStruct.kineticsMap)
                        shift = max(refData.fluxMatrix(:,data.modelStruct.kineticsMap{constraint_idx,2}) - (data.optimalParams(constraint_idx,1)*refData.concMatrix(1:end-1,data.modelStruct.kineticsMap{constraint_idx,1})+data.optimalParams(constraint_idx,2)));
                        if shift > 0
                            data.optimalParams(constraint_idx,2) = data.optimalParams(constraint_idx,2) + shift;
                        end
                    end
                end
                data.modelStruct.vBounds(:,2) = 10000;
                
                % REGULATION
                
                if strcmp(regName,'dLDH')
                    % Downregulate LDH
                    params_location = find([tempKineticsMap{:,2}] == 9);
                    data.optimalParams(params_location,:) = 0.03*data.optimalParams(params_location,:);
                elseif strcmp(regName,'dPFK')
                    % Downregulate PFK
                    params_location = find([tempKineticsMap{:,2}] == 3);
                    data.optimalParams(params_location,:) = 0.03*data.optimalParams(params_location,:);
                elseif strcmp(regName,'uPFK')
                    % Upregulate PFK
                    params_location = find([tempKineticsMap{:,2}] == 3);
                    data.optimalParams(params_location,:) = 2*data.optimalParams(params_location,:);
                elseif strcmp(regName,'uACK')
                    % Upregulate ACK
                    params_location = find([tempKineticsMap{:,2}] == 12);
                    data.optimalParams(params_location,:) = 2*data.optimalParams(params_location,:);
                elseif strcmp(regName,'uMP')
                    % Upregulate MP
                    params_location = find([tempKineticsMap{:,2}] == 17);
                    data.optimalParams(params_location,:) = 2*data.optimalParams(params_location,:);
                elseif isempty(regName)
                else
                    fprintf('Error: Choose different regulation\n')
                    break
                end
                
                while ntSim > 49 && errorCheck
                    
                    % Simulate FBA
                    [modelTimeVec,modelConcMatrix,modelFluxMatrix,status] = calcLKDFBA(odeTimeVec(1),odeTimeVec(end),ntSim,x0,data.modelStruct.S,data.modelStruct.xBounds,data.modelStruct.vBounds,data.modelStruct.kineticsMap,data.optimalParams,data.modelStruct);

                    if ~strcmp('OPTIMAL',status.status) || any(isnan(modelConcMatrix(:))) || any(isnan(modelFluxMatrix(:))) || isempty(modelConcMatrix) || isempty(modelFluxMatrix)
                        fprintf('\t\t%s at nT = %d\n',status.status, ntSim)
                        errorCheck = true;
                        ntSim = floor(0.99 * ntSim);
                    else
                        errorCheck = false;
                    end
                end

                if ~errorCheck
                    numFittedParams = nnz(data.fitOptions.pLB(:) ~= data.fitOptions.pUB(:)); 
                    modelFluxTimeVec = modelTimeVec(1:end-1)+0.5*diff(modelTimeVec(1:2));
                    odeFluxTimeVec = modelFluxTimeVec;
                    odeFluxMatrix = interp1(refData.fluxTimeVec,refData.fluxMatrix,odeFluxTimeVec,'linear','extrap');

                    if glc_initial ~= 40000 && isempty(regName)
                        save(sprintf('%s/%s_%dmM_predict',saveDir,fileName(slashIdx+1:end-4),glc_initial/1000),'modelTimeVec','modelConcMatrix','modelFluxTimeVec','modelFluxMatrix');
                    elseif glc_initial == 40000 && isempty(regName)
                        save(sprintf('%s/%s_predict',saveDir,fileName(slashIdx+1:end-4)),'modelTimeVec','modelConcMatrix','modelFluxTimeVec','modelFluxMatrix');
                    elseif glc_initial == 40000 && ~isempty(regName)
                        save(sprintf('%s/%s_%s_predict',saveDir,fileName(slashIdx+1:end-4),regName),'modelTimeVec','modelConcMatrix','modelFluxTimeVec','modelFluxMatrix');
                    end
                end
            
                
            elseif ~isempty(strfind(fileName,'fbaRegressionParams_NLR.mat'))

                ntSim = nTErrorCalc;
                errorCheck = true;

                if shift_on == 1
                    % Shift constraints
                    for constraint_idx = 1:length(data.modelStruct.kineticsMap)
                        shift = max(refData.fluxMatrix(:,data.modelStruct.kineticsMap{constraint_idx,2}) - (data.optimalParams(constraint_idx,1)*refData.concMatrix(1:end-1,data.modelStruct.kineticsMap{constraint_idx,1}).^2+data.optimalParams(constraint_idx,2)*refData.concMatrix(1:end-1,data.modelStruct.kineticsMap{constraint_idx,1})+data.optimalParams(constraint_idx,3)));
                        if shift > 0
                            data.optimalParams(constraint_idx,3) = data.optimalParams(constraint_idx,3) + shift;
                        end
                    end
                end
                data.modelStruct.vBounds(:,2) = 10000;
                if x0(1) == 80000 % Prevents infeasible solutions when initial glucose is high
                    data.optimalParams(46,1) = 0;
                    data.optimalParams(46,2) = 0;
                    data.optimalParams(46,3) = 10000;
                end
                
                % REGULATION
                
                if strcmp(regName,'dLDH')
                    % Downregulate LDH
                    params_location = find([tempKineticsMap{:,2}] == 9);
                    data.optimalParams(params_location,:) = 0.03*data.optimalParams(params_location,:);
                elseif strcmp(regName,'dPFK')
                    % Downregulate PFK
                    params_location = find([tempKineticsMap{:,2}] == 3);
                    data.optimalParams(params_location,:) = 0.03*data.optimalParams(params_location,:);
                elseif strcmp(regName,'uPFK')
                    % Upregulate PFK
                    params_location = find([tempKineticsMap{:,2}] == 3);
                    data.optimalParams(params_location,:) = 2*data.optimalParams(params_location,:);
                elseif strcmp(regName,'uACK')
                    % Upregulate ACK
                    params_location = find([tempKineticsMap{:,2}] == 12);
                    data.optimalParams(params_location,:) = 2*data.optimalParams(params_location,:);
                elseif strcmp(regName,'uMP')
                    % Upregulate MP
                    params_location = find([tempKineticsMap{:,2}] == 17);
                    data.optimalParams(params_location,:) = 2*data.optimalParams(params_location,:);
                elseif isempty(regName)
                else
                    fprintf('Error: Choose different regulation\n')
                    break
                end
                
                while ntSim > 49 && errorCheck

                    % Simulate FBA
                    [modelTimeVec,modelConcMatrix,modelFluxMatrix,status] = calcLKDFBA_NLR(odeTimeVec(1),odeTimeVec(end),ntSim,x0,data.modelStruct.S,data.modelStruct.xBounds,data.modelStruct.vBounds,data.modelStruct.kineticsMap,data.optimalParams,data.modelStruct);

                    if ~strcmp('OPTIMAL',status.status) || any(isnan(modelConcMatrix(:))) || any(isnan(modelFluxMatrix(:))) || isempty(modelConcMatrix) || isempty(modelFluxMatrix)
                        fprintf('\t\t%s at nT = %d\n',status.status, ntSim)
                        errorCheck = true;
                        ntSim = floor(0.99 * ntSim);
                    else
                        errorCheck = false;
                    end
                end

                if ~errorCheck
                    numFittedParams = nnz(data.fitOptions.pLB(:) ~= data.fitOptions.pUB(:)); 
                    modelFluxTimeVec = modelTimeVec(1:end-1)+0.5*diff(modelTimeVec(1:2));
                    odeFluxTimeVec = modelFluxTimeVec;
                    odeFluxMatrix = interp1(refData.fluxTimeVec,refData.fluxMatrix,odeFluxTimeVec,'linear','extrap');

                    if glc_initial ~= 40000 && isempty(regName)
                        save(sprintf('%s/%s_%dmM_predict',saveDir,fileName(slashIdx+1:end-4),glc_initial/1000),'modelTimeVec','modelConcMatrix','modelFluxTimeVec','modelFluxMatrix');
                    elseif glc_initial == 40000 && isempty(regName)
                        save(sprintf('%s/%s_predict',saveDir,fileName(slashIdx+1:end-4)),'modelTimeVec','modelConcMatrix','modelFluxTimeVec','modelFluxMatrix');
                    elseif glc_initial == 40000 && ~isempty(regName)
                        save(sprintf('%s/%s_%s_predict',saveDir,fileName(slashIdx+1:end-4),regName),'modelTimeVec','modelConcMatrix','modelFluxTimeVec','modelFluxMatrix');
                    end
                end

                
            elseif ~isempty(strfind(fileName,'DR.mat'))
                
                ntSim = nTErrorCalc;
                errorCheck = true;
                
                DRcount = 1;
                if shift_on == 1
                    % Shift constraints
                    for constraint_idx = 1:length(data.modelStruct.DRkineticsMap)
                        if length(data.modelStruct.DRkineticsMap{constraint_idx,1}) == 1
                            shift = max(refData.fluxMatrix(:,data.modelStruct.DRkineticsMap{constraint_idx,2}) - (data.optimalParams(constraint_idx,1)*refData.concMatrix(1:end-1,data.modelStruct.DRkineticsMap{constraint_idx,1})+data.optimalParams(constraint_idx,2)));
                            if shift > 0
                                data.optimalParams(constraint_idx,2) = data.optimalParams(constraint_idx,2) + shift;
                            end
                        else
                            shift = max(refData.fluxMatrix(:,data.modelStruct.DRkineticsMap{constraint_idx,2}) - (sum(data.optimalParams(constraint_idx,1)*refData.concMatrix(1:end-1,data.modelStruct.DRkineticsMap{constraint_idx,1})*data.PCAcoeff{DRcount},2) + data.optimalParams(constraint_idx,2)));
                            DRcount = DRcount + 1;
                            if shift > 0
                                data.optimalParams(constraint_idx,2) = data.optimalParams(constraint_idx,2) + shift;
                            end
                        end
                    end
                end
                data.modelStruct.vBounds(:,2) = 10000;
                
                % REGULATION
                
                if strcmp(regName,'dLDH')
                    % Downregulate LDH
                    params_location = find([tempKineticsMap{:,2}] == 9);
                    data.optimalParams(params_location,:) = 0.03*data.optimalParams(params_location,:);
                elseif strcmp(regName,'dPFK')
                    % Downregulate PFK
                    params_location = find([tempKineticsMap{:,2}] == 3);
                    data.optimalParams(params_location,:) = 0.03*data.optimalParams(params_location,:);
                elseif strcmp(regName,'uPFK')
                    % Upregulate PFK
                    params_location = find([tempKineticsMap{:,2}] == 3);
                    data.optimalParams(params_location,:) = 2*data.optimalParams(params_location,:);
                elseif strcmp(regName,'uACK')
                    % Upregulate ACK
                    params_location = find([tempKineticsMap{:,2}] == 12);
                    data.optimalParams(params_location,:) = 2*data.optimalParams(params_location,:);
                elseif strcmp(regName,'uMP')
                    % Upregulate MP
                    params_location = find([tempKineticsMap{:,2}] == 17);
                    data.optimalParams(params_location,:) = 2*data.optimalParams(params_location,:);
                elseif isempty(regName)
                else
                    fprintf('Error: Choose different regulation\n')
                    break
                end
                
                while ntSim > 49 && errorCheck

                    % Simulate FBA
                    [modelTimeVec,modelConcMatrix,modelFluxMatrix,status] = calcLKDFBA_DR(odeTimeVec(1),odeTimeVec(end),ntSim,odeConcMatrix(1,:),data.modelStruct.S,data.modelStruct.xBounds,data.modelStruct.vBounds,data.modelStruct.kineticsMap,data.optimalParams,data.modelStruct,data.PCAcoeff);

                    if ~strcmp('OPTIMAL',status.status) || any(isnan(modelConcMatrix(:))) || any(isnan(modelFluxMatrix(:))) || isempty(modelConcMatrix) || isempty(modelFluxMatrix)
                        fprintf('\t\t%s at nT = %d\n',status.status, ntSim)
                        errorCheck = true;
                        ntSim = floor(0.99 * ntSim);
                    else
                        errorCheck = false;
                    end
                end

                if ~errorCheck
                    numFittedParams = nnz(data.fitOptions.pLB(:) ~= data.fitOptions.pUB(:)); 
                    modelFluxTimeVec = modelTimeVec(1:end-1)+0.5*diff(modelTimeVec(1:2));
                    odeFluxTimeVec = modelFluxTimeVec;
                    odeFluxMatrix = interp1(refData.fluxTimeVec,refData.fluxMatrix,odeFluxTimeVec,'linear','extrap');

                    if glc_initial ~= 40000 && isempty(regName)
                        save(sprintf('%s/%s_%dmM_predict',saveDir,fileName(slashIdx+1:end-4),glc_initial/1000),'modelTimeVec','modelConcMatrix','modelFluxTimeVec','modelFluxMatrix');
                    elseif glc_initial == 40000 && isempty(regName)
                        save(sprintf('%s/%s_predict',saveDir,fileName(slashIdx+1:end-4)),'modelTimeVec','modelConcMatrix','modelFluxTimeVec','modelFluxMatrix');
                    elseif glc_initial == 40000 && ~isempty(regName)
                        save(sprintf('%s/%s_%s_predict',saveDir,fileName(slashIdx+1:end-4),regName),'modelTimeVec','modelConcMatrix','modelFluxTimeVec','modelFluxMatrix');
                    end
                end
                
            
            elseif ~isempty(strfind(fileName,'HP.mat'))

                ntSim = nTErrorCalc;
                errorCheck = true;
                
                if shift_on == 1
                    for constraint_idx = 1:length(data.modelStruct.HPkineticsMap)
                        shift = max(refData.fluxMatrix(:,data.modelStruct.HPkineticsMap{constraint_idx,2}) - (sum(data.optimalParams(constraint_idx,1)*data.hyperplaneParams{constraint_idx}'.*refData.concMatrix(1:end-1,data.modelStruct.HPkineticsMap{constraint_idx,1}),2)+data.optimalParams(constraint_idx,2)));
                        if shift > 0
                            data.optimalParams(constraint_idx,2) = data.optimalParams(constraint_idx,2) + shift;
                        end
                    end
                end
                data.modelStruct.vBounds(:,2) = 10000;
                
                % REGULATION
                
                if strcmp(regName,'dLDH')
                    % Downregulate LDH
                    params_location = find([tempKineticsMap{:,2}] == 9);
                    data.optimalParams(params_location,:) = 0.03*data.optimalParams(params_location,:);
                elseif strcmp(regName,'dPFK')
                    % Downregulate PFK
                    params_location = find([tempKineticsMap{:,2}] == 3);
                    data.optimalParams(params_location,:) = 0.03*data.optimalParams(params_location,:);
                elseif strcmp(regName,'uPFK')
                    % Upregulate PFK
                    params_location = find([tempKineticsMap{:,2}] == 3);
                    data.optimalParams(params_location,:) = 2*data.optimalParams(params_location,:);
                elseif strcmp(regName,'uACK')
                    % Upregulate ACK
                    params_location = find([tempKineticsMap{:,2}] == 12);
                    data.optimalParams(params_location,:) = 2*data.optimalParams(params_location,:);
                elseif strcmp(regName,'uMP')
                    % Upregulate MP
                    params_location = find([tempKineticsMap{:,2}] == 17);
                    data.optimalParams(params_location,:) = 2*data.optimalParams(params_location,:);
                elseif isempty(regName)
                else
                    fprintf('Error: Choose different regulation\n')
                    break
                end
                
                while ntSim > 49 && errorCheck

                    % Simulate FBA
                    [modelTimeVec,modelConcMatrix,modelFluxMatrix,status] = calcLKDFBA_HP(odeTimeVec(1),odeTimeVec(end),ntSim,x0,data.modelStruct.S,data.modelStruct.xBounds,data.modelStruct.vBounds,data.modelStruct.HPkineticsMap,data.optimalParams,data.modelStruct,data.hyperplaneParams);

                    if ~strcmp('OPTIMAL',status.status) || any(isnan(modelConcMatrix(:))) || any(isnan(modelFluxMatrix(:))) || isempty(modelConcMatrix) || isempty(modelFluxMatrix)
                        fprintf('\t\t%s at nT = %d\n',status.status, ntSim)
                        errorCheck = true;
                        ntSim = floor(0.99 * ntSim);
                    else
                        errorCheck = false;
                    end
                end

                if ~errorCheck
                    numFittedParams = nnz(data.fitOptions.pLB(:) ~= data.fitOptions.pUB(:)); 
                    modelFluxTimeVec = modelTimeVec(1:end-1)+0.5*diff(modelTimeVec(1:2));
                    odeFluxTimeVec = modelFluxTimeVec;
                    odeFluxMatrix = interp1(refData.fluxTimeVec,refData.fluxMatrix,odeFluxTimeVec,'linear','extrap');
                    
                    if glc_initial ~= 40000 && isempty(regName)
                        save(sprintf('%s/%s_%dmM_predict',saveDir,fileName(slashIdx+1:end-4),glc_initial/1000),'modelTimeVec','modelConcMatrix','modelFluxTimeVec','modelFluxMatrix');
                    elseif glc_initial == 40000 && isempty(regName)
                        save(sprintf('%s/%s_predict',saveDir,fileName(slashIdx+1:end-4)),'modelTimeVec','modelConcMatrix','modelFluxTimeVec','modelFluxMatrix');
                    elseif glc_initial == 40000 && ~isempty(regName)
                        save(sprintf('%s/%s_%s_predict',saveDir,fileName(slashIdx+1:end-4),regName),'modelTimeVec','modelConcMatrix','modelFluxTimeVec','modelFluxMatrix');
                    end
                end
            end
        end
    end
end

