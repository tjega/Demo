% y(1) is substrate 1
% y(2) is substrate 2
% y(3) is substrate 3
function dydt = gradostatOde(t, y, s1_in, s2_in, Params)

    fA = @funcAnt;
    fs_in = @funcSubIn;
    fs = @funcSub;
    
    dydt(1)   =   Params.D * (fs_in(s1_in) - y(1)) - fs(Params, y(1)) * y(3);              %ds11/dt
    
    dydt(2)   =   Params.D * (fs_in(s2_in) - y(2)) - fs(Params, y(1), y(2)) * y(3);        %ds12/dt
    
    dydt(3)   =   Params.Y1 * fs(Params, y(1))*y(3) + ...
                        Params.Y2 * fs(Params, y(1), y(2)) * y(3) - ...
                            Params.D * y(3) - fA(Params) * y(3);                           %dx11/dt
                        
    dydt(4)   =   Params.D * (y(1) - y(4)) - fs(Params, y(4)) * y(6);                      %ds21/dt
    
    dydt(5)   =   Params.D * (y(2) - y(5)) - fs(Params, y(4), y(5)) * y(6);                %ds22/dt
    
    dydt(6)   =   Params.D * y(3) + Params.Y1 * fs(Params, y(4))*y(6) + ...
                        Params.Y2 * fs(Params, y(4), y(5)) * y(6) - ...
                            Params.D * y(6) - fA(Params) * y(6);                           %dx21/dt                        
    dydt      =   dydt(:);