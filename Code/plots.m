function[] = plots(t,y)

    set(0,'defaultlinelinewidth',1) ;
    fig = figure('visible', 'off');

    plot(t, y(:,1),t, y(:,2), t, y(:,3),t, y(:,4), '--')
    xlabel('Time')
    ylabel('Concentration')
    legend('Substrate', 'Biomass 1', 'Biomass 2', 'Inhibitor', 'Location','NorthWest')
    title('Concentration vs. time');

    saveas(fig, 'Output', 'pdf');
   % print(fig, '-dpng', 'Output.png');