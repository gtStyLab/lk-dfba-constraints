%% Calculate error

clear;clc;

resultsDirectoryList = 'results_split_predict';
%resultsDirectoryList = 'results_split_noisy_predict';
%resultsDirectoryList = 'results_split_noisy_smooth_predict';
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
regulationList = {'','dV2','uV2','dV3','uV3','dV4','uV4'};
error_information = {};

for k_idx = 1:20
    for reg_idx = 1:7
        regulationName = regulationList{reg_idx};
        
        if isempty(regulationName)
            load(sprintf('Synthetic_k-%02d_hiRes.mat',k_idx));
        else
            load(sprintf('Synthetic_%s_k-%02d_hiRes.mat',regulationName,k_idx));
        end
        
        for file_idx = 1:length(fileNameList)
            fileName = fileNameList{file_idx};

            if isempty(regulationName)
                if contains(fileName,sprintf('k-%02d',k_idx)) && ~contains(fileName,'dV') && ~contains(fileName,'uV')
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
                if contains(fileName,sprintf('k-%02d',k_idx)) && contains(fileName,regulationName)
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
save(sprintf('Synthetic_%s_error',resultsDirectoryList(1:end-8)),'error_information')


%% Calculate error of each noiseless synthetic model

clear;clc;

errorFileName = 'Synthetic_results_split_error.mat';
load(errorFileName);
regulationList = {'','dV2','uV2','dV3','uV3','dV4','uV4'};
LKDFBA_List = {'Params_predict','NLR','DR','HP'};

errorMatrix = zeros(7,4);
for k = 1:20
    for LKDFBA_idx = 1:4
        for reg_idx = 1:7
            error_values = [];
            for file_idx = 1:length(error_information)
                fileName = error_information{file_idx,1};

                if contains(fileName,sprintf('k-%02d',k))
                    if  contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                        if ~contains(fileName,'NLR') && ~contains(fileName,'DR') && ~contains(fileName,'HP')
                            if isempty(regulationList{reg_idx})
                                if ~contains(fileName,'dV') && ~contains(fileName,'uV')
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
                                if ~contains(fileName,'dV') && ~contains(fileName,'uV')
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

            if isempty(regulationList{reg_idx}) && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                errorMatrix(1,1) = mean_error;
            elseif isempty(regulationList{reg_idx}) && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                errorMatrix(1,2) = mean_error;
            elseif isempty(regulationList{reg_idx}) && contains(LKDFBA_List{LKDFBA_idx},'DR')
                errorMatrix(1,3) = mean_error;
            elseif isempty(regulationList{reg_idx}) && contains(LKDFBA_List{LKDFBA_idx},'HP')
                errorMatrix(1,4) = mean_error;
            elseif contains(regulationList{reg_idx},'dV2') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                errorMatrix(2,1) = mean_error;
            elseif contains(regulationList{reg_idx},'dV2') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                errorMatrix(2,2) = mean_error;
            elseif contains(regulationList{reg_idx},'dV2') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                errorMatrix(2,3) = mean_error;
            elseif contains(regulationList{reg_idx},'dV2') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                errorMatrix(2,4) = mean_error;
            elseif contains(regulationList{reg_idx},'uV2') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                errorMatrix(3,1) = mean_error;
            elseif contains(regulationList{reg_idx},'uV2') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                errorMatrix(3,2) = mean_error;
            elseif contains(regulationList{reg_idx},'uV2') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                errorMatrix(3,3) = mean_error;
            elseif contains(regulationList{reg_idx},'uV2') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                errorMatrix(3,4) = mean_error;
            elseif contains(regulationList{reg_idx},'dV3') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                errorMatrix(4,1) = mean_error;
            elseif contains(regulationList{reg_idx},'dV3') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                errorMatrix(4,2) = mean_error;
            elseif contains(regulationList{reg_idx},'dV3') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                errorMatrix(4,3) = mean_error;
            elseif contains(regulationList{reg_idx},'dV3') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                errorMatrix(4,4) = mean_error;
            elseif contains(regulationList{reg_idx},'uV3') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                errorMatrix(5,1) = mean_error;
            elseif contains(regulationList{reg_idx},'uV3') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                errorMatrix(5,2) = mean_error;
            elseif contains(regulationList{reg_idx},'uV3') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                errorMatrix(5,3) = mean_error;
            elseif contains(regulationList{reg_idx},'uV3') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                errorMatrix(5,4) = mean_error;
            elseif contains(regulationList{reg_idx},'dV4') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                errorMatrix(6,1) = mean_error;
            elseif contains(regulationList{reg_idx},'dV4') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                errorMatrix(6,2) = mean_error;
            elseif contains(regulationList{reg_idx},'dV4') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                errorMatrix(6,3) = mean_error;
            elseif contains(regulationList{reg_idx},'dV4') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                errorMatrix(6,4) = mean_error;
            elseif contains(regulationList{reg_idx},'uV4') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                errorMatrix(7,1) = mean_error;
            elseif contains(regulationList{reg_idx},'uV4') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                errorMatrix(7,2) = mean_error;
            elseif contains(regulationList{reg_idx},'uV4') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                errorMatrix(7,3) = mean_error;
            elseif contains(regulationList{reg_idx},'uV4') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                errorMatrix(7,4) = mean_error;
            end
        end
    end
    error_all{k} = errorMatrix;
