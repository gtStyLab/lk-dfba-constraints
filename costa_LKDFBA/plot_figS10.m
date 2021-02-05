%% 20mM Glucose

clear;clc;

% Load experimental 20mM data
rawData = load('20mM_data.mat');

% Load 20mM data generated by Copasi with L. lactis ODE model
odeData = load('costa_k-01_concMol_1000_20copasi_hiRes.mat');
for i = 1:10
    NLRpredictData{i} = load(sprintf('results_split_noisy_glc_predict/costa_k-01_concMol_1000_nT-015_cov-15_rep-%03d_fbaRegressionParams_NLR_20mM_predict.mat',i));
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
    NLRpredictData{i}.modelConcMatrix = NLRpredictData{i}.modelConcMatrix./compartment_size'/1000;
end
odeData.concMatrix = odeData.concMatrix./compartment_size'/1000;

figure;

a = annotation('textbox', [0.075 0.945 0 0],'String','A.','EdgeColor','none');
a.FontSize = 14;
a.FontWeight = 'bold';

% plot Glucose
subplot(5,4,1)
hold on
plot([rawData.data{3:end,1}],[rawData.data{3:end,2}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,1),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p(i) = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,1),'r-','LineWidth',1.2);
    p(i).Color(4) = 0.4;
    if i ~= 1
        set(get(get(p(i),'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
    end
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,1)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{1}.modelTimeVec) max(NLRpredictData{1}.modelTimeVec)]);
title('Glucose')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])
legend('Experimental Data','ODE Data','LK-DFBA (NLR)','Mean LK-DFBA (NLR)','Location','Northwest');

% plot Lactate
subplot(5,4,2)
hold on
plot([rawData.data{3:end,1}],[rawData.data{3:end,3}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,9),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,9),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,9)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{1}.modelTimeVec) max(NLRpredictData{1}.modelTimeVec)]);
title('Lactate')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot G6P
subplot(5,4,3)
hold on
plot([rawData.data{3:end,1}],[rawData.data{3:end,6}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,2),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,2),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,2)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{1}.modelTimeVec) max(NLRpredictData{1}.modelTimeVec)]);
title('G6P')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot FBP
subplot(5,4,4)
hold on
plot([rawData.data{3:end,1}],[rawData.data{3:end,7}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,4),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,4),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,4)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{1}.modelTimeVec) max(NLRpredictData{1}.modelTimeVec)]);
title('FBP')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

%---------------------------------
% 40mM Glucose

annotation('line', [0.07 0.91], [0.768, 0.768])
a = annotation('textbox', [0.075 0.76 0 0],'String','B.','EdgeColor','none');
a.FontSize = 14;
a.FontWeight = 'bold';

% Load experimental 40mM data
rawData1 = load('40mM_data_1.mat');
rawData2 = load('40mM_data_2.mat');

% Load 40mM data generated by Copasi with L. lactis ODE model
odeData = load('costa_k-01_concMol_1000_hiRes.mat');
for i = 1:10
    NLRpredictData{i} = load(sprintf('results_split_noisy_glc_predict/costa_k-01_concMol_1000_nT-015_cov-15_rep-%03d_fbaRegressionParams_NLR_predict.mat',i));
end

for i = 1:10
    NLRpredictData{i}.modelConcMatrix = NLRpredictData{i}.modelConcMatrix./compartment_size'/1000;
end
odeData.concMatrix = odeData.concMatrix./compartment_size'/1000;

% plot Glucose
subplot(5,4,5)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,2}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,1),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,1),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,1)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('Glucose')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot Lactate
subplot(5,4,6)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,3}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,9),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,9),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,9)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('Lactate')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot NAD
subplot(5,4,7)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,5}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,23),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,23),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,23)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('NAD')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot NADH
subplot(5,4,8)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,6}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,24),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,24),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,24)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('NADH')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot PEP
subplot(5,4,9)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,7}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,7),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,7),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,7)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('PEP')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot FBP
subplot(5,4,10)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,9}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,4),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,4),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,4)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('FBP')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot ATP
subplot(5,4,11)
hold on
plot([rawData2.data{3:end,1}],[rawData2.data{3:end,2}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,21),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,21),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,21)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('ATP')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot Pi
subplot(5,4,12)
hold on
plot([rawData2.data{3:end,1}],[rawData2.data{3:end,3}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,25),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,25),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,25)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('Pi')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])


%---------------------------------
% 80mM Glucose

annotation('line', [0.07 0.91], [0.424, 0.424])
a = annotation('textbox', [0.075 0.416 0 0],'String','C.','EdgeColor','none');
a.FontSize = 14;
a.FontWeight = 'bold';

% Load experimental 80mM data
rawData1 = load('80mM_data_1.mat');
rawData2 = load('80mM_data_2.mat');

% Load 80mM data generated by Copasi with L. lactis ODE model
odeData = load('costa_k-01_concMol_1000_80copasi_hiRes.mat');
for i = 1:10
    NLRpredictData{i} = load(sprintf('results_split_noisy_glc_predict/costa_k-01_concMol_1000_nT-015_cov-15_rep-%03d_fbaRegressionParams_NLR_80mM_predict.mat',i));
end

for i = 1:10
    NLRpredictData{i}.modelConcMatrix = NLRpredictData{i}.modelConcMatrix./compartment_size'/1000;
end
odeData.concMatrix = odeData.concMatrix./compartment_size'/1000;

% plot Glucose
subplot(5,4,13)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,2}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,1),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,1),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,1)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('Glucose')
ylim([0 inf])
xlabel('time (s)')
ylabel('concentration (mM)');

% plot Lactate
subplot(5,4,14)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,3}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,9),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,9),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,9)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('Lactate')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot NAD
subplot(5,4,15)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,6}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,23),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,23),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,23)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('NAD')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot NADH
subplot(5,4,16)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,7}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,24),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,24),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,24)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('NADH')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot PEP
subplot(5,4,17)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,8}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,7),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,7),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,7)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('PEP')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot FBP
subplot(5,4,18)
hold on
plot([rawData1.data{3:end,1}],[rawData1.data{3:end,10}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,4),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,4),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,4)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('FBP')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot ATP
subplot(5,4,19)
hold on
plot([rawData2.data{3:end,1}],[rawData2.data{3:end,2}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,21),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,21),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,21)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('ATP')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

% plot Pi
subplot(5,4,20)
hold on
plot([rawData2.data{3:end,1}],[rawData2.data{3:end,3}],'bo');
plot(odeData.timeVec,odeData.concMatrix(:,25),'k--','LineWidth',1.2);
all_conc_data = [];
for i = 1:10
    p = plot(NLRpredictData{i}.modelTimeVec,NLRpredictData{i}.modelConcMatrix(:,25),'r-','LineWidth',1.2);
    p.Color(4) = 0.4;
    
    all_conc_data = [all_conc_data NLRpredictData{i}.modelConcMatrix(:,25)];
end
plot(NLRpredictData{1}.modelTimeVec,mean(all_conc_data,2),'g-','LineWidth',1.2);
xlim([min(NLRpredictData{i}.modelTimeVec) max(NLRpredictData{i}.modelTimeVec)]);
title('Pi')
xlabel('time (s)')
ylabel('concentration (mM)');
ylim([0 inf])

