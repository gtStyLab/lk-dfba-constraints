%% Calculate error

clear;clc;

resultsDirectoryList = 'results_split_newModel_predict';
fileNameList = [];


fileSubsetList = dir(resultsDirectoryList);
fileSubsetList = {fileSubsetList(:).name}';
for k = length(fileSubsetList):-1:1
    if strcmp(fileSubsetList{k}(1),'.')
        fileSubsetList(k) = [];
    else
        fileSubsetList{k} = sprintf('%s/%s',resultsDirectoryList,fileSubsetList{k});
    end
end

fileNameList = [fileNameList; fileSubsetList];
regulationList = {'','dPYK','dPGI','dGAPDH','dPFK','dTIS','dRPE','dPGM'};
error_information = {};

for modelNum = 1:5
    for reg_idx = 1:8
        regulationName = regulationList{reg_idx};

        if isempty(regulationName)
            load(sprintf('chassV_newModel-%02d_hiRes.mat',modelNum));
        else
            load(sprintf('chassV_newModel-%02d_%s_hiRes.mat',modelNum,regulationName));
        end

        for file_idx = 1:length(fileNameList)
            fileName = fileNameList{file_idx};
            if contains(fileName,sprintf('newModel-%02d',modelNum))
                if isempty(regulationName)
                    if ~contains(fileName,'PYK') && ~contains(fileName,'PGI') && ~contains(fileName,'GAPDH') && ~contains(fileName,'PFK') && ~contains(fileName,'TIS') && ~contains(fileName,'RPE') && ~contains(fileName,'PGM')
                        LKDFBApredict = load(fileName);

                        LKDFBA_odeTimeVec = LKDFBApredict.modelTimeVec;

                        LKDFBA_odeConcMatrix = interp1(timeVec,concMatrix,LKDFBA_odeTimeVec,'linear','extrap');

                        range_LKDFBA = abs(range(LKDFBA_odeConcMatrix,1));
                        range_LKDFBA(range_LKDFBA == 0) = 1;

                        MeanMet = ones(size(LKDFBA_odeConcMatrix,1),1)*mean(LKDFBA_odeConcMatrix);
                        LKDFBAerror = sqrt(sum(sum(((LKDFBApredict.modelConcMatrix - LKDFBA_odeConcMatrix)./MeanMet).^2))/numel(LKDFBA_odeConcMatrix));
                        
                        error_information{end+1,1} = fileName;
                        error_information{end,2} = LKDFBAerror;
                    end
                elseif ~isempty(regulationName)
                    if contains(fileName,regulationName)
                        LKDFBApredict = load(fileName);

                        LKDFBA_odeTimeVec = LKDFBApredict.modelTimeVec;

                        LKDFBA_odeConcMatrix = interp1(timeVec,concMatrix,LKDFBA_odeTimeVec,'linear','extrap');

                        range_LKDFBA = abs(range(LKDFBA_odeConcMatrix,1));
                        range_LKDFBA(range_LKDFBA == 0) = 1;

                        MeanMet = ones(size(LKDFBA_odeConcMatrix,1),1)*mean(LKDFBA_odeConcMatrix);
                        LKDFBAerror = sqrt(sum(sum(((LKDFBApredict.modelConcMatrix - LKDFBA_odeConcMatrix)./MeanMet).^2))/numel(LKDFBA_odeConcMatrix));
                        
                        error_information{end+1,1} = fileName;
                        error_information{end,2} = LKDFBAerror;
                    end
                end
            end
        end
    end
    save(sprintf('chass_%s-%02d_error',resultsDirectoryList(1:end-8),modelNum),'error_information')
    error_information = {};
end

%% Calculate error of each noiseless E.coli new model

clear;clc;

errorList = {'chass_results_split_newModel-01_error.mat','chass_results_split_newModel-02_error.mat','chass_results_split_newModel-03_error.mat','chass_results_split_newModel-04_error.mat','chass_results_split_newModel-05_error.mat'};
regulationList = {'','dPYK','dPGI','dGAPDH','dPFK','dTIS','dRPE','dPGM'};
LKDFBA_List = {'Params_predict','NLR','DR','HP'};