end
save(sprintf('Synthetic_%sall.mat',errorFileName(25:end-4)),'error_all');


%% Calculate mean error and mean standard deviation of each noisy condition for each synthetic model

clear;clc;

errorFileName = 'Synthetic_results_split_noisy_error.mat';
%errorFileName = 'Synthetic_results_split_noisy_smooth_error.mat';
load(errorFileName);
regulationList = {'','dV2','uV2','dV3','uV3','dV4','uV4'};
LKDFBA_List = {'Params_predict','NLR','DR','HP'};

errorMatrix = zeros(7,4);
for nT = [15 50]
    for cov = [5 15]
        for k = 1:20
            for LKDFBA_idx = 1:4
                for reg_idx = 1:7
                    error_values = [];
                    for file_idx = 1:length(error_information)
                        fileName = error_information{file_idx,1};
                        
                        if contains(fileName,sprintf('nT-%03d',nT)) && contains(fileName,sprintf('cov-%02d',cov)) && contains(fileName,sprintf('k-%02d',k))
                            if  contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                                if ~contains(fileName,'NLR') && ~contains(fileName,'DR') && ~contains(fileName,'HP')
                                    if isempty(regulationList{reg_idx})
                                        if ~contains(fileName,'dV') && ~contains(fileName,'uV')
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
                                        if ~contains(fileName,'dV') && ~contains(fileName,'uV')
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
                    elseif contains(regulationList{reg_idx},'dV2') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                        errorMatrix(2,1) = mean_error;
                        stdMatrix(2,1) = std_error;
                    elseif contains(regulationList{reg_idx},'dV2') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                        errorMatrix(2,2) = mean_error;
                        stdMatrix(2,2) = std_error;
                    elseif contains(regulationList{reg_idx},'dV2') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                        errorMatrix(2,3) = mean_error;
                        stdMatrix(2,3) = std_error;
                    elseif contains(regulationList{reg_idx},'dV2') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                        errorMatrix(2,4) = mean_error;
                        stdMatrix(2,4) = std_error;
                    elseif contains(regulationList{reg_idx},'uV2') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                        errorMatrix(3,1) = mean_error;
                        stdMatrix(3,1) = std_error;
                    elseif contains(regulationList{reg_idx},'uV2') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                        errorMatrix(3,2) = mean_error;
                        stdMatrix(3,2) = std_error;
                    elseif contains(regulationList{reg_idx},'uV2') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                        errorMatrix(3,3) = mean_error;
                        stdMatrix(3,3) = std_error;
                    elseif contains(regulationList{reg_idx},'uV2') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                        errorMatrix(3,4) = mean_error;
                        stdMatrix(3,4) = std_error;
                    elseif contains(regulationList{reg_idx},'dV3') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                        errorMatrix(4,1) = mean_error;
                        stdMatrix(4,1) = std_error;
                    elseif contains(regulationList{reg_idx},'dV3') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                        errorMatrix(4,2) = mean_error;
                        stdMatrix(4,2) = std_error;
                    elseif contains(regulationList{reg_idx},'dV3') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                        errorMatrix(4,3) = mean_error;
                        stdMatrix(4,3) = std_error;
                    elseif contains(regulationList{reg_idx},'dV3') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                        errorMatrix(4,4) = mean_error;
                        stdMatrix(4,4) = std_error;
                    elseif contains(regulationList{reg_idx},'uV3') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                        errorMatrix(5,1) = mean_error;
                        stdMatrix(5,1) = std_error;
                    elseif contains(regulationList{reg_idx},'uV3') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                        errorMatrix(5,2) = mean_error;
                        stdMatrix(5,2) = std_error;
                    elseif contains(regulationList{reg_idx},'uV3') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                        errorMatrix(5,3) = mean_error;
                        stdMatrix(5,3) = std_error;
                    elseif contains(regulationList{reg_idx},'uV3') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                        errorMatrix(5,4) = mean_error;
                        stdMatrix(5,4) = std_error;
                    elseif contains(regulationList{reg_idx},'dV4') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                        errorMatrix(6,1) = mean_error;
                        stdMatrix(6,1) = std_error;
                    elseif contains(regulationList{reg_idx},'dV4') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                        errorMatrix(6,2) = mean_error;
                        stdMatrix(6,2) = std_error;
                    elseif contains(regulationList{reg_idx},'dV4') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                        errorMatrix(6,3) = mean_error;
                        stdMatrix(6,3) = std_error;
                    elseif contains(regulationList{reg_idx},'dV4') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                        errorMatrix(6,4) = mean_error;
                        stdMatrix(6,4) = std_error;
                    elseif contains(regulationList{reg_idx},'uV4') && contains(LKDFBA_List{LKDFBA_idx},'Params_predict')
                        errorMatrix(7,1) = mean_error;
                        stdMatrix(7,1) = std_error;
                    elseif contains(regulationList{reg_idx},'uV4') && contains(LKDFBA_List{LKDFBA_idx},'NLR')
                        errorMatrix(7,2) = mean_error;
                        stdMatrix(7,2) = std_error;
                    elseif contains(regulationList{reg_idx},'uV4') && contains(LKDFBA_List{LKDFBA_idx},'DR')
                        errorMatrix(7,3) = mean_error;
                        stdMatrix(7,3) = std_error;
                    elseif contains(regulationList{reg_idx},'uV4') && contains(LKDFBA_List{LKDFBA_idx},'HP')
                        errorMatrix(7,4) = mean_error;
                        stdMatrix(7,4) = std_error;
                    end
                end
            end
            error_all{k} = errorMatrix;
            std_all{k} = stdMatrix;
        end
        save(sprintf('Synthetic_%sall_stdall_nT-%02d_cov-%02d.mat',errorFileName(25:end-4),nT,cov),'error_all','std_all');
    end
