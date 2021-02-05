%% LK-DFBA on noiseless synthetic models

clear;clc;

for k = 1:20
    wrapper_fitSyntheticNoiselessSplit(sprintf('Synthetic_k-%02d_hiRes.mat',k),{'LR','NLR','DR'});
    wrapper_fitSyntheticNoiselessSplit(sprintf('Synthetic_k-%02d_hiRes.mat',k),{'HP'});
end

%% LK-DFBA on noisy synthetic models

clear;clc;

for nTnoisy = [15 50]
    for CoVnoisy = [5 15]  
        for k = 1:20
            for repnoisy = 1:10
                wrapper_fitSyntheticNoisySplit(sprintf('Synthetic_k-%02d_nT-%03d_cov-%02d_rep-%03d.mat',k,nTnoisy,CoVnoisy,repnoisy),{'LR','NLR','DR'});
                wrapper_fitSyntheticNoisySplit(sprintf('Synthetic_k-%02d_nT-%03d_cov-%02d_rep-%03d.mat',k,nTnoisy,CoVnoisy,repnoisy),{'HP'}); % Hyperplane approach 
            end
        end
    end
end