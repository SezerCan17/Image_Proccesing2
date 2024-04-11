% Clear workspace clear all 

close all 

 

% Load image from filesystem 

input_image = imread('./rectengular_image.PNG'); 

first_image= input_image; %assigns the image to another variable. 

 

% Detect edges using Canny algorithm 

Edge = edge(input_image(:,:,1), 'Canny'); % Using red channel only 

 

% Find edges of objects bwb = bwboundaries(Edge); 

 

figure; 

subplot(1, 2, 1); imshow(first_image); title('Input'); %shows the input image subplot(1, 2, 2); imshow(input_image); title('Output'); %shows the output image hold on; 

 

% Merge boundaries to draw all boundaries for k = 1:length(bwb) 

boundary = bwb{k}; %It takes the sides of the rectangle. boundary_x = boundary(:, 2); 

boundary_y = boundary(:, 1); 

 

% Adds NAN to merge edges. boundary_x(end+1) = NaN; boundary_y(end+1) = NaN; 

 

% Draw edge 

plot(boundary_x, boundary_y, 'r', 'LineWidth', 3); end 