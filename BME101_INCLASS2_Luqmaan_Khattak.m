% Image Loading

pepperImage = imread("peppers.png");

% Image Resize

pepperImage = imresize(pepperImage, .5);

% Grayscale

grayImage = rgb2gray(pepperImage);

% Show Image

imshow(pepperImage)