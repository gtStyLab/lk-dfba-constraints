%% Plot the correlation between LK-DFBA and ODE predictions with experimental E. coli data

clear;clc;

% Gather Ishii Data
Ishii_data = [3.27581880200000,2.85624958500000,2.66933180600000,3.03819410500000,3.14342349000000,3.05872307000000,2.72669360900000,2.71858500600000,2.83755060300000,2.70478508100000,2.75883585300000,2.99027957700000,2.69602946100000,3.33149792600000,2.82121179800000,2.80480101100000,2.99797434200000,3.17800396700000,3.36130999000000,2.92195560600000,3.63282300700000,3.18488702100000,4.14784821200000,4.49277238000000,2.96875816700000,2.80354733300000,2.93524611600000;2.85926568300000,2.28985529200000,1.59241658200000,1.94502148400000,2.72431083600000,2.38724159400000,NaN,2.29451293100000,1.47223475500000,2.29095296300000,2.01814360300000,1.87021055600000,2.22931980100000,2.91839218400000,2.10129497200000,1.30459709400000,2.02726023000000,3.13351191100000,2.62555284600000,2.88397018300000,3.34942648400000,2.14260089400000,2.10710689200000,3.49555662200000,2.55016326600000,2.38817376000000,2.51844116700000;2.92841821800000,2.45800270500000,2.09948285200000,2.46315510700000,2.79312037700000,2.62487379000000,0.927048560000000,2.36516895500000,2.17435827600000,2.35586780500000,2.30042768700000,2.40562011400000,2.32926161300000,2.98502214200000,2.36775842600000,2.09249374600000,2.46454476700000,2.95023642300000,2.87516372600000,2.72811307100000,3.32762954600000,2.20948352200000,3.25742963700000,3.56294820800000,2.61844470400000,2.45296373900000,2.58595182800000;2.92841821800000,2.45800270500000,2.09948285200000,2.46315510700000,2.79312037700000,2.62487379000000,0.927048560000000,2.36516895500000,2.17435827600000,2.35586780500000,2.30042768700000,2.40562011400000,2.32926161300000,2.98502214200000,2.36775842600000,2.09249374600000,2.46454476700000,2.95023642300000,2.87516372600000,2.72811307100000,3.32762954600000,2.20948352200000,3.25742963700000,3.56294820800000,2.61844470400000,2.45296373900000,2.58595182800000;2.92841821800000,2.45800270500000,2.09948285200000,2.46315510700000,2.79312037700000,2.62487379000000,0.927048560000000,2.36516895500000,2.17435827600000,2.35586780500000,2.30042768700000,2.40562011400000,2.32926161300000,2.98502214200000,2.36775842600000,2.09249374600000,2.46454476700000,2.95023642300000,2.87516372600000,2.72811307100000,3.32762954600000,2.20948352200000,3.25742963700000,3.56294820800000,2.61844470400000,2.45296373900000,2.58595182800000;5.82424203800000,4.93151484600000,4.38710021000000,5.11853675400000,5.55618962400000,5.30125647600000,3.27200506300000,4.70043347600000,4.63167709800000,4.67927819000000,4.67578535700000,5.01314390500000,4.64245489100000,5.93672930500000,4.80246420800000,4.51303701800000,5.08177636700000,5.74370190900000,5.79950341700000,5.31988769300000,6.57900613700000,5.00899921300000,7.02367581400000,7.66934216300000,5.20423306800000,4.87242508800000,5.13961594900000;5.52614252700000,4.63446488900000,4.09080438000000,4.82079373200000,5.26070781600000,5.00456033800000,2.97479546000000,4.40138912500000,4.33373428500000,4.38175183100000,4.37783108500000,4.71710622700000,4.34589165000000,5.64022599000000,4.50623696900000,4.21572811100000,4.78497690700000,5.44814754000000,5.45664979800000,5.06275560000000,6.28111465000000,4.71280472000000,6.72503074200000,7.37281918600000,4.90735725100000,4.57524907100000,4.84315609100000;1.58258082100000,1.31218962200000,1.30410205400000,1.67623245200000,1.60192004500000,1.53893533800000,0.141760801000000,1.15553455700000,1.38157501300000,1.54348560600000,1.23976565600000,1.61860843200000,1.09739183200000,1.83542215300000,1.43991829000000,1.29758509200000,1.04350492900000,2.16209143900000,1.72892340600000,1.95496361800000,2.53923429700000,1.41959969200000,2.17450942500000,2.13424659100000,1.19640954100000,1.09369185000000,1.21742267900000;4.24909732600000,3.55720179600000,3.36218357000000,4.26942226600000,4.13551937800000,3.98594438100000,3.33351927100000,3.25971935200000,3.68870228200000,3.84317502500000,3.38892637300000,4.30011174000000,3.18142260500000,4.55725595900000,3.64892712800000,3.69740088400000,3.42989250500000,4.95937053000000,4.38785406000000,4.34515252300000,5.55451372100000,4.61168455700000,5.72141738900000,6.59089708100000,3.55360352600000,3.28651443200000,3.54213760300000;0.373967474000000,0.523550549000000,1.03420591500000,1.05063790300000,0.375104725000000,0.628659353000000,2.68306651100000,0.380574715000000,1.32275258900000,0.370555556000000,0.696550876000000,1.07521482700000,0.423573189000000,0.369796270000000,0.674777438000000,1.45532710000000,0.925744497000000,NaN,0.685337494000000,0,0.239802647000000,0.997697708000000,1.99511499000000,0.952288034000000,0.374063529000000,0.370516816000000,0.372776257000000;0.373967474000000,0.523550549000000,1.03420591500000,1.05063790300000,0.375104725000000,0.628659353000000,1.66322856700000,0.380574715000000,1.32275258900000,0.370555556000000,0.696550876000000,1.07521482700000,0.423573189000000,0.369796270000000,0.674777438000000,1.45532710000000,0.925744497000000,0,0.685337494000000,NaN,0.239766318000000,0.375816668000000,1.99511499000000,0.377392880000000,0.374063529000000,0.370516816000000,0.372776257000000;0.0887746900000000,0.188141160000000,0.528420924000000,0.539400981000000,0.0907820700000000,0.259012670000000,0.948862109000000,0.0924047040000000,0.721986375000000,0.0865531230000000,0.304354771000000,0.556341515000000,0.121510048000000,0.0866189460000000,0.289033149000000,0.810335060000000,0.458270358000000,-0.161029461000000,0.273140050000000,-0.138296159000000,NaN,0.0891768370000000,1.17106198600000,0.0898554480000000,0.0890627450000000,0.0872183580000000,0.0880573830000000;0.285160027000000,0.335409389000000,0.505784991000000,0.511236922000000,0.284291220000000,0.369616096000000,0.714366459000000,0.288170011000000,0.600766214000000,0.284002433000000,0.392196105000000,0.518873312000000,0.302063141000000,0.283177324000000,0.385744289000000,0.644992040000000,0.467474139000000,0.161029461000000,0.412197444000000,0.138296159000000,0.239766318000000,0.286639832000000,0.824053004000000,0.287537432000000,0.285000784000000,0.283298458000000,0.284718873000000;0.0886108990000000,0.138328167000000,0.308254437000000,0.313754305000000,0.0893989640000000,0.173857819000000,0.518044519000000,0.0897133050000000,0.404975222000000,0.0865531230000000,0.196318759000000,0.321514860000000,0.105252990000000,0.0866189460000000,0.188259463000000,0.448655970000000,0.272605807000000,-0.0360067850000000,0.186989675000000,-0.0311772660000000,0.0435938760000000,0.0891768370000000,0.629104138000000,0.0898554480000000,0.0890627450000000,0.0870501450000000,0.0880573830000000;0.0886108990000000,0.138328167000000,0.308254437000000,0.313754305000000,0.0893989640000000,0.173857819000000,0.518044519000000,0.0897133050000000,0.404975222000000,0.0865531230000000,0.196318759000000,0.321514860000000,0.105252990000000,0.0866189460000000,0.188259463000000,0.448655970000000,0.272605807000000,-0.0360067850000000,0.186989675000000,-0.0311772660000000,0.0435938760000000,0.0891768370000000,0.629104138000000,0.0898554480000000,0.0890627450000000,0.0870501450000000,0.0880573830000000;0.000163791000000000,0.0497844300000000,0.220166487000000,0.225646676000000,0.00138310600000000,0.0851548500000000,0.430790323000000,0.00271858500000000,0.317011153000000,0,0.108036012000000,0.234796752000000,0.0162840180000000,0,0.100801898000000,0.361707138000000,0.185664551000000,-0.124990896000000,0.0861503750000000,-0.107148112000000,-0.0435938760000000,0,0.541999326000000,0,0,0.000140177000000000,0];

