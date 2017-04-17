for i = 1 : 2;
    
    inputfile = sprintf('../../../Results/Mu/Output/mu_test_%d.out', i);
    fileID = fopen(inputfile);
    
    S  = zeros(i,1);
    X1 = zeros(i,1);
    X2 = zeros(i,1);
    P  = zeros(i,1);
    
    D = cell2mat(textscan(fileID, '%f%f%f%f%f', 'headerlines', 23));

    S(i)  = D(end,2);
    X1(i) = D(end,3);
    X2(i) = D(end,4);
    P(i)  = D(end,5);
    
    plot([0:10:100], S, [0:10:100], X1, [0:10:100], X2, [0:10:100], P, [0:10:100]);
    
end