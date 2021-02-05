% 20mM Glucose NOISY

clear;clc;

rawData = load('20mM_data.mat');

odeData = load('costa_k-01_concMol_1000_20copasi_hiRes.mat');
for i = 1:10
    LRpredictData{i} = load(sprintf('results_split_noisy_glc_predict/costa_k-01_concMol_1000_nT-015_cov-15_rep-%03d_fbaRegressionParams_20mM_predict.mat',i));
end
compartment_size = [1; % x_1 glc_Ext
        0.047; % x_2 g6p
        0.047; % x_3 f6p
        0.047; % x_4 fbp
        0.047; % x_5 g3p
        0.047; % x_6 bpg
        0.047; % x_7 pep
        0.047; % x_8 pyr
        1; % x_9 Lactate
        0.047; % x_10 acetoin
        1; % x_11 acetoin_Ext
        1; % x_12 2,3-butanediol
        0.047; % x_13 acetCoA
        0.047; % x_14 CoA
        1; % x_15 ethanol
        1; % x_16 formate
        1; % x_17 acetate
        0.047; % x_18 m1p
        0.047; % x_19 mannitol
        1; % x_20 mannitol_Ext
        0.047; % x_21 atp
        0.047; % x_22 adp
        0.047; % x_23 nad
        0.047; % x_24 nadh
        0.047; % x_25 pi
        1; % x_26 pi_Ext
        ];
for i = 1:10
    LRpredictData{i}.modelConcMatrix = LRpredictData{i}.modelConcMatrix./compartment_size'/1000;
end
odeData.concMatrix = odeData.concMatrix./compartment_size'/1000;

a = annotation('textbox', [00.06 0.95 0 0],'String','A.','EdgeColor','none');
a.FontSize = 14;
a.FontWeight = 'bold';

% plot Glucose
subplot(3,2,1)
hold on
plot([rawData.data{3:end,1}],[rawData.data{3:end,2}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,1),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p(i) = plot(LRpredictData{i}.modelTimeVec,LRpredictData{i}.modelConcMatrix(:,1),'r-','LineWidth',1.2);
    p(i).Color(4) = 0.4;
    if i ~= 1
        set(get(get(p(i),'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
    end
    
    all_conc_data = [all_conc_data LRpredictData{i}.modelConcMatrix(:,1)];
end
plot(LRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',2);
xlim([min(LRpredictData{1}.modelTimeVec) max(LRpredictData{1}.modelTimeVec)]);
title('Glucose')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])
legend('Experimental Data','ODE Data','LK-DFBA (LR)','Mean LK-DFBA (LR)','Location','Northwest');

% plot Lactate
subplot(3,2,2)
hold on
plot([rawData.data{3:end,1}],[rawData.data{3:end,3}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,9),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(LRpredictData{i}.modelTimeVec,LRpredictData{i}.modelConcMatrix(:,9),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data LRpredictData{i}.modelConcMatrix(:,9)];
end
plot(LRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',2);
xlim([min(LRpredictData{1}.modelTimeVec) max(LRpredictData{1}.modelTimeVec)]);
title('Lactate')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

%--------------------
% 40mM Glucose NOISY

annotation('line', [0.08 0.92], [0.654, 0.654])
a = annotation('textbox', [00.06 0.65 0 0],'String','B.','EdgeColor','none');
a.FontSize = 14;
a.FontWeight = 'bold';

rawData1 = load('40mM_data_1.mat');
rawData2 = load('40mM_data_2.mat');

odeData = load('costa_k-01_concMol_1000_hiRes.mat');
for i = 1:10
    LRpredictData{i} = load(sprintf('results_split_noisy_glc_predict/costa_k-01_concMol_1000_nT-015_cov-15_rep-%03d_fbaRegressionParams_predict.mat',i));
end

for i = 1:10
    LRpredictData{i}.modelConcMatrix = LRpredictData{i}.modelConcMatrix./compartment_size'/1000;
end
odeData.concMatrix = odeData.concMatrix./compartment_size'/1000;

% plot Glucose
subplot(3,2,3)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,2}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,1),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(LRpredictData{i}.modelTimeVec,LRpredictData{i}.modelConcMatrix(:,1),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data LRpredictData{i}.modelConcMatrix(:,1)];
end
plot(LRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',2);
xlim([min(LRpredictData{i}.modelTimeVec) max(LRpredictData{i}.modelTimeVec)]);
title('Glucose')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot Lactate
subplot(3,2,4)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,3}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,9),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(LRpredictData{i}.modelTimeVec,LRpredictData{i}.modelConcMatrix(:,9),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data LRpredictData{i}.modelConcMatrix(:,9)];
end
plot(LRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',2);
xlim([min(LRpredictData{i}.modelTimeVec) max(LRpredictData{i}.modelTimeVec)]);
title('Lactate')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

%--------------------
% 80mM Glucose NOISY

annotation('line', [0.08 0.92], [0.354, 0.354])
a = annotation('textbox', [00.06 0.35 0 0],'String','C.','EdgeColor','none');
a.FontSize = 14;
a.FontWeight = 'bold';

rawData1 = load('80mM_data_1.mat');
rawData2 = load('80mM_data_2.mat');

odeData = load('costa_k-01_concMol_1000_80copasi_hiRes.mat');
for i = 1:10
    LRpredictData{i} = load(sprintf('results_split_noisy_glc_predict/costa_k-01_concMol_1000_nT-015_cov-15_rep-%03d_fbaRegressionParams_80mM_predict.mat',i));
end

for i = 1:10
    LRpredictData{i}.modelConcMatrix = LRpredictData{i}.modelConcMatrix./compartment_size'/1000;
end
odeData.concMatrix = odeData.concMatrix./compartment_size'/1000;

% plot Glucose
subplot(3,2,5)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,2}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,1),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(LRpredictData{i}.modelTimeVec,LRpredictData{i}.modelConcMatrix(:,1),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data LRpredictData{i}.modelConcMatrix(:,1)];
end
plot(LRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',2);
xlim([min(LRpredictData{i}.modelTimeVec) max(LRpredictData{i}.modelTimeVec)]);
title('Glucose')
ylim([0 inf])
xlabel('time (s)')
ylabel('concentration (mM)');

% plot Lactate
subplot(3,2,6)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,3}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,9),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(LRpredictData{i}.modelTimeVec,LRpredictData{i}.modelConcMatrix(:,9),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data LRpredictData{i}.modelConcMatrix(:,9)];
end
plot(LRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',2);
xlim([min(LRpredictData{i}.modelTimeVec) max(LRpredictData{i}.modelTimeVec)]);
title('Lactate')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])