WT = mean(Ishii_data(:,1:3),2);
pgm = Ishii_data(:,6);
pgi = Ishii_data(:,7);
pfkB = Ishii_data(:,9);
fbaB = Ishii_data(:,11);
gpmB = Ishii_data(:,14);
pykF = Ishii_data(:,16);
zwf = Ishii_data(:,18);
gnd = Ishii_data(:,20);
rpe = Ishii_data(:,21);
rpiB = Ishii_data(:,23);
tktA = Ishii_data(:,24);
tktB = Ishii_data(:,25);
talB = Ishii_data(:,27);

T = table(WT,pgm,pgi,pfkB,fbaB,gpmB,pykF,zwf,gnd,rpe,rpiB,tktA,tktB,talB);
T.Properties.RowNames = {'PTS_glc','PGI','PFK','ALDO','TIS','GAPDH+PGK','PGluMu+ENO','PYK','PDH','G6PDH','PGDH','Ru5P','R5PI','TKa','TA','TKb'}; % measured flux
T('GAPDH+PGK',:) = [];
T('PGluMu+ENO',:) = [];

KO_idx = {'dPGM','dPGI','dPFK','dALDO','dPGluMu','dPYK','dG6PDH','dPGDH','dRPE','dR5PI','dTKa','dTKb','dTA'}; % knockouts
LKDFBA_correlation_cell = {};
ODE_correlation_cell = {};
KO_count = 2;

