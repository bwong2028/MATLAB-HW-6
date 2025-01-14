function writeDataFile(file, data)
%writeDataFile(file,data)
%this function writes to the text data file taken in, "file",
% in the format
%"objectName, velocity, distance1  ... distance8"
%objectName is a word
%velocity is a positive integer
%distance1-8 are floating point numbers
%Overwrite any existing data with data from the cell array "data"
    fileID = fopen(file, 'w');
    
    if (fileID == -1)
        error('Error: Unable to open the file for writing.');
    end

    for (i = 1:size(data, 1)) 
        row = data(i, :);
        fprintf(fileID, '%s %d %.2f %.2f %.2f %.2f %.2f %.2f %.2f %.2f\n', ...
            row{1}, row{2}, row{3}, row{4}, row{5}, row{6}, row{7}, row{8}, row{9}, row{10});
    end

    fclose(fileID);
end


%Byron Wong
%NetID: bw540
%RUID: 232001450