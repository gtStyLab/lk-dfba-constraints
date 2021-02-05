%% Calculate error

clear;clc;

resultsDirectoryList = 'results_split_predict';
%resultsDirectoryList = 'results_split_noisy_predict';
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
regulationList = {'','dLDH','dPFK','uPFK','uACK','uMP'};
error_information = {};

for reg_idx = 1:6
    regulationName = regulationList{reg_idx};

    if isempty(regulationName)
        load('costa_k-01_concMol_1000_hiRes.mat');
    else
        load(sprintf('costa_k-01_%s_concMol_1000_hiRes.mat',regulationName));
    end

    for file_idx = 1:length(fileNameList)
        fileName = fileNameList{file_idx};

        if isempty(regulationName)
            if ~contains(fileName,'LDH') && ~contains(fileName,'PFK') && ~contains(fileName,'ACK') && ~contains(fileName,'MP')
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
save(sprintf('costa_%s_error',resultsDirectoryList(1:end-8)),'error_information')


%% Calculate error of each noiseless L. lactis model

clear;clc;

errorFileName = 'costa_results_split_error.mat';
load(errorFileName);
regulationList = {'','dLDH','dPFK','uPFK','uACK','uMP'};
LKDFBA_List = {'Params_predict','NLR','DR','HP'};

errorMatrix = zeros(6,4);
for LKDFBA_idx = 1:4
    for reg_idx = 1:6
        error_values = [];
        for file_idx = 1:length(error_information)
            fileName = error_information{file_idx,1};

            if  contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                if ~contains(fileName,'NLR') && ~contains(fileName,'DR') && ~contains(fileName,'HP')
                    if isempty(regulationList{reg_idx})
                        if ~contains(fileName,'LDH') && ~contains(fileName,'PFK') && ~contains(fileName,'ACK') && ~contains(fileName,'MP')
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
                        if ~contains(fileName,'LDH') && ~contains(fileName,'PFK') && ~contains(fileName,'ACK') && ~contains(fileName,'MP')
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
        elseif contains(regulationList{reg_idx},'dLDH') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
            errorMatrix(2,1) = mean_error;
        elseif contains(regulationList{reg_idx},'dLDH') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
            errorMatrix(2,2) = mean_error;
        elseif contains(regulationList{reg_idx},'dLDH') && contains(LKDFBA_List{LKDFBA_idx},'DR')
            errorMatrix(2,3) = mean_error;
        elseif contains(regulationList{reg_idx},'dLDH') && contains(LKDFBA_List{LKDFBA_idx},'HP')
            errorMatrix(2,4) = mean_error;
        elseif contains(regulationList{reg_idx},'dPFK') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
            errorMatrix(3,1) = mean_error;
        elseif contains(regulationList{reg_idx},'dPFK') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
            errorMatrix(3,2) = mean_error;
        elseif contains(regulationList{reg_idx},'dPFK') && contains(LKDFBA_List{LKDFBA_idx},'DR')
            errorMatrix(3,3) = mean_error;
        elseif contains(regulationList{reg_idx},'dPFK') && contains(LKDFBA_List{LKDFBA_idx},'HP')
            errorMatrix(3,4) = mean_error;
        elseif contains(regulationList{reg_idx},'uPFK') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
            errorMatrix(4,1) = mean_error;
        elseif contains(regulationList{reg_idx},'uPFK') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
            errorMatrix(4,2) = mean_error;
        elseif contains(regulationList{reg_idx},'uPFK') && contains(LKDFBA_List{LKDFBA_idx},'DR')
            errorMatrix(4,3) = mean_error;
        elseif contains(regulationList{reg_idx},'uPFK') && contains(LKDFBA_List{LKDFBA_idx},'HP')
            errorMatrix(4,4) = mean_error;
        elseif contains(regulationList{reg_idx},'uACK') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
            errorMatrix(5,1) = mean_error;
        elseif contains(regulationList{reg_idx},'uACK') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
            errorMatrix(5,2) = mean_error;
        elseif contains(regulationList{reg_idx},'uACK') && contains(LKDFBA_List{LKDFBA_idx},'DR')
            errorMatrix(5,3) = mean_error;
        elseif contains(regulationList{reg_idx},'uACK') && contains(LKDFBA_List{LKDFBA_idx},'HP')
            errorMatrix(5,4) = mean_error;
        elseif contains(regulationList{reg_idx},'uMP') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
            errorMatrix(6,1) = mean_error;
        elseif contains(regulationList{reg_idx},'uMP') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
            errorMatrix(6,2) = mean_error;
        elseif contains(regulationList{reg_idx},'uMP') && contains(LKDFBA_List{LKDFBA_idx},'DR')
            errorMatrix(6,3) = mean_error;
        elseif contains(regulationList{reg_idx},'uMP') && contains(LKDFBA_List{LKDFBA_idx},'HP')
            errorMatrix(6,4) = mean_error;
        end
    end
