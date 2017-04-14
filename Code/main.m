
function [] = main(filename)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[ Params ] = loadParams(filename);

options = odeset('AbsTol', Params.absTol, 'RelTol', Params.relTol, 'NonNegative', 1:4, 'Events', @eventFunc);
[t,y] = ode45(@chemostatOde, [0 Params.tfinal], [Params.s_0 Params.x1_0 Params.x2_0 Params.p_0], options, Params);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Plot Substrate and Biomass Concentrations

[path,name] = fileparts(filename);
outfile = fullfile(path, [name,'.out']);

plots(name, t,y, Params)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Output file to directory

output(outfile, t, y, Params);