end


%% Heatmaps for noiseless synthetic models in MATLAB
% The matrix in results_combined and be copy-and-pasted into Excel to
% recreate the heatmaps found in the manuscript.

clear;clc;close all
load('Synthetic_errorall.mat');
figure;
for i = 1:20
    subplot(4,5,i)
    cdata = error_all{i};
    xvalues = {'LR','NLR','DR','HP'};
    yvalues = {'1x','dV2','uV2','dV3','uV3','dV4','uV4'};
    h = heatmap(xvalues,yvalues,cdata,'ColorbarVisible','off');
    h.ColorScaling = 'scaledrows';
    
    h.Title = sprintf('Synthetic model #%d',i);
    if i == 1 || i == 6 || i == 11 || i == 16
        h.YLabel = 'Regulation';
    end
    set(gca,'FontSize',12)
end

LR_results = [];
NLR_results = [];
DR_results = [];
HP_results = [];

for i = 1:20
    LR_results = [LR_results error_all{i}(:,1)];
    NLR_results = [NLR_results error_all{i}(:,2)];
    DR_results = [DR_results error_all{i}(:,3)];
    HP_results = [HP_results error_all{i}(:,4)];
end

% Matrix to copy-and-paste into Excel to create heatmaps
results_combined = [LR_results; NLR_results; DR_results; HP_results];

%% Heatmaps for nT = 50, CoV = 0.05 synthetic models in MATLAB
% The matrix in results_combined and be copy-and-pasted into Excel to
% recreate the heatmaps found in the manuscript.

clear;clc;close all
load('Synthetic_noisy_errorall_stdall_nT-50_cov-05.mat');
%load('Synthetic_noisy_smooth_errorall_stdall_nT-50_cov-05.mat');

figure;
for i = 1:20
    subplot(4,5,i)
    cdata = error_all{i};
    xvalues = {'LR','NLR','DR','HP'};
    yvalues = {'1x','dV2','uV2','dV3','uV3','dV4','uV4'};
    h = heatmap(xvalues,yvalues,cdata,'ColorbarVisible','off');
    h.ColorScaling = 'scaledrows';
    
    h.Title = sprintf('Synthetic model #%d',i);
    if i == 1 || i == 6 || i == 11 || i == 16
        h.YLabel = 'Regulation';
    end
    set(gca,'FontSize',12)
end

LR_results = [];
NLR_results = [];
DR_results = [];
HP_results = [];

for i = 1:20
    LR_results = [LR_results error_all{i}(:,1)];
    NLR_results = [NLR_results error_all{i}(:,2)];
    DR_results = [DR_results error_all{i}(:,3)];
    HP_results = [HP_results error_all{i}(:,4)];
