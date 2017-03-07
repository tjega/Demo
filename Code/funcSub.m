function y = funcSub( Params, S1, S2 )
    
    if nargin == 2
        y = Params.mu1 * S1/(Params.K1 + S1);
    else
        y = Params.mu2 * S2/(Params.K2 + S2 + Params.K21*S1);
    end
    
end