for KO = KO_idx
    
    % Gather LKDFBA_NLR data
    for i = 1:10
        NLRoriginal{i} = load(sprintf('results_split_noisy_predict/chassV_k-01_nT-015_cov-15_rep-%03d_fbaRegressionParams_NLR_SS_predict.mat',i));
        NLRpredict{i} = load(sprintf('results_split_noisy_predict/chassV_k-01_nT-015_cov-15_rep-%03d_fbaRegressionParams_NLR_%s_SS_predict.mat',i,KO{:}));
    
        ODEoriginal = load('chassV_k-01_SS_hiRes.mat');
        ODEpredict = load(sprintf('chassV_k-01_%s_SS_hiRes.mat',KO{:}));

        ODE_timeVec = ODEoriginal.timeVec;
        ODE_fluxTimeVec = ODEoriginal.fluxTimeVec;
        ODEoriginal_concMatrix = ODEoriginal.concMatrix;
        ODEoriginal_fluxMatrix = ODEoriginal.fluxMatrix;
        ODEpredict_concMatrix = ODEpredict.concMatrix;
        ODEpredict_fluxMatrix = ODEpredict.fluxMatrix;  

        flux_idx = [2 3 6 11 13 20 25 5 27 29 28 8 7 9]; % fluxes corresponding to names in T.Properties.RowNames
    
        NLR_timeVec = NLRoriginal{i}.modelTimeVec;
        NLR_fluxTimeVec = NLRoriginal{i}.modelFluxTimeVec;
        NLRoriginal_concMatrix = NLRoriginal{i}.modelConcMatrix;
        NLRoriginal_fluxMatrix = NLRoriginal{i}.modelFluxMatrix;
        NLRpredict_concMatrix = NLRpredict{i}.modelConcMatrix;
        NLRpredict_fluxMatrix = NLRpredict{i}.modelFluxMatrix;

        % Combine forward and reverse fluxes in LK-DFBA predictions
        % according to fluxNames in modelStruct from
        % 'chassV_k-01_hiRes_fbaRegressionParams.mat' file after running
        % LK-DFBA.
        NLRoriginal_fluxMatrix(:,[3 4 7 8 9 11 12 13 16 18 19 28 29]) = NLRoriginal_fluxMatrix(:,[3 4 7 8 9 11 12 13 16 18 19 28 29]) - NLRoriginal_fluxMatrix(:,[49:61]);
        NLRoriginal_fluxMatrix(:,[49:61]) = [];
        NLRpredict_fluxMatrix(:,[3 4 7 8 9 11 12 13 16 18 19 28 29]) = NLRpredict_fluxMatrix(:,[3 4 7 8 9 11 12 13 16 18 19 28 29]) - NLRpredict_fluxMatrix(:,[49:61]);
        NLRpredict_fluxMatrix(:,[49:61]) = [];
        
        count = 1;
        for flux = flux_idx
            %avgFlux_NLRoriginal(count,1) = mean(NLRoriginal_fluxMatrix(:,flux));
            %avgFlux_NLRpredict(count,1) = mean(NLRpredict_fluxMatrix(:,flux));
            %avgFlux_ODEoriginal(count,1) = mean(ODEoriginal_fluxMatrix(:,flux));
            %avgFlux_ODEpredict(count,1) = mean(ODEpredict_fluxMatrix(:,flux));
            SSFlux_NLRoriginal(count,1) = NLRoriginal_fluxMatrix(end,flux);
            SSFlux_NLRpredict(count,1) = NLRpredict_fluxMatrix(end,flux);
            SSFlux_ODEoriginal(count,1) = ODEoriginal_fluxMatrix(end,flux);
            SSFlux_ODEpredict(count,1) = ODEpredict_fluxMatrix(end,flux);
            count = count+1;
        end
    
        KO_ishii = T.(KO_count);
        %KO_NLR = avgFlux_NLRpredict;
        %KO_ODE = avgFlux_ODEpredict;
        KO_NLR = SSFlux_NLRpredict;
        KO_ODE = SSFlux_ODEpredict;
        
        % Calculate correlations
        LKDFBA_correlation_WT(i) = corr(T.WT,SSFlux_NLRoriginal,'rows','complete');
        ODE_correlation_WT(i) = corr(T.WT,SSFlux_ODEoriginal,'rows','complete');
        
        LKDFBA_correlation_cell{KO_count-1,1} = KO{:};
        LKDFBA_correlation_cell{end,i+1} = corr(KO_ishii,KO_NLR,'rows','complete');
        ODE_correlation_cell{KO_count-1,1} = KO{:};
        ODE_correlation_cell{end,i+1} = corr(KO_ishii,KO_ODE,'rows','complete');
        
    end
    KO_count = KO_count + 1;
