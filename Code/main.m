
function [] = main(filename)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[ Params ] = loadParams(filename);

options = odeset('AbsTol', Params.absTol, 'RelTol', Params.relTol);
[t,y] = ode45(@(t,y)chemostatOde(t,y,Params), [0 Params.tfinal], [Params.s_0 Params.x1_0 Params.x2_0 Params.p_0], options);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Plot Substrate and Biomass Concentrations

plots(t,y)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Output file to directory
[path,name] = fileparts(filename);
outfile = fullfile(path, [name,'.out']);
output(outfile, t, y, Params);
