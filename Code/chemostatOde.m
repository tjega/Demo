% y(1) is substrate
% y(2) is x1
% y(3) is x2
% y(4) is P
function dydt = chemostatOde(t, y, Params)

    h = @funcHill;
    fs_in = @funcSubIn;
    fs = @funcSub;
    g = @funcInhib;
    
    dydt(1)   =   Params.D * (fs_in(Params.s_in) - y(1)) - ...
                        (1/Params.Y1)*fs( y(1), Params.K1, Params.mu1) * y(2) - ...
                                (1/Params.Y2)*fs(y(1), Params.K2, Params.mu2)*y(3);       %ds/dt
    
    dydt(2)   =   fs(y(1), Params.K1, Params.mu1)*y(2) - ...
                            Params.D * y(2) - g(Params.alpha, y(4)) * y(2);                     %dx1/dt
    
    dydt(3)   =   fs(y(1),Params.K2, Params.mu2)*y(3)  - ...
                            Params.D * y(3);                                              %dx2/dt
                        
    dydt(4)   =   h(y(1),Params.Kp, Params.mup, Params.H)*y(3) ...
                            - Params.D*y(4) - (1/Params.Yp)*g(Params.alpha, y(4))*y(2);         %dp/dt
                        
    dydt      =   dydt(:);