end

% Take averages of correlation
ODE_correlation_cell_new = ['WT'; ODE_correlation_cell(:,1)];
ODE_correlation_cell_new = [ODE_correlation_cell_new [mean(ODE_correlation_WT); num2cell(mean(cell2mat(ODE_correlation_cell(:,2:end)),2))]];

LKDFBA_correlation_cell_new = ['WT'; LKDFBA_correlation_cell(:,1)];
LKDFBA_correlation_cell_new = [LKDFBA_correlation_cell_new [mean(LKDFBA_correlation_WT); num2cell(mean(cell2mat(LKDFBA_correlation_cell(:,2:end)),2))]];
LKDFBA_std = std([LKDFBA_correlation_WT; cell2mat(LKDFBA_correlation_cell(:,2:end))],[],2);

figure;
Y = [LKDFBA_correlation_cell_new{:,2};ODE_correlation_cell_new{:,2}];
bar(Y');
set(gca,'XTickLabel',ODE_correlation_cell_new(:,1));
xtickangle(45)
hold on

% Error bars
yerr = Y';
ngroups = size(yerr, 1);
nbars = size(yerr, 2);
% Calculating the width for each bar group
groupwidth = min(0.8, nbars/(nbars + 1.5));
xerr = (1:ngroups) - groupwidth/2 + groupwidth / (2*nbars);
errorbar(xerr, yerr(:,1), LKDFBA_std(:), 'k.');
hold off

legend({'LK-DFBA (NLR)','ODE'});
ylim([0 1]);
ylabel('Flux Pearson Correlation');
set(gca,'FontSize',20)