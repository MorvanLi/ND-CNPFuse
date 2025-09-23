clear all;
close all;
clc;
%%

nums = 20;
fused_path = './results/Lytro/';
% r is coupling radius in this paper
r = 16;
elapsed_times = zeros(1, nums);

for i = 1:nums
    source_far = ['./sourceimages/Lytro/far/', num2str(i), '.jpg'];
    source_near = ['./sourceimages/Lytro/near/', num2str(i), '.jpg'];

    % Read and normalize images
    img_far = double(imread(source_far))/255;
    img_near = double(imread(source_near))/255;

    % Convert to grayscale
    gray_far = rgb2gray(imread(source_far));
    gray_near = rgb2gray(imread(source_near));

    img1 = double(gray_far)/255;
    img2 = double(gray_near)/255;

    % Compute SML features
    SML_1 = SML(img1);
    SML_2 = SML(img2);

    % Measure elapsed time for fusion
    tic
    decisionMap = fuse(SML_1, SML_2, r);
    elapsed_times(i) = toc;

    % Replicate decision map for RGB images
    if size(img_far, 3) > 1
        decisionMap = repmat(decisionMap, [1, 1, 3]);
    end

    % Fuse images based on decision map
    fused_image = decisionMap .* img_far + ~decisionMap .* img_near;
    result = uint8(fused_image * 255);

    % Comment out this line of code if you are not displaying images
    % figure;
    % imshow(result, []);
    
    % Save fused image
    fused_filename = strcat(fused_path, '/', num2str(i), '.png');
    imwrite(result, fused_filename);
end

% Calculate and display average elapsed time
average_time = mean(elapsed_times);
disp(['Average elapsed time: ' num2str(average_time) ' seconds']);

