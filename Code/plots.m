function[] = plots(t,y)

    set(0,'defaultlinelinewidth',1) ;
    fig = figure('visible', 'off');

    plot(t, y(:,1),t, y(:,2), t, y(:,3),t, y(:,4),t, y(:,5), t, y(:,6), '--')
    xlabel('Time')
    ylabel('Concentration')
    legend('Substrate 1,1', 'Substrate 2,1', 'Biomass 1,1','Substrate 1,2', 'Substrate 2,2', 'Biomass 1,2', 'Location','NorthWest')
    title('Concentration vs. time');

    saveas(fig, 'Output', 'pdf');
    print(fig, '-dpng', 'Output.png');