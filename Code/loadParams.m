function [ Params ] = loadParams(filename)
    
    fid = fopen(filename);
    [Param] = textscan(fid, '%f', 'Delimiter', '\n', 'CommentStyle', '#');
    Param = Param{:};
    fclose(fid);

    %parameters from input
    
    %Initial Conditions
    Params.s_0      = Param(1); % Initial nutrient concentration, substrate 1
    Params.x1_0     = Param(2); % Initial concentration, species 1
    Params.x2_0     = Param(3); % Initial concentration, species 2
    Params.p_0      = Param(4); % Initial concentration, inhibitor
    
    %Solver Parameters
    Params.tfinal  = Param(5); % Final time
    Params.absTol  = Param(6); % Absolute tolerance
    Params.relTol  = Param(7); % Relative tolerance
    Params.tStep   = Param(8); % Time step
    
    %ODE parameters
    Params.D           = Param(9);   % Dilution rate (per hour)
    Params.s_in        = Param(10);  % Input nutrient concentration
    Params.K1          = Param(11);  % Half-saturation constant, species 1
    Params.K2          = Param(12);  % Half-saturation constant, species 2
    Params.Kp          = Param(13);  % Half-saturation constant, inhibitor
    Params.alpha       = Param(14);  % Kill rate, inhibitor
    Params.mu1         = Param(15);  % Substrate consumption, species 1
    Params.mu2         = Param(16);  % Substrate consumption, species 2
    Params.mup         = Param(17);  % Inhibitor
    Params.Y1          = Param(18);  % Yield coefficient, species 1
    Params.Y2          = Param(19);  % Yield coefficient, species 2
    Params.Yp          = Param(20);  % Yield coefficient, inhibitor
    Params.H           = Param(21);  % Hill coefficient, inhibitor
