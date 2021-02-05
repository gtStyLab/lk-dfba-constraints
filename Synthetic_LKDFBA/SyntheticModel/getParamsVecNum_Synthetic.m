function vecOut = getParamsVecNum_Synthetic(n,regName)
% Just a hard-coded list of parameter vectors, by index

    % Vary ICs
        %  Params  = [bm3; bm4;    a2;  b21;  b2r4     a3;  b32;     a4;  b42;  b4r3;     a5;  b53;  b54;   x0_1; x0_2; x0_3; x0_4; x0_5;];
    paramsList{1}  = [0.6; 0.4;   0.8;  0.5; -0.2;      1; 0.75;    0.5;  0.4;  0.80;    0.5;  0.5;  0.8;    0.1;  0.2;  0.3;  0.4;  0.5;];    
    paramsList{2}  = [0.6; 0.4;     0.7;  0.5; -0.2;      0.8; 0.2;    0.2;  0.9;  0.7;    0.9;  0.4;  0.9;   0.3;  0.3;  0.6;  0.5;  0.2;];
    paramsList{3}  = [0.6; 0.4;     0.1;  0.5; -0.7;      0.6; 0.9;    0.6;  0.3;  0.9;    0.2;  0.4;  0.3;   0.4;  0.9;  0.6;  0.1;  0.9;];
    paramsList{4}  = [0.6; 0.4;     0.9;  0.4; -0.2;      0.6; 0.8;    0.4;  0.9;  0.6;    0.5;  0.2;  0.7;   0.8;  0.1;  0.5;  0.7;  0.8;];
    paramsList{5}  = [0.6; 0.4;     0.2;  0.4; -0.2;      0.9; 0.6;    0.6;  0.3;  0.6;    0.5;  0.7;  0.8;   0.5;  0.5;  0.8;  0.5;  0.2;];
    paramsList{6}  = [0.6; 0.4;     0.1;  0.6; -0.3;      0.3; 0.9;    0.5;  0.1;  0.7;    0.6;  0.8;  0.6;   0.2;  0.9;  0.2;  0.1;  0.3;];
    paramsList{7}  = [0.6; 0.4;     0.5;  0.2; -0.2;      0.1; 0.9;    0.2;  0.9;  0.9;    0.6;  0.5;  0.8;   0.2;  0.3;  0.1;  0.7;  0.6;];
    paramsList{8}  = [0.6; 0.4;     0.9;  0.4; -0.3;      0.8; 0.1;    0.2;  0.9;  0.7;    0.2;  0.6;  0.8;   0.6;  0.4;  0.1;  0.4;  0.4;];
    paramsList{9}  = [0.6; 0.4;     0.6;  0.5; -0.9;      0.4; 0.6;    0.8;  0.8;  0.4;    0.7;  0.8;  0.9;   0.3;  0.4;  0.2;  0.7;  0.8;];
    paramsList{10}  = [0.6; 0.4;     0.6;  0.3; -0.9;      0.3; 0.2;    0.6;  0.6;  0.7;    0.6;  0.8;  0.9;   0.4;  0.2;  0.8;  0.1;  0.7;];
    paramsList{11}  = [0.6; 0.4;     0.8;  0.2; -0.6;      0.7; 0.4;    0.3;  0.7;  0.8;    0.4;  0.1;  0.2;   0.5;  0.1;  0.4;  0.8;  0.4;];
    paramsList{12}  = [0.6; 0.4;     0.4;  0.4; -0.3;      0.5; 0.4;    0.7;  0.3;  0.3;    0.6;  0.1;  0.8;   0.1;  0.9;  0.3;  0.6;  0.1;];
    paramsList{13}  = [0.6; 0.4;     0.2;  0.9; -0.8;      0.3; 0.7;    0.6;  0.5;  0.8;    0.6;  0.5;  0.3;   0.3;  0.1;  0.2;  0.4;  0.9;];
    paramsList{14}  = [0.6; 0.4;     0.9;  0.5; -0.9;      0.1; 0.8;    0.2;  0.7;  0.3;    0.5;  0.8;  0.5;   0.9;  0.7;  0.3;  0.5;  0.9;];
    paramsList{15}  = [0.6; 0.4;     0.6;  0.8; -0.7;      0.1; 0.2;    0.2;  0.9;  0.9;    0.9;  0.9;  0.2;   0.2;  0.8;  0.2;  0.4;  0.5;];
    paramsList{16}  = [0.6; 0.4;     0.1;  0.2; -0.7;      0.8; 0.5;    0.5;  0.9;  0.4;    0.3;  0.2;  0.6;   0.8;  0.8;  0.2;  0.1;  0.5;];
    paramsList{17}  = [0.6; 0.4;     0.3;  0.4; -0.3;      0.7; 0.5;    0.9;  0.5;  0.2;    0.7;  0.6;  0.3;   0.5;  0.1;  0.8;  0.3;  0.2;];
    paramsList{18}  = [0.6; 0.4;     0.5;  0.9; -0.4;      0.3; 0.6;    0.4;  0.2;  0.3;    0.7;  0.5;  0.6;   0.9;  0.4;  0.6;  0.2;  0.9;];
    paramsList{19}  = [0.6; 0.4;     0.9;  0.8; -0.6;      0.9; 0.7;    0.6;  0.2;  0.6;    0.4;  0.1;  0.7;   0.1;  0.3;  0.5;  0.2;  0.2;];
    paramsList{20}  = [0.6; 0.4;     0.9;  0.9; -0.2;      0.1; 0.7;    0.3;  0.3;  0.5;    0.6;  0.4;  0.7;   0.4;  0.8;  0.2;  0.3;  0.4;];
    
    if strcmp(regName,'dV2')
        for list_idx = 1:length(paramsList)
            paramsList{list_idx}(3) = 0.5*paramsList{list_idx}(3);
        end
    elseif strcmp(regName,'dV3')
        for list_idx = 1:length(paramsList)
            paramsList{list_idx}(6) = 0.5*paramsList{list_idx}(6); 
        end
    elseif strcmp(regName,'dV4')      
        for list_idx = 1:length(paramsList)
            paramsList{list_idx}(8) = 0.5*paramsList{list_idx}(8);
        end
    elseif strcmp(regName,'uV2')
        for list_idx = 1:length(paramsList)
            paramsList{list_idx}(3) = 2*paramsList{list_idx}(3);
        end
    elseif strcmp(regName,'uV3')
        for list_idx = 1:length(paramsList)
            paramsList{list_idx}(6) = 2*paramsList{list_idx}(6);
        end
    elseif strcmp(regName,'uV4')
        for list_idx = 1:length(paramsList)
            paramsList{list_idx}(8) = 2*paramsList{list_idx}(8);
        end
    end
    
    vecOut = paramsList{n};

end


