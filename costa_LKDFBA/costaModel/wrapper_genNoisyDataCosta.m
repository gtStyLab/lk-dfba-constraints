function wrapper_genNoisyDataCosta(hiResDataFileName,nT,cov,numSets)

    % 1) Load in hiResDataFileName
    hiResData = load(hiResDataFileName);
    
    idxEnd = strfind(hiResDataFileName,'_');
    slashidx = strfind(hiResDataFileName,'/');
    loResDataFileNameStem = sprintf('%snoisy_data/%s_nT-%03d_cov-%02d_rep-',hiResDataFileName(1:slashidx),hiResDataFileName(slashidx+1:idxEnd(4)-1),nT,cov*100);
    
    
    % 2) Interpolate to lo-res nT sampling
    timeVec = linspace(hiResData.tStart,hiResData.tEnd,nT+1);
    %fluxTimeVec = timeVec(1:end-1)+0.5*diff(timeVec(1:2));
    fluxTimeVec = timeVec;

    loResConcMatrix = interp1(hiResData.timeVec,hiResData.concMatrix,timeVec,'linear','extrap');
    loResFluxMatrix = interp1(hiResData.fluxTimeVec,hiResData.fluxMatrix,fluxTimeVec,'linear','extrap');
        
    
    loResData.tStart = hiResData.tStart;
    loResData.tEnd = hiResData.tEnd;
    loResData.nT = nT;
% %     loResData.paramsVec = hiResData.paramsVec;
    loResData.x0 = hiResData.concMatrix(1,:);
    loResData.timeVec = timeVec;
    loResData.fluxTimeVec = fluxTimeVec;
    
    loResData.concNames = hiResData.concNames;
    loResData.fluxNames = hiResData.fluxNames;
    
    % 3) Loop through for numSets noisy datasets
    for k = 1:numSets
        
        % 3a) Add in noise: use noiseless data + random * cov 
        loResData.concMatrix = loResConcMatrix + loResConcMatrix .* (cov*randn(size(loResConcMatrix)));
        loResData.fluxMatrix = loResFluxMatrix + loResFluxMatrix .* (cov*randn(size(loResFluxMatrix)));
        
        % Guarantee we have no *negative* concentation values
        loResData.concMatrix(loResData.concMatrix<0) = 0;
        
        % First data point is always 'correct' and noiseless
        loResData.concMatrix(1,:) = loResData.x0;
        
        % x1 is fixed value, no noise added
        loResData.concMatrix(:,1) = loResConcMatrix(:,1);
        
        % 3b) Save out this noisy dataset
        save(sprintf('%s%03d.mat',loResDataFileNameStem,k),'-struct','loResData')
        
    end
end