%% LK-DFBA on noiseless E. coli data

clear;clc;

wrapper_fitChassNoiselessSplit('chassV_k-01_hiRes.mat',{'LR','NLR','DR'});
wrapper_fitChassNoiselessSplit('chassV_k-01_hiRes.mat',{'HP'});

%% LK-DFBA on noisy E. coli data

clear;clc;

for nTnoisy = [15 50]
    for CoVnoisy = [5 15] 
        for repnoisy = 1:10
            wrapper_fitChassNoisySplit(sprintf('chassV_k-01_nT-%03d_cov-%02d_rep-%03d.mat',nTnoisy,CoVnoisy,repnoisy),{'LR','NLR','DR'})
            wrapper_fitChassNoisySplit(sprintf('chassV_k-01_nT-%03d_cov-%02d_rep-%03d.mat',nTnoisy,CoVnoisy,repnoisy),{'HP'})
        end
    end
end

%% LK-DFBA on noiseless models with same topology as original E. coli system, but with different kinetic parameters

clear;clc;

for k = 1:5
    wrapper_fitChassNoiselessSplit(sprintf('chassV_newModel-%02d_hiRes.mat',k),{'LR','NLR','DR'});
    wrapper_fitChassNoiselessSplit(sprintf('chassV_newModel-%02d_hiRes.mat',k),{'HP'});
end