function [ Params ] = loadGradParams(filename)
    
    fid = fopen(filename);
    [Param] = textscan(fid, '%f', 'Delimiter', '\n', 'CommentStyle', '#');
    Param = Param{:};
    fclose(fid);

    %parameters from input
    
    %Initial Conditions
    Params.s1_0     = Param(1); % Initial nutrient concentration, substrate 1
    Params.s2_0     = Param(2); % Initial nutrient concentration, substrate 2
    Params.x1_0     = Param(3); % Initial concentration, species 1
    
    %Solver Parameters
    Params.tfinal  = Param(4); % Final time
    Params.absTol  = Param(5); % Absolute tolerance
    Params.relTol  = Param(6); % Relative tolerance
    Params.tStep   = Param(7); % Time step
    
    %ODE parameters
    Params.D           = Param(8); % Dilution rate (per hour)
    Params.s1_in       = Param(9); % Input nutrient concentration
    Params.s2_in       = Param(10); % Input nutrient concentration
    Params.K1          = Param(11); % Half-saturation constant, substrate 1
    Params.K2          = Param(12); % Half-saturation constant, substrate 2
    Params.KA          = Param(13); % Kill rate, antibiotic
    Params.mu1         = Param(14); % Substrate consumption, substrate 1
    Params.mu2         = Param(15); % Substrate consumption, substrate 2
    Params.K21         = Param(16);
    Params.Y1          = Param(17);
    Params.Y2          = Param(18);
