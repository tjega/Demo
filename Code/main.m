
function [] = main(filename)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[ Params ] = loadGradParams(filename);

options = odeset('AbsTol', Params.absTol, 'RelTol', Params.relTol);
[t,y] = ode45(@(t,y)gradostatOde(t,y,Params.s1_in, Params.s2_in, Params), [0 Params.tfinal], [Params.s1_0 Params.s2_0 Params.x1_0 0 0 0], options);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Plot Substrate and Biomass Concentrations

plots(t,y)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Output file to directory
[path,name] = fileparts(filename);
outfile = fullfile(path, [name,'.out']);
output(outfile, t, y, Params);