end
save(sprintf('costa_%sMatrix.mat',errorFileName(21:end-4)),'errorMatrix');


%% Calculate error of each noisy L. lactis model

clear;clc;

errorFileName = 'costa_results_split_noisy_error.mat';
load(errorFileName);
regulationList = {'','dLDH','dPFK','uPFK','uACK','uMP'};
LKDFBA_List = {'Params_predict','NLR','DR','HP'};

errorMatrix = zeros(6,4);
for nT = [15 50]
    for cov = [5 15]
        for LKDFBA_idx = 1:4
            for reg_idx = 1:6
                error_values = [];
                for file_idx = 1:length(error_information)
                    fileName = error_information{file_idx,1};

                    if contains(fileName,sprintf('nT-%03d',nT)) && contains(fileName,sprintf('cov-%02d',cov))
                        if  contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                            if ~contains(fileName,'NLR') && ~contains(fileName,'DR') && ~contains(fileName,'HP')
                                if isempty(regulationList{reg_idx})
                                    if ~contains(fileName,'LDH') && ~contains(fileName,'PFK') && ~contains(fileName,'ACK') && ~contains(fileName,'MP')
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
                                    if ~contains(fileName,'LDH') && ~contains(fileName,'PFK') && ~contains(fileName,'ACK') && ~contains(fileName,'MP')
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
                end

                mean_error = nanmean(error_values);
                std_error = nanstd(error_values);

                if isempty(regulationList{reg_idx}) && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                    errorMatrix(1,1) = mean_error;
                    stdMatrix(1,1) = std_error;
                elseif isempty(regulationList{reg_idx}) && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                    errorMatrix(1,2) = mean_error;
                    stdMatrix(1,2) = std_error;
                elseif isempty(regulationList{reg_idx}) && contains(LKDFBA_List{LKDFBA_idx},'DR')
                    errorMatrix(1,3) = mean_error;
                    stdMatrix(1,3) = std_error;
                elseif isempty(regulationList{reg_idx}) && contains(LKDFBA_List{LKDFBA_idx},'HP')
                    errorMatrix(1,4) = mean_error;
                    stdMatrix(1,4) = std_error;
                elseif contains(regulationList{reg_idx},'dLDH') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                    errorMatrix(2,1) = mean_error;
                    stdMatrix(2,1) = std_error;
                elseif contains(regulationList{reg_idx},'dLDH') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                    errorMatrix(2,2) = mean_error;
                    stdMatrix(2,2) = std_error;
                elseif contains(regulationList{reg_idx},'dLDH') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                    errorMatrix(2,3) = mean_error;
                    stdMatrix(2,3) = std_error;
                elseif contains(regulationList{reg_idx},'dLDH') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                    errorMatrix(2,4) = mean_error;
                    stdMatrix(2,4) = std_error;
                elseif contains(regulationList{reg_idx},'dPFK') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                    errorMatrix(3,1) = mean_error;
                    stdMatrix(3,1) = std_error;
                elseif contains(regulationList{reg_idx},'dPFK') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                    errorMatrix(3,2) = mean_error;
                    stdMatrix(3,2) = std_error;
                elseif contains(regulationList{reg_idx},'dPFK') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                    errorMatrix(3,3) = mean_error;
                    stdMatrix(3,3) = std_error;
                elseif contains(regulationList{reg_idx},'dPFK') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                    errorMatrix(3,4) = mean_error;
                    stdMatrix(3,4) = std_error;
                elseif contains(regulationList{reg_idx},'uPFK') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                    errorMatrix(4,1) = mean_error;
                    stdMatrix(4,1) = std_error;
                elseif contains(regulationList{reg_idx},'uPFK') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                    errorMatrix(4,2) = mean_error;
                    stdMatrix(4,2) = std_error;
                elseif contains(regulationList{reg_idx},'uPFK') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                    errorMatrix(4,3) = mean_error;
                    stdMatrix(4,3) = std_error;
                elseif contains(regulationList{reg_idx},'uPFK') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                    errorMatrix(4,4) = mean_error;
                    stdMatrix(4,4) = std_error;
                elseif contains(regulationList{reg_idx},'uACK') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                    errorMatrix(5,1) = mean_error;
                    stdMatrix(5,1) = std_error;
                elseif contains(regulationList{reg_idx},'uACK') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                    errorMatrix(5,2) = mean_error;
                    stdMatrix(5,2) = std_error;
                elseif contains(regulationList{reg_idx},'uACK') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                    errorMatrix(5,3) = mean_error;
                    stdMatrix(5,3) = std_error;
                elseif contains(regulationList{reg_idx},'uACK') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                    errorMatrix(5,4) = mean_error;
                    stdMatrix(5,4) = std_error;
                elseif contains(regulationList{reg_idx},'uMP') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                    errorMatrix(6,1) = mean_error;
                    stdMatrix(6,1) = std_error;
                elseif contains(regulationList{reg_idx},'uMP') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                    errorMatrix(6,2) = mean_error;
                    stdMatrix(6,2) = std_error;
                elseif contains(regulationList{reg_idx},'uMP') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                    errorMatrix(6,3) = mean_error;
                    stdMatrix(6,3) = std_error;
                elseif contains(regulationList{reg_idx},'uMP') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                    errorMatrix(6,4) = mean_error;
                    stdMatrix(6,4) = std_error;
                end
            end
        end
        save(sprintf('costa_%sMatrix_stdMatrix_nT-%02d_cov-%02d.mat',errorFileName(21:end-4),nT,cov),'errorMatrix','stdMatrix');
    end
