function data = readDataFile(file)
%[data] = readDataFile(file)
%this function reads in the text data file, "file", in the format
%"objectName, velocity, distance1  ... distance8"
%objectName is a word
%velocity is a positive integer
%distance1-8 are floating point numbers
%Return a 10 column cell array "data" containing the data
%for each row of data in the file.    
    [objectNames, velocities, d1, d2, d3, d4, d5, d6, d7, d8] = textread(file, '%s %f %f %f %f %f %f %f %f %f');
    
    data = {};
    
    for i = 1:length(objectNames)
       
        velocity_uint16 = uint16(velocities(i));
        
        row = [{objectNames{i}}, velocity_uint16, d1(i), d2(i), d3(i), d4(i), d5(i), d6(i), d7(i), d8(i)];
        
        data = [data; row];
    end
end


%Byron Wong
%NetID: bw540
%RUID: 232001450