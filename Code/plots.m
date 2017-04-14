function[] = plots(filename, t,y, Params)

    set(0,'defaultlinelinewidth',1) ;
    fig = figure('visible', 'off');
    str = sprintf('Concentration vs Time (mu1 = %f)', Params.mu1);
    plot(t, y(:,1),t, y(:,2), t, y(:,3),t, y(:,4), '--')
    xlabel('Time')
    ylabel('Concentration')
    legend('Substrate', 'Biomass 1', 'Biomass 2', 'Inhibitor', 'Location','NorthEast')
    title(str);

    saveas(fig, filename, 'pdf');
   % print(fig, '-dpng', 'Output.png');