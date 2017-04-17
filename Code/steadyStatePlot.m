for i = 1 : 101;
    
    inputfile = sprintf('%d.out', i);
    fileID = fopen(inputfile);
    
    X11 = zeros(i,1);
    S11 = zeros(i,1);
    S21 = zeros(i,1);
    X12 = zeros(i,1);
    S12 = zeros(i,1);
    S22 = zeros(i,1);
    X13 = zeros(i,1);
    S13 = zeros(i,1);
    S23 = zeros(i,1);
    
    D = cell2mat(textscan(fileID, '%f%f%f%f%f%f%f%f%f%f', 'headerlines', 22));
    
    X11(i) = D(end,2);
    S11(i) = D(end,3);
    S21(i) = D(end,4);
    X12(i) = D(end,5);
    S12(i) = D(end,6);
    S22(i) = D(end,7);
    X13(i) = D(end,8);
    S13(i) = D(end,9);
    S23(i) = D(end,10);
    
    plot([0:10:100], X11, [0:10:100], S11, [0:10:100], S12, [0:10:100], S13, [0:10:100], X12, [0:10:100], S12, [0:10:100], S22, [0:10:100], X13, [0:10:100], S13, [0:10:100], S23);
    
end