end

% Matrix to copy-and-paste into Excel to create heatmaps
results_combined = [LR_results; NLR_results; DR_results; HP_results];

%% Heatmaps for nT = 50, CoV = 0.15 synthetic models in MATLAB
% The matrix in results_combined and be copy-and-pasted into Excel to
% recreate the heatmaps found in the manuscript.

clear;clc;close all
load('Synthetic_noisy_errorall_stdall_nT-50_cov-15.mat');
%load('Synthetic_noisy_smooth_errorall_stdall_nT-50_cov-15.mat');

figure;
for i = 1:20
    subplot(4,5,i)
    cdata = error_all{i};
    xvalues = {'LR','NLR','DR','HP'};
    yvalues = {'1x','dV2','uV2','dV3','uV3','dV4','uV4'};
    h = heatmap(xvalues,yvalues,cdata,'ColorbarVisible','off');
    h.ColorScaling = 'scaledrows';
    
    h.Title = sprintf('Synthetic model #%d',i);
    if i == 1 || i == 6 || i == 11 || i == 16
        h.YLabel = 'Regulation';
    end
    set(gca,'FontSize',12)
end

LR_results = [];
NLR_results = [];
DR_results = [];
HP_results = [];

for i = 1:20
    LR_results = [LR_results error_all{i}(:,1)];
    NLR_results = [NLR_results error_all{i}(:,2)];
    DR_results = [DR_results error_all{i}(:,3)];
    HP_results = [HP_results error_all{i}(:,4)];
end

% Matrix to copy-and-paste into Excel to create heatmaps
results_combined = [LR_results; NLR_results; DR_results; HP_results];

%% Heatmaps for nT = 15, CoV = 0.05 synthetic models in MATLAB
% The matrix in results_combined and be copy-and-pasted into Excel to
% recreate the heatmaps found in the manuscript.

clear;clc;close all
load('Synthetic_noisy_errorall_stdall_nT-15_cov-05.mat');
%load('Synthetic_noisy_smooth_errorall_stdall_nT-15_cov-05.mat');

figure;
for i = 1:20
    subplot(4,5,i)
    cdata = error_all{i};
    xvalues = {'LR','NLR','DR','HP'};
    yvalues = {'1x','dV2','uV2','dV3','uV3','dV4','uV4'};
    h = heatmap(xvalues,yvalues,cdata,'ColorbarVisible','off');
    h.ColorScaling = 'scaledrows';
    
    h.Title = sprintf('Synthetic model #%d',i);
    if i == 1 || i == 6 || i == 11 || i == 16
        h.YLabel = 'Regulation';
    end
    set(gca,'FontSize',12)
end

LR_results = [];
NLR_results = [];
DR_results = [];
HP_results = [];

for i = 1:20
    LR_results = [LR_results error_all{i}(:,1)];
    NLR_results = [NLR_results error_all{i}(:,2)];
    DR_results = [DR_results error_all{i}(:,3)];
    HP_results = [HP_results error_all{i}(:,4)];
end

% Matrix to copy-and-paste into Excel to create heatmaps
results_combined = [LR_results; NLR_results; DR_results; HP_results];

%% Heatmaps for nT = 15, CoV = 0.15 synthetic models in MATLAB
% The matrix in results_combined and be copy-and-pasted into Excel to
% recreate the heatmaps found in the manuscript.

clear;clc;close all
load('Synthetic_noisy_errorall_stdall_nT-15_cov-15.mat');
%load('Synthetic_noisy_smooth_errorall_stdall_nT-15_cov-15.mat');

figure;
for i = 1:20
    subplot(4,5,i)
    cdata = error_all{i};
    xvalues = {'LR','NLR','DR','HP'};
    yvalues = {'1x','dV2','uV2','dV3','uV3','dV4','uV4'};
    h = heatmap(xvalues,yvalues,cdata,'ColorbarVisible','off');
    h.ColorScaling = 'scaledrows';
    
    h.Title = sprintf('Synthetic model #%d',i);
    if i == 1 || i == 6 || i == 11 || i == 16
        h.YLabel = 'Regulation';
    end
    set(gca,'FontSize',12)
end

LR_results = [];
NLR_results = [];
DR_results = [];
HP_results = [];

for i = 1:20
    LR_results = [LR_results error_all{i}(:,1)];
    NLR_results = [NLR_results error_all{i}(:,2)];
    DR_results = [DR_results error_all{i}(:,3)];
    HP_results = [HP_results error_all{i}(:,4)];
end

% Matrix to copy-and-paste into Excel to create heatmaps
results_combined = [LR_results; NLR_results; DR_results; HP_results];

