function plotData(data, name)
%plotData(data, name)
%this function gives the plot distance verses angle for all rows of data
%from the "data" cell array in the format
%%"objectName, velocity, distance1  ... distance8"
%in this function, distance1-8 references angles 10:10:80
%function includes title, labels, legends and grid
%Legend is the format "objectName-velocity" for each row.
%"*" marks data points and solid lines exist between points.
%"name" is included as a subtitle
    figure;
    
    angles = 10:10:80;
    
    hold on;
    
    for i = 1:size(data, 1)
        objectName = data{i, 1};
        velocity = data{i, 2};
        
        distances = cell2mat(data(i, 3:10));
        
        plot(angles, distances, '-o', 'DisplayName', sprintf('%s-%d', objectName, velocity));
    end
    
    grid on;
    
    xlabel('Angle (degrees)');
    ylabel('Distance');
    title('Projectile Motion Experiments');
    subtitle(name);
    
    legend('show', 'Location', 'best');

    hold off;
end

%Byron Wong
%NetID: bw540
%RUID: 232001450