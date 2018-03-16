%% Scaled heat map from R read in and display
dcheatmap = imread('washingtondc.png'); %read in your heatmap
figure(1) %create separate figures in order to see differences
original = imshow(dcheatmap); %display heatmap being used for fusing
                            % purposes
pause
                            
%% Use scaled historical map
historicmap = imread('historic_map.jpg'); %read in your historical map
figure(2)
imshow(imread('historicoriginal.jpg'));
pause
figure(2)
map = imshow(historicmap); %display historical map being used
pause
%% Creating a composite image using two spatially referenced items
figure(3)
dcheatmapref = imref2d(size(dcheatmap)); % creates image reference data
                                        % type for 2d image
historicmapref = imref2d(size(historicmap));
historicmapref.XWorldLimits = dcheatmapref.XWorldLimits
historicmapref.YWorldLimits = dcheatmapref.YWorldLimits
[composite, compositeref] = imfuse(dcheatmap,dcheatmapref, ...
    historicmap, historicmapref);
compositeimage = imshow(composite);
