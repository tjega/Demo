function[] = output(file, t, y, Params)
    
    s       = struct(Params);
    fileID  = fopen(file, 'w');
    fields  = fieldnames(s);
    
    fprintf(fileID, 'Date: %s\n\n', date);
    for i = 1:numel(fields)
        parameter = s.(fields{i});
        paramName = fields{i};
        fprintf(fileID, '%15s\t %e\n', paramName, parameter);
    end

    fprintf(fileID, '\n');
    fprintf(fileID, '%s\t\t\t %s\t\t\t\t %s\t\t\t\t %s\n','TIME', 'S1', 'S1', 'X1');
    table = [t y];
    fprintf(fileID, '%f\t\t %f\t\t %f\t\t %f\n', transpose(table));
    
    fclose(fileID);
