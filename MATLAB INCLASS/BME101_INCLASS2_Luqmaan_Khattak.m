% Image Loading
pepperImage = imread("peppers.png");

% Image Resize
pepperImage = imresize(pepperImage, .5);

% Seperate Layer Matrix

redImage = pepperImage(:,:,1);
greenImage = pepperImage(:,:,2);
blueImage = pepperImage(:,:,3);

% Grayscale
grayImage = rgb2gray(pepperImage);

% Show Image
imshow(pepperImage)

% Display Image
tiledlayout(1,5)

% Original
nexttile
imshow(pepperImage)
title("Original")
% Gray
nexttile
imshow(grayImage)
title("Gray")
% Red
nexttile
imshow(redImage)
title("Red")
% Green
nexttile
imshow(greenImage)
title("Green")
% Blue
nexttile
imshow(blueImage)
title("Blue")