for errorFile = 1:5
    load(errorList{errorFile});
    
    errorMatrix = zeros(8,4);
    for LKDFBA_idx = 1:4
        for reg_idx = 1:8
            error_values = [];
            for file_idx = 1:length(error_information)
                fileName = error_information{file_idx,1};

                if  contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                    if ~contains(fileName,'NLR') && ~contains(fileName,'DR') && ~contains(fileName,'HP')
                        if isempty(regulationList{reg_idx})
                            if ~contains(fileName,'PYK') && ~contains(fileName,'PGI') && ~contains(fileName,'GAPDH') && ~contains(fileName,'PFK') && ~contains(fileName,'TIS') && ~contains(fileName,'RPE') && ~contains(fileName,'PGM')
                                error_values = [error_values error_information{file_idx,2}];
                            end
                        else
                            if contains(fileName,regulationList{reg_idx})
                                error_values = [error_values error_information{file_idx,2}];
                            end
                        end
                    end
                else
                    if contains(fileName,LKDFBA_List{LKDFBA_idx})
                        if isempty(regulationList{reg_idx})
                            if ~contains(fileName,'PYK') && ~contains(fileName,'PGI') && ~contains(fileName,'GAPDH') && ~contains(fileName,'PFK') && ~contains(fileName,'TIS') && ~contains(fileName,'RPE') && ~contains(fileName,'PGM')
                                error_values = [error_values error_information{file_idx,2}];
                            end
                        else
                            if contains(fileName,regulationList{reg_idx})
                                error_values = [error_values error_information{file_idx,2}];
                            end
                        end
                    end
                end
            end

            mean_error = nanmean(error_values);

            if isempty(regulationList{reg_idx}) && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                errorMatrix(1,1) = mean_error;
            elseif isempty(regulationList{reg_idx}) && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                errorMatrix(1,2) = mean_error;
            elseif isempty(regulationList{reg_idx}) && contains(LKDFBA_List{LKDFBA_idx},'DR')
                errorMatrix(1,3) = mean_error;
            elseif isempty(regulationList{reg_idx}) && contains(LKDFBA_List{LKDFBA_idx},'HP')
                errorMatrix(1,4) = mean_error;
            elseif contains(regulationList{reg_idx},'dPYK') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                errorMatrix(2,1) = mean_error;
            elseif contains(regulationList{reg_idx},'dPYK') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                errorMatrix(2,2) = mean_error;
            elseif contains(regulationList{reg_idx},'dPYK') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                errorMatrix(2,3) = mean_error;
            elseif contains(regulationList{reg_idx},'dPYK') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                errorMatrix(2,4) = mean_error;
            elseif contains(regulationList{reg_idx},'dPGI') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                errorMatrix(3,1) = mean_error;
            elseif contains(regulationList{reg_idx},'dPGI') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                errorMatrix(3,2) = mean_error;
            elseif contains(regulationList{reg_idx},'dPGI') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                errorMatrix(3,3) = mean_error;
            elseif contains(regulationList{reg_idx},'dPGI') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                errorMatrix(3,4) = mean_error;
            elseif contains(regulationList{reg_idx},'dGAPDH') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                errorMatrix(4,1) = mean_error;
            elseif contains(regulationList{reg_idx},'dGAPDH') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                errorMatrix(4,2) = mean_error;
            elseif contains(regulationList{reg_idx},'dGAPDH') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                errorMatrix(4,3) = mean_error;
            elseif contains(regulationList{reg_idx},'dGAPDH') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                errorMatrix(4,4) = mean_error;
            elseif contains(regulationList{reg_idx},'dPFK') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                errorMatrix(5,1) = mean_error;
            elseif contains(regulationList{reg_idx},'dPFK') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                errorMatrix(5,2) = mean_error;
            elseif contains(regulationList{reg_idx},'dPFK') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                errorMatrix(5,3) = mean_error;
            elseif contains(regulationList{reg_idx},'dPFK') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                errorMatrix(5,4) = mean_error;
            elseif contains(regulationList{reg_idx},'dTIS') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                errorMatrix(6,1) = mean_error;
            elseif contains(regulationList{reg_idx},'dTIS') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                errorMatrix(6,2) = mean_error;
            elseif contains(regulationList{reg_idx},'dTIS') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                errorMatrix(6,3) = mean_error;
            elseif contains(regulationList{reg_idx},'dTIS') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                errorMatrix(6,4) = mean_error;
            elseif contains(regulationList{reg_idx},'dRPE') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                errorMatrix(7,1) = mean_error;
            elseif contains(regulationList{reg_idx},'dRPE') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                errorMatrix(7,2) = mean_error;
            elseif contains(regulationList{reg_idx},'dRPE') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                errorMatrix(7,3) = mean_error;
            elseif contains(regulationList{reg_idx},'dRPE') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                errorMatrix(7,4) = mean_error;
            elseif contains(regulationList{reg_idx},'dPGM') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                errorMatrix(8,1) = mean_error;
            elseif contains(regulationList{reg_idx},'dPGM') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                errorMatrix(8,2) = mean_error;
            elseif contains(regulationList{reg_idx},'dPGM') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                errorMatrix(8,3) = mean_error;
            elseif contains(regulationList{reg_idx},'dPGM') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                errorMatrix(8,4) = mean_error;
            end
        end
    end
    save(sprintf('chass_%sMatrix.mat',errorList{errorFile}(21:end-4)),'errorMatrix');
end


%% Heatmaps for new E. coli models in MATLAB
% The matrix in results_combined and be copy-and-pasted into Excel to
% recreate the heatmaps found in the manuscript.

clear;clc;close all

LR_results = [];
NLR_results = [];
DR_results = [];
HP_results = [];

figure;
for modelNum = 0:5
    
    if modelNum == 0
        load('chass_errorMatrix.mat');
    else
        load(sprintf('chass_newModel-%02d_errorMatrix.mat',modelNum));
    end

    subplot(2,3,modelNum+1)
    cdata = errorMatrix;
    xvalues = {'LR','NLR','DR','HP'};
    yvalues = {'1x','dPYK','dPGI','dGAPDH','dPFK','dTIS','dRPE','dPGM'};
    h = heatmap(xvalues,yvalues,cdata,'ColorbarVisible','off');
    h.ColorScaling = 'scaledrows';

    if modelNum == 0
        h.Title = 'Original E. coli';
    else
        h.Title = sprintf('New model #%d',modelNum);
    end
    if modelNum == 0 || modelNum == 3
        h.YLabel = 'Regulation';
    end
    set(gca,'FontSize',14)

    LR_results = [LR_results errorMatrix(:,1)];
    NLR_results = [NLR_results errorMatrix(:,2)];
    DR_results = [DR_results errorMatrix(:,3)];
    HP_results = [HP_results errorMatrix(:,4)];
end

% Matrix to copy-and-paste into Excel to create heatmaps
results_combined = [LR_results; NLR_results; DR_results; HP_results];
