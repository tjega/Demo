function[] = plots(filename, t,y, Params)

    set(0,'defaultlinelinewidth',1) ;
    fig = figure('visible', 'off');
    str = sprintf('Concentration vs Time (X2_0 = %f)', Params.x2_0);
    plot(t, y(:,1), '--b',t, y(:,2),'-g', t, y(:,3), '-r',t, y(:,4), '--r')
    xlabel('Time')
    ylabel('Concentration')
    legend('Substrate', 'Biomass 1', 'Biomass 2', 'Inhibitor', 'Location','NorthEast')
    title(str);

    saveas(fig, filename, 'pdf');