end

%% Heatmaps for noiseless L. lactis model in MATLAB
% The matrix in results_combined and be copy-and-pasted into Excel to
% recreate the heatmaps found in the manuscript.

clear;clc;close all
load('costa_errorMatrix.mat');
figure;
cdata = errorMatrix;
xvalues = {'LR','NLR','DR','HP'};
yvalues = {'1x','dLDH','dPFK','uPFK','uACK','uMP'};
h = heatmap(xvalues,yvalues,cdata,'ColorbarVisible','off');
h.ColorScaling = 'scaledrows';

h.Title = sprintf('L. lactis (noiseless)',i);
h.YLabel = 'Regulation';
set(gca,'FontSize',12)

LR_clean_results = errorMatrix(:,1);
NLR_clean_results = errorMatrix(:,2);
DR_clean_results = errorMatrix(:,3);
HP_clean_results = errorMatrix(:,4);

% Matrix to copy-and-paste into Excel to create heatmaps, along with
% results_combined_noisy below
results_combined = [LR_clean_results; NLR_clean_results; DR_clean_results; HP_clean_results];


%% Heatmaps for noisy L. lactis model in MATLAB
% The matrix in results_combined and be copy-and-pasted into Excel to
% recreate the heatmaps found in the manuscript.

clear;clc;close all

subplot_count = 1;
LR_noisy_results = [];
NLR_noisy_results = [];
DR_noisy_results = [];
HP_noisy_results = [];

figure;
for nT = [50 15]
    for cov = [5 15]
        load(sprintf('costa_noisy_errorMatrix_stdMatrix_nT-%02d_cov-%02d.mat',nT,cov));
        
        subplot(2,2,subplot_count)
        cdata = errorMatrix;
        xvalues = {'LR','NLR','DR','HP'};
        yvalues = {'1x','dLDH','dPFK','uPFK','uACK','uMP'};
        h = heatmap(xvalues,yvalues,cdata,'ColorbarVisible','off');
        h.ColorScaling = 'scaledrows';

        h.Title = sprintf('L. lactis model: nT = %02d, cov = 0.%02d',nT,cov);
        if subplot_count == 1 || subplot_count == 3
            h.YLabel = 'Regulation';
        end
        set(gca,'FontSize',14)

        LR_noisy_results = [LR_noisy_results errorMatrix(:,1)];
        NLR_noisy_results = [NLR_noisy_results errorMatrix(:,2)];
        DR_noisy_results = [DR_noisy_results errorMatrix(:,3)];
        HP_noisy_results = [HP_noisy_results errorMatrix(:,4)];
        
        subplot_count = subplot_count + 1;
    end
end

% Matrix to copy-and-paste into Excel to create heatmaps, along with
% results_combined_noiseless above
results_combined = [LR_noisy_results; NLR_noisy_results; DR_noisy_results; HP_noisy_